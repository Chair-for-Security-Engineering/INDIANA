#include "cudd/cudd_ext.hpp"

DdNode *getLow(DdNode *node) {
    if(Cudd_IsComplement(node)) {
        return Cudd_Not(Cudd_E(node));
    }
    return Cudd_E(node);
}

DdNode *getHigh(DdNode *node) {
    if(Cudd_IsComplement(node)) {
        return Cudd_Not(Cudd_T(node));
    }
    return Cudd_T(node);
}

Cudd_Manager::Cudd_Manager() {
    mgr = this->getManager();
}

Cudd_Manager::Cudd_Manager(unsigned int numVars,unsigned int numVarsZ,unsigned int numSlots,unsigned int cacheSize,unsigned long maxMemory) 
: Cudd(numVars,numVarsZ,numSlots,cacheSize,maxMemory,defaultError) {
    mgr = this->getManager();
}

double Cudd_Manager::bdd_singprobability(DdNode *dd, double p) {
    if(Cudd_IsComplement(dd))
        dd = Cudd_Not(Cudd_Regular(dd));
    if(Cudd_IsConstantInt(dd)) {
        return dd==Cudd_ReadOne(mgr);
    }
    double result;
    if(Cache::read1(mgr,dd,result)) {
        return result;
    }
    double d = 0;
    double low,high;

    low = bdd_singprobability(getLow(dd), p);

    high = bdd_singprobability(getHigh(dd), p);

    d = ((1 - p) * low) + (p * high);
    Cache::put1(mgr,dd,d);

    return d;
}

double Cudd_Manager::bdd_singprobability(DdNode *dd, std::map<int,double> &p) {
    if(Cudd_IsComplement(dd))
        dd = Cudd_Not(Cudd_Regular(dd));
    if(Cudd_IsConstantInt(dd)) {
        return dd==Cudd_ReadOne(mgr);
    }
    double result;
    if(Cache::read1(mgr,dd,result)) {
        return result;
    }
    double d = 0;
    double low,high;

    low = bdd_singprobability(getLow(dd), p);

    high = bdd_singprobability(getHigh(dd), p);

    d = ((1 - p[dd->index]) * low) + (p[dd->index] * high);
    Cache::put1(mgr,dd,d);

    return d;
}

double Cudd_Manager::bdd_singprobability(BDD &bdd) {
    return bdd_singprobability(bdd.getNode(), 0.5);
}

double Cudd_Manager::bdd_singprobability(BDD &bdd, double p) {
    return bdd_singprobability(bdd.getNode(), p);
}

double Cudd_Manager::bdd_singprobability(BDD &bdd, std::map<int, double> p) {
    return bdd_singprobability(bdd.getNode(), p);
}


double Cudd_Manager::bdd_satcountln(DdNode *dd,size_t nvars) {
    DdNode *one = Cudd_ReadOne(mgr);
    DdNode *zero = Cudd_ReadLogicZero(mgr);
    if(dd==zero)
        return -1.0;
    else if(dd==one)
        return nvars;

    double result;
    DdNodePtr temp = Cudd_addConst(mgr,nvars);
    Cudd_Ref(temp);
    if(Cache::read2(mgr,Cache::SATCOUNTLN,dd,temp,result)){
        return result;
    }

    double low = bdd_satcountln(getLow(dd), nvars-1);
    double high = bdd_satcountln(getHigh(dd), nvars-1);

    if (low < 0.0)
        result = high;
    else if (high < 0.0)
        result = low;
    else if (low < high)
        result = high + log1p(pow(2.0,low-high)) / M_LN2;
    else
        result = low + log1p(pow(2.0,high-low)) / M_LN2;

    Cache::put2(mgr,Cache::SATCOUNTLN,dd,temp,result);
    return result;
}

double Cudd_Manager::bdd_satcountln(BDD &dd, size_t nvars) {
    return bdd_satcountln(dd.getNode(),nvars);
}

double Cudd_Manager::bdd_combprobability(DdNode *dd1, DdNode *dd2) {

    double cacheResult;
    if(Cache::read2(mgr,Cache::COMBPROB,dd1,dd2,cacheResult)) {
        return cacheResult;
    }
    
    double d = 0;
    unsigned int index1 = Cudd_NodeReadIndex(dd1);
    unsigned int index2 = Cudd_NodeReadIndex(dd2);
    DdNode *one = Cudd_ReadOne(mgr);

    if(index1<index2) { 
        d = bdd_combprobability(dd2,dd1);
    }
    else if(isLeaf(dd2)) {// dd2 Is Leaf 
        d = (dd1==one) & (dd2==one);
    }
    else if(isLeaf(dd1)) {  // dd1 is leaf 
        d = (dd1==one) ? bdd_singprobability(dd2, 0.5) : 0.0;
    }
    else if(dd1 == dd2) { // 2)
        d = bdd_singprobability(dd1, 0.5);
    }
    else if(index1==index2) { // 5)
        double low  = bdd_combprobability(getLow(dd1), getLow(dd2));
        double high = bdd_combprobability(getHigh(dd1),getHigh(dd2));
        d = 0.5 * (low + high);
    }
    else {
        double low = bdd_combprobability(dd1,getLow(dd2));
        double high = bdd_combprobability(dd1,getHigh(dd2));
        d = 0.5 * (low + high);
    }

    Cache::put2(mgr,Cache::COMBPROB,dd1,dd2,d);
    return d;
}

double Cudd_Manager::bdd_combprobability(BDD &dd1, BDD &dd2) {
    return bdd_combprobability(dd1.getNode(),dd2.getNode());
}

int Cudd_Manager::bdd_statindependence(DdNode *dd1, DdNode *dd2) {
    double cacheResult;
    if(Cache::read2(mgr,Cache::STATINDEP,dd1,dd2,cacheResult)) {
        return cacheResult;
    }

    int b;
    double single1, single2,combined;

    single1  = bdd_singprobability(dd1, 0.5);
    single2  = bdd_singprobability(dd2, 0.5);

    combined = bdd_combprobability(dd1, dd2);
    b = fabs(combined - (single1 * single2)) < 0.000001;
    
    Cache::put2(mgr,Cache::STATINDEP,dd1,dd2,b);
    return b;
}

int Cudd_Manager::bdd_statindependence(BDD &dd1, BDD &dd2) {
    return bdd_statindependence(dd1.getNode(),dd2.getNode());
}

DdNode* Cudd_Manager::bdd_carry(DdNode *dd1, DdNode *dd2, DdNode *carry_in) {

    DdNode *zero = Cudd_ReadLogicZero(mgr);
    
    // Trivial cases
    if (dd1 == zero && carry_in == zero) return zero;
    if (dd2 == zero && carry_in == zero) return zero;
    if (dd1 == zero && dd2 == zero) return zero;

    // (carry_in & (dd1 ^ dd2)) | (dd1 & dd2)
    return Cudd_bddOr(mgr, Cudd_bddAnd(mgr, carry_in, Cudd_bddXor(mgr, dd1, dd2)), Cudd_bddAnd(mgr, dd1, dd2));
}

DdNode* Cudd_Manager::bdd_sum(DdNode *dd1, DdNode *dd2, DdNode *carry_in) {

    DdNode *one = Cudd_ReadOne(mgr);
    DdNode *zero = Cudd_ReadLogicZero(mgr);

    // Trivial cases
    if (dd1 == zero && carry_in == zero) return dd2;
    if (dd2 == zero && carry_in == zero) return dd1;
    if (dd1 == zero && dd2 == zero) return carry_in;
    if (dd1 == one && carry_in == one) return dd2;
    if (dd2 == one && carry_in == one) return dd1;
    if (dd1 == one && dd2 == one) return carry_in;

    // dd1 ^ dd2 ^ carry_in
    return Cudd_bddXor(mgr, carry_in, Cudd_bddXor(mgr, dd1, dd2));
}

BDD* Cudd_Manager::bdd_add(BDD &dd1, BDD &dd2, BDD &carry_in) { 

    static BDD results[2];

    results[0] = BDD(*this, bdd_sum(dd1.getNode(), dd2.getNode(), carry_in.getNode()));
    results[1] = BDD(*this, bdd_carry(dd1.getNode(), dd2.getNode(), carry_in.getNode()));

    return results;
}

void
Cudd_Manager::add_getAllConstLeaves(DdNode *dd, std::set<int> &constants) {
    // inspired by ddLeavesInt() from cuddUtil.c

    if (cuddIsConstant(dd)) {
	    constants.insert(Cudd_V(dd));
    } else {
        // dd->next = dd->next;
        add_getAllConstLeaves(cuddT(dd), constants);
        add_getAllConstLeaves(Cudd_Regular(cuddE(dd)), constants);
    }
}

void
Cudd_Manager::add_getAllConstLeaves(ADD &dd, std::set<int> &consts) {
    add_getAllConstLeaves(dd.getNode(), consts);
}

BDDSet::BDDSet(Cudd &manager, BDD &bdd) {
    set = bdd;
    mgr = manager.getManager();
}

void BDDSet::add(BDD &bdd) {
    set *= bdd;
}

std::vector<uint32_t> BDDSet::toVector() const {
    std::vector<uint32_t> result;
    DdNode *x = set.getNode();
    DdNode *one = Cudd_ReadOne(mgr);

    while (!(x==one)) {
        result.push_back(Cudd_NodeReadIndex(x));
        x = getHigh(x);
    }
    return result;
}




void write_bdd (Cudd cuddManager,BDD &bdd, std::string filename)
{
    DdNode *dd = bdd.getRegularNode();
    FILE *outfile; // output file pointer for .dot file
    outfile = fopen(filename.c_str(),"w");
    DdNode **ddnodearray = (DdNode**)malloc(sizeof(DdNode*)); // initialize the function array
    ddnodearray[0] = dd;
    Cudd_DumpDot(cuddManager.getManager(), 1, ddnodearray, NULL, NULL, outfile); // dump the function to .dot file
    free(ddnodearray);
    fclose (outfile); // close the file */
}

 
void write_add (Cudd cuddManager,ADD add, std::string filename)
{
    DdNode *dd = add.getRegularNode();
    FILE *outfile; // output file pointer for .dot file
    outfile = fopen(filename.c_str(),"w");
    DdNode **ddnodearray = (DdNode**)malloc(sizeof(DdNode*)); // initialize the function array
    ddnodearray[0] = dd;
    Cudd_DumpDot(cuddManager.getManager(), 1, ddnodearray, NULL, NULL, outfile); // dump the function to .dot file
    free(ddnodearray);
    fclose (outfile); // close the file */
}


ADD 
addTransfer(Cudd_Manager &source, Cudd_Manager &destination, ADD &node, int &offset){
    ADD transferred_add = ADD(destination, Cudd_addTransfer(source.getManager(), destination.getManager(), node.getNode(), offset));
    return transferred_add;
}



DdNode *
Cudd_addTransfer(
  DdManager * ddSource,
  DdManager * ddDestination,
  DdNode * f,
  int &offset)
{
    DdNode *res;
    do {
        ddDestination->reordered = 0;
        res = cuddAddTransfer(ddSource, ddDestination, f, offset);
    } while (ddDestination->reordered == 1);

    if (ddDestination->errorCode == CUDD_TIMEOUT_EXPIRED &&
        ddDestination->timeoutHandler) {
        ddDestination->timeoutHandler(ddDestination, ddDestination->tohArg);
    }
    return(res);

}


DdNode *
cuddAddTransfer(
  DdManager * ddS,
  DdManager * ddD,
  DdNode * f,
  int &offset)
{
    DdNode *res;
    st_table *table = NULL;
    st_generator *gen = NULL;
    DdNode *key, *value;

    table = st_init_table(st_ptrcmp,st_ptrhash);
    if (table == NULL) goto failure;
    res = cuddAddTransferRecur(ddS, ddD, f, table, offset);
    if (res != NULL) cuddRef(res);

    /* Dereference all elements in the table and dispose of the table.
    ** This must be done also if res is NULL to avoid leaks in case of
    ** reordering. */
    gen = st_init_gen(table);
    if (gen == NULL) goto failure;
    while (st_gen(gen, (void **) &key, (void **) &value)) {
	    Cudd_RecursiveDeref(ddD, value);
    }
    st_free_gen(gen); gen = NULL;
    st_free_table(table); table = NULL;

    if (res != NULL) cuddDeref(res);
    return(res);

failure:
    /* No need to free gen because it is always NULL here. */
    if (table != NULL) st_free_table(table);
    return(NULL);

}


DdNode *
cuddAddTransferRecur(
  DdManager * ddS,
  DdManager * ddD,
  DdNode * f,
  st_table * table,
  int &offset)
{
    DdNode *ft, *fe, *t, *e, *var, *res;
    unsigned int index;

    statLine(ddD);

    /* Trivial cases. */
    if (Cudd_IsConstantInt(f)) {
        double long val = Cudd_V(f);
        return cuddUniqueConst(ddD, val);
    }

    /* Check the cache. */
    if (st_lookup(table, f, (void **) &res))
        return res;
    
    /* Recursive step. */
    index = f->index;
    index += offset;
    // if(index_mapping.find(index) != index_mapping.end()) index = index_mapping[index];

    ft = cuddT(f); fe = cuddE(f);

    t = cuddAddTransferRecur(ddS, ddD, ft, table, offset);
    if (t == NULL) {
    	return(NULL);
    }
    cuddRef(t);

    e = cuddAddTransferRecur(ddS, ddD, fe, table, offset);
    if (e == NULL) {
    	Cudd_RecursiveDeref(ddD, t);
    	return(NULL);
    }
    cuddRef(e);



    var = Cudd_addIthVar(ddD, index);

    if (var == NULL) {
        Cudd_RecursiveDeref(ddD, t);
        Cudd_RecursiveDeref(ddD, e);
    	return(NULL);
    }
    cuddRef(var);
    res = cuddAddIteRecur(ddD,var,t,e);
    if (res == NULL) {
        Cudd_RecursiveDeref(ddD, t);
        Cudd_RecursiveDeref(ddD, e);
        return(NULL);
    }
    cuddRef(res);
    Cudd_RecursiveDeref(ddD, t);
    Cudd_RecursiveDeref(ddD, e);

    if (st_add_direct(table, f, res) == ST_OUT_OF_MEM) {
        Cudd_RecursiveDeref(ddD, res);
        return(NULL);
    }

    return res;
} 
