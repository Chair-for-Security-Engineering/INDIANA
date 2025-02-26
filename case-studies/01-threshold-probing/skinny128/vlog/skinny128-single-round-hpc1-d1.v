/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Jan 31 13:45:28 2024
/////////////////////////////////////////////////////////////


module RoundFunction ( CLK, RESET, ROUND_CST, RAND, ROUND_KEY1, ROUND_KEY2, 
        SHARE1_IN, SHARE2_IN, SHARE1_OUT, SHARE2_OUT );
  input [5:0] ROUND_CST;
  input [255:0] RAND;
  input [127:0] ROUND_KEY1;
  input [127:0] ROUND_KEY2;
  input [127:0] SHARE1_IN;
  input [127:0] SHARE2_IN;
  output [127:0] SHARE1_OUT;
  output [127:0] SHARE2_OUT;
  input CLK, RESET;
  wire   SBOX_0_reg_0_s0_31, SBOX_0_reg_0_s1_31, SBOX_0_reg_0_s0_30,
         SBOX_0_reg_0_s1_30, SBOX_0_reg_0_s0_29, SBOX_0_reg_0_s1_29,
         SBOX_0_reg_0_s0_28, SBOX_0_reg_0_s1_28, SBOX_0_reg_0_s0_27,
         SBOX_0_reg_0_s1_27, SBOX_0_reg_0_s0_26, SBOX_0_reg_0_s1_26,
         SBOX_0_reg_0_s0_25, SBOX_0_reg_0_s1_25, SBOX_0_reg_0_s0_24,
         SBOX_0_reg_0_s1_24, SBOX_0_reg_0_s0_23, SBOX_0_reg_0_s1_23,
         SBOX_0_reg_0_s0_22, SBOX_0_reg_0_s1_22, SBOX_0_reg_0_s0_21,
         SBOX_0_reg_0_s1_21, SBOX_0_reg_0_s0_20, SBOX_0_reg_0_s1_20,
         SBOX_0_reg_0_s0_19, SBOX_0_reg_0_s1_19, SBOX_0_reg_0_s0_18,
         SBOX_0_reg_0_s1_18, SBOX_0_reg_0_s0_17, SBOX_0_reg_0_s1_17,
         SBOX_0_reg_0_s0_16, SBOX_0_reg_0_s1_16, SBOX_0_reg_0_s0_15,
         SBOX_0_reg_0_s1_15, SBOX_0_reg_0_s0_14, SBOX_0_reg_0_s1_14,
         SBOX_0_reg_0_s0_13, SBOX_0_reg_0_s1_13, SBOX_0_reg_0_s0_12,
         SBOX_0_reg_0_s1_12, SBOX_0_reg_0_s0_11, SBOX_0_reg_0_s1_11,
         SBOX_0_reg_0_s0_10, SBOX_0_reg_0_s1_10, SBOX_0_reg_0_s0_9,
         SBOX_0_reg_0_s1_9, SBOX_0_reg_0_s0_8, SBOX_0_reg_0_s1_8,
         SBOX_0_reg_0_s0_7, SBOX_0_reg_0_s1_7, SBOX_0_reg_0_s0_6,
         SBOX_0_reg_0_s1_6, SBOX_0_reg_0_s0_5, SBOX_0_reg_0_s1_5,
         SBOX_0_reg_0_s0_4, SBOX_0_reg_0_s1_4, SBOX_0_reg_0_s0_3,
         SBOX_0_reg_0_s1_3, SBOX_0_reg_0_s0_2, SBOX_0_reg_0_s1_2,
         SBOX_0_reg_0_s0_1, SBOX_0_reg_0_s1_1, SBOX_0_reg_0_s0,
         SBOX_0_reg_0_s1, SBOX_0__s0_2_0, SBOX_0__s0_2_1, SBOX_0__s1_2_0,
         SBOX_0__s1_2_1, SBOX_0__s0_1_0, SBOX_0__s0_1_1, SBOX_0__s1_1_0,
         SBOX_0__s1_1_1, SBOX_0__s0_0, \SBOX_0/_s0_1 , SBOX_0__s1_0,
         \SBOX_0/_s1_1 , SBOX_0_xor_5_Masked_z_0_, SBOX_0_xor_4_Masked_z_0_,
         SBOX_0_xor_3_Masked_z_0_, SBOX_0_xor_2_Masked_z_0_,
         SBOX_0_xor_1_Masked_z_0_, SBOX_0_not_3_Masked_z_0_,
         SBOX_0_not_2_Masked_z_0_, SBOX_0_xor_0_Masked_z_0_,
         SBOX_0_not_1_Masked_z_0_, SBOX_0_not_0_Masked_z_0_,
         SBOX_0_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_0_Masked_and_hpc_mul_n2,
         SBOX_0_and_0_Masked_and_hpc_mul_n1,
         SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_1_Masked_and_hpc_mul_n4,
         SBOX_0_and_1_Masked_and_hpc_mul_n3,
         SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_2_Masked_and_hpc_mul_n4,
         SBOX_0_and_2_Masked_and_hpc_mul_n3,
         SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_3_Masked_and_hpc_mul_n4,
         SBOX_0_and_3_Masked_and_hpc_mul_n3,
         SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_4_Masked_and_hpc_mul_n4,
         SBOX_0_and_4_Masked_and_hpc_mul_n3,
         SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_5_Masked_and_hpc_mul_n4,
         SBOX_0_and_5_Masked_and_hpc_mul_n3,
         SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_6_Masked_and_hpc_mul_n4,
         SBOX_0_and_6_Masked_and_hpc_mul_n3,
         SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_0_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_0_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_0_and_7_Masked_and_hpc_mul_n4,
         SBOX_0_and_7_Masked_and_hpc_mul_n3,
         SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_reg_0_s0_31, SBOX_1_reg_0_s1_31, SBOX_1_reg_0_s0_30,
         SBOX_1_reg_0_s1_30, SBOX_1_reg_0_s0_29, SBOX_1_reg_0_s1_29,
         SBOX_1_reg_0_s0_28, SBOX_1_reg_0_s1_28, SBOX_1_reg_0_s0_27,
         SBOX_1_reg_0_s1_27, SBOX_1_reg_0_s0_26, SBOX_1_reg_0_s1_26,
         SBOX_1_reg_0_s0_25, SBOX_1_reg_0_s1_25, SBOX_1_reg_0_s0_24,
         SBOX_1_reg_0_s1_24, SBOX_1_reg_0_s0_23, SBOX_1_reg_0_s1_23,
         SBOX_1_reg_0_s0_22, SBOX_1_reg_0_s1_22, SBOX_1_reg_0_s0_21,
         SBOX_1_reg_0_s1_21, SBOX_1_reg_0_s0_20, SBOX_1_reg_0_s1_20,
         SBOX_1_reg_0_s0_19, SBOX_1_reg_0_s1_19, SBOX_1_reg_0_s0_18,
         SBOX_1_reg_0_s1_18, SBOX_1_reg_0_s0_17, SBOX_1_reg_0_s1_17,
         SBOX_1_reg_0_s0_16, SBOX_1_reg_0_s1_16, SBOX_1_reg_0_s0_15,
         SBOX_1_reg_0_s1_15, SBOX_1_reg_0_s0_14, SBOX_1_reg_0_s1_14,
         SBOX_1_reg_0_s0_13, SBOX_1_reg_0_s1_13, SBOX_1_reg_0_s0_12,
         SBOX_1_reg_0_s1_12, SBOX_1_reg_0_s0_11, SBOX_1_reg_0_s1_11,
         SBOX_1_reg_0_s0_10, SBOX_1_reg_0_s1_10, SBOX_1_reg_0_s0_9,
         SBOX_1_reg_0_s1_9, SBOX_1_reg_0_s0_8, SBOX_1_reg_0_s1_8,
         SBOX_1_reg_0_s0_7, SBOX_1_reg_0_s1_7, SBOX_1_reg_0_s0_6,
         SBOX_1_reg_0_s1_6, SBOX_1_reg_0_s0_5, SBOX_1_reg_0_s1_5,
         SBOX_1_reg_0_s0_4, SBOX_1_reg_0_s1_4, SBOX_1_reg_0_s0_3,
         SBOX_1_reg_0_s1_3, SBOX_1_reg_0_s0_2, SBOX_1_reg_0_s1_2,
         SBOX_1_reg_0_s0_1, SBOX_1_reg_0_s1_1, SBOX_1_reg_0_s0,
         SBOX_1_reg_0_s1, SBOX_1__s0_2_0, SBOX_1__s0_2_1, SBOX_1__s1_2_0,
         SBOX_1__s1_2_1, SBOX_1__s0_1_0, SBOX_1__s0_1_1, SBOX_1__s1_1_0,
         SBOX_1__s1_1_1, SBOX_1__s0_0, \SBOX_1/_s0_1 , SBOX_1__s1_0,
         \SBOX_1/_s1_1 , SBOX_1_xor_5_Masked_z_0_, SBOX_1_xor_4_Masked_z_0_,
         SBOX_1_xor_3_Masked_z_0_, SBOX_1_xor_2_Masked_z_0_,
         SBOX_1_xor_1_Masked_z_0_, SBOX_1_not_3_Masked_z_0_,
         SBOX_1_not_2_Masked_z_0_, SBOX_1_xor_0_Masked_z_0_,
         SBOX_1_not_1_Masked_z_0_, SBOX_1_not_0_Masked_z_0_,
         SBOX_1_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_0_Masked_and_hpc_mul_n4,
         SBOX_1_and_0_Masked_and_hpc_mul_n3,
         SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_1_Masked_and_hpc_mul_n4,
         SBOX_1_and_1_Masked_and_hpc_mul_n3,
         SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_2_Masked_and_hpc_mul_n4,
         SBOX_1_and_2_Masked_and_hpc_mul_n3,
         SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_3_Masked_and_hpc_mul_n4,
         SBOX_1_and_3_Masked_and_hpc_mul_n3,
         SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_4_Masked_and_hpc_mul_n4,
         SBOX_1_and_4_Masked_and_hpc_mul_n3,
         SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_5_Masked_and_hpc_mul_n4,
         SBOX_1_and_5_Masked_and_hpc_mul_n3,
         SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_6_Masked_and_hpc_mul_n4,
         SBOX_1_and_6_Masked_and_hpc_mul_n3,
         SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_1_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_1_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_1_and_7_Masked_and_hpc_mul_n4,
         SBOX_1_and_7_Masked_and_hpc_mul_n3,
         SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_reg_0_s0_31, SBOX_2_reg_0_s1_31, SBOX_2_reg_0_s0_30,
         SBOX_2_reg_0_s1_30, SBOX_2_reg_0_s0_29, SBOX_2_reg_0_s1_29,
         SBOX_2_reg_0_s0_28, SBOX_2_reg_0_s1_28, SBOX_2_reg_0_s0_27,
         SBOX_2_reg_0_s1_27, SBOX_2_reg_0_s0_26, SBOX_2_reg_0_s1_26,
         SBOX_2_reg_0_s0_25, SBOX_2_reg_0_s1_25, SBOX_2_reg_0_s0_24,
         SBOX_2_reg_0_s1_24, SBOX_2_reg_0_s0_23, SBOX_2_reg_0_s1_23,
         SBOX_2_reg_0_s0_22, SBOX_2_reg_0_s1_22, SBOX_2_reg_0_s0_21,
         SBOX_2_reg_0_s1_21, SBOX_2_reg_0_s0_20, SBOX_2_reg_0_s1_20,
         SBOX_2_reg_0_s0_19, SBOX_2_reg_0_s1_19, SBOX_2_reg_0_s0_18,
         SBOX_2_reg_0_s1_18, SBOX_2_reg_0_s0_17, SBOX_2_reg_0_s1_17,
         SBOX_2_reg_0_s0_16, SBOX_2_reg_0_s1_16, SBOX_2_reg_0_s0_15,
         SBOX_2_reg_0_s1_15, SBOX_2_reg_0_s0_14, SBOX_2_reg_0_s1_14,
         SBOX_2_reg_0_s0_13, SBOX_2_reg_0_s1_13, SBOX_2_reg_0_s0_12,
         SBOX_2_reg_0_s1_12, SBOX_2_reg_0_s0_11, SBOX_2_reg_0_s1_11,
         SBOX_2_reg_0_s0_10, SBOX_2_reg_0_s1_10, SBOX_2_reg_0_s0_9,
         SBOX_2_reg_0_s1_9, SBOX_2_reg_0_s0_8, SBOX_2_reg_0_s1_8,
         SBOX_2_reg_0_s0_7, SBOX_2_reg_0_s1_7, SBOX_2_reg_0_s0_6,
         SBOX_2_reg_0_s1_6, SBOX_2_reg_0_s0_5, SBOX_2_reg_0_s1_5,
         SBOX_2_reg_0_s0_4, SBOX_2_reg_0_s1_4, SBOX_2_reg_0_s0_3,
         SBOX_2_reg_0_s1_3, SBOX_2_reg_0_s0_2, SBOX_2_reg_0_s1_2,
         SBOX_2_reg_0_s0_1, SBOX_2_reg_0_s1_1, SBOX_2_reg_0_s0,
         SBOX_2_reg_0_s1, SBOX_2__s0_2_0, SBOX_2__s0_2_1, SBOX_2__s1_2_0,
         SBOX_2__s1_2_1, SBOX_2__s0_1_0, SBOX_2__s0_1_1, SBOX_2__s1_1_0,
         SBOX_2__s1_1_1, SBOX_2__s0_0, \SBOX_2/_s0_1 , SBOX_2__s1_0,
         \SBOX_2/_s1_1 , SBOX_2_xor_5_Masked_z_0_, SBOX_2_xor_4_Masked_z_0_,
         SBOX_2_xor_3_Masked_z_0_, SBOX_2_xor_2_Masked_z_0_,
         SBOX_2_xor_1_Masked_z_0_, SBOX_2_not_3_Masked_z_0_,
         SBOX_2_not_2_Masked_z_0_, SBOX_2_xor_0_Masked_z_0_,
         SBOX_2_not_1_Masked_z_0_, SBOX_2_not_0_Masked_z_0_,
         SBOX_2_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_0_Masked_and_hpc_mul_n4,
         SBOX_2_and_0_Masked_and_hpc_mul_n3,
         SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_1_Masked_and_hpc_mul_n4,
         SBOX_2_and_1_Masked_and_hpc_mul_n3,
         SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_2_Masked_and_hpc_mul_n4,
         SBOX_2_and_2_Masked_and_hpc_mul_n3,
         SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_3_Masked_and_hpc_mul_n4,
         SBOX_2_and_3_Masked_and_hpc_mul_n3,
         SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_4_Masked_and_hpc_mul_n4,
         SBOX_2_and_4_Masked_and_hpc_mul_n3,
         SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_5_Masked_and_hpc_mul_n4,
         SBOX_2_and_5_Masked_and_hpc_mul_n3,
         SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_6_Masked_and_hpc_mul_n4,
         SBOX_2_and_6_Masked_and_hpc_mul_n3,
         SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_2_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_2_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_2_and_7_Masked_and_hpc_mul_n4,
         SBOX_2_and_7_Masked_and_hpc_mul_n3,
         SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_reg_0_s0_31, SBOX_3_reg_0_s1_31, SBOX_3_reg_0_s0_30,
         SBOX_3_reg_0_s1_30, SBOX_3_reg_0_s0_29, SBOX_3_reg_0_s1_29,
         SBOX_3_reg_0_s0_28, SBOX_3_reg_0_s1_28, SBOX_3_reg_0_s0_27,
         SBOX_3_reg_0_s1_27, SBOX_3_reg_0_s0_26, SBOX_3_reg_0_s1_26,
         SBOX_3_reg_0_s0_25, SBOX_3_reg_0_s1_25, SBOX_3_reg_0_s0_24,
         SBOX_3_reg_0_s1_24, SBOX_3_reg_0_s0_23, SBOX_3_reg_0_s1_23,
         SBOX_3_reg_0_s0_22, SBOX_3_reg_0_s1_22, SBOX_3_reg_0_s0_21,
         SBOX_3_reg_0_s1_21, SBOX_3_reg_0_s0_20, SBOX_3_reg_0_s1_20,
         SBOX_3_reg_0_s0_19, SBOX_3_reg_0_s1_19, SBOX_3_reg_0_s0_18,
         SBOX_3_reg_0_s1_18, SBOX_3_reg_0_s0_17, SBOX_3_reg_0_s1_17,
         SBOX_3_reg_0_s0_16, SBOX_3_reg_0_s1_16, SBOX_3_reg_0_s0_15,
         SBOX_3_reg_0_s1_15, SBOX_3_reg_0_s0_14, SBOX_3_reg_0_s1_14,
         SBOX_3_reg_0_s0_13, SBOX_3_reg_0_s1_13, SBOX_3_reg_0_s0_12,
         SBOX_3_reg_0_s1_12, SBOX_3_reg_0_s0_11, SBOX_3_reg_0_s1_11,
         SBOX_3_reg_0_s0_10, SBOX_3_reg_0_s1_10, SBOX_3_reg_0_s0_9,
         SBOX_3_reg_0_s1_9, SBOX_3_reg_0_s0_8, SBOX_3_reg_0_s1_8,
         SBOX_3_reg_0_s0_7, SBOX_3_reg_0_s1_7, SBOX_3_reg_0_s0_6,
         SBOX_3_reg_0_s1_6, SBOX_3_reg_0_s0_5, SBOX_3_reg_0_s1_5,
         SBOX_3_reg_0_s0_4, SBOX_3_reg_0_s1_4, SBOX_3_reg_0_s0_3,
         SBOX_3_reg_0_s1_3, SBOX_3_reg_0_s0_2, SBOX_3_reg_0_s1_2,
         SBOX_3_reg_0_s0_1, SBOX_3_reg_0_s1_1, SBOX_3_reg_0_s0,
         SBOX_3_reg_0_s1, SBOX_3__s0_2_0, SBOX_3__s0_2_1, SBOX_3__s1_2_0,
         SBOX_3__s1_2_1, SBOX_3__s0_1_0, SBOX_3__s0_1_1, SBOX_3__s1_1_0,
         SBOX_3__s1_1_1, SBOX_3__s0_0, \SBOX_3/_s0_1 , SBOX_3__s1_0,
         \SBOX_3/_s1_1 , SBOX_3_xor_5_Masked_z_0_, SBOX_3_xor_4_Masked_z_0_,
         SBOX_3_xor_3_Masked_z_0_, SBOX_3_xor_2_Masked_z_0_,
         SBOX_3_xor_1_Masked_z_0_, SBOX_3_not_3_Masked_z_0_,
         SBOX_3_not_2_Masked_z_0_, SBOX_3_xor_0_Masked_z_0_,
         SBOX_3_not_1_Masked_z_0_, SBOX_3_not_0_Masked_z_0_,
         SBOX_3_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_0_Masked_and_hpc_mul_n4,
         SBOX_3_and_0_Masked_and_hpc_mul_n3,
         SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_1_Masked_and_hpc_mul_n4,
         SBOX_3_and_1_Masked_and_hpc_mul_n3,
         SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_2_Masked_and_hpc_mul_n4,
         SBOX_3_and_2_Masked_and_hpc_mul_n3,
         SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_3_Masked_and_hpc_mul_n4,
         SBOX_3_and_3_Masked_and_hpc_mul_n3,
         SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_4_Masked_and_hpc_mul_n4,
         SBOX_3_and_4_Masked_and_hpc_mul_n3,
         SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_5_Masked_and_hpc_mul_n4,
         SBOX_3_and_5_Masked_and_hpc_mul_n3,
         SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_6_Masked_and_hpc_mul_n4,
         SBOX_3_and_6_Masked_and_hpc_mul_n3,
         SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_3_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_3_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_3_and_7_Masked_and_hpc_mul_n4,
         SBOX_3_and_7_Masked_and_hpc_mul_n3,
         SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_reg_0_s0_31, SBOX_4_reg_0_s1_31, SBOX_4_reg_0_s0_30,
         SBOX_4_reg_0_s1_30, SBOX_4_reg_0_s0_29, SBOX_4_reg_0_s1_29,
         SBOX_4_reg_0_s0_28, SBOX_4_reg_0_s1_28, SBOX_4_reg_0_s0_27,
         SBOX_4_reg_0_s1_27, SBOX_4_reg_0_s0_26, SBOX_4_reg_0_s1_26,
         SBOX_4_reg_0_s0_25, SBOX_4_reg_0_s1_25, SBOX_4_reg_0_s0_24,
         SBOX_4_reg_0_s1_24, SBOX_4_reg_0_s0_23, SBOX_4_reg_0_s1_23,
         SBOX_4_reg_0_s0_22, SBOX_4_reg_0_s1_22, SBOX_4_reg_0_s0_21,
         SBOX_4_reg_0_s1_21, SBOX_4_reg_0_s0_20, SBOX_4_reg_0_s1_20,
         SBOX_4_reg_0_s0_19, SBOX_4_reg_0_s1_19, SBOX_4_reg_0_s0_18,
         SBOX_4_reg_0_s1_18, SBOX_4_reg_0_s0_17, SBOX_4_reg_0_s1_17,
         SBOX_4_reg_0_s0_16, SBOX_4_reg_0_s1_16, SBOX_4_reg_0_s0_15,
         SBOX_4_reg_0_s1_15, SBOX_4_reg_0_s0_14, SBOX_4_reg_0_s1_14,
         SBOX_4_reg_0_s0_13, SBOX_4_reg_0_s1_13, SBOX_4_reg_0_s0_12,
         SBOX_4_reg_0_s1_12, SBOX_4_reg_0_s0_11, SBOX_4_reg_0_s1_11,
         SBOX_4_reg_0_s0_10, SBOX_4_reg_0_s1_10, SBOX_4_reg_0_s0_9,
         SBOX_4_reg_0_s1_9, SBOX_4_reg_0_s0_8, SBOX_4_reg_0_s1_8,
         SBOX_4_reg_0_s0_7, SBOX_4_reg_0_s1_7, SBOX_4_reg_0_s0_6,
         SBOX_4_reg_0_s1_6, SBOX_4_reg_0_s0_5, SBOX_4_reg_0_s1_5,
         SBOX_4_reg_0_s0_4, SBOX_4_reg_0_s1_4, SBOX_4_reg_0_s0_3,
         SBOX_4_reg_0_s1_3, SBOX_4_reg_0_s0_2, SBOX_4_reg_0_s1_2,
         SBOX_4_reg_0_s0_1, SBOX_4_reg_0_s1_1, SBOX_4_reg_0_s0,
         SBOX_4_reg_0_s1, SBOX_4__s0_2_0, SBOX_4__s0_2_1, SBOX_4__s1_2_0,
         SBOX_4__s1_2_1, SBOX_4__s0_1_0, SBOX_4__s0_1_1, SBOX_4__s1_1_0,
         SBOX_4__s1_1_1, SBOX_4__s0_0, \SBOX_4/_s0_1 , SBOX_4__s1_0,
         \SBOX_4/_s1_1 , SBOX_4_xor_5_Masked_z_0_, SBOX_4_xor_4_Masked_z_0_,
         SBOX_4_xor_3_Masked_z_0_, SBOX_4_xor_2_Masked_z_0_,
         SBOX_4_xor_1_Masked_z_0_, SBOX_4_not_3_Masked_z_0_,
         SBOX_4_not_2_Masked_z_0_, SBOX_4_xor_0_Masked_z_0_,
         SBOX_4_not_1_Masked_z_0_, SBOX_4_not_0_Masked_z_0_,
         SBOX_4_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_0_Masked_and_hpc_mul_n4,
         SBOX_4_and_0_Masked_and_hpc_mul_n3,
         SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_1_Masked_and_hpc_mul_n4,
         SBOX_4_and_1_Masked_and_hpc_mul_n3,
         SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_2_Masked_and_hpc_mul_n4,
         SBOX_4_and_2_Masked_and_hpc_mul_n3,
         SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_3_Masked_and_hpc_mul_n4,
         SBOX_4_and_3_Masked_and_hpc_mul_n3,
         SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_4_Masked_and_hpc_mul_n4,
         SBOX_4_and_4_Masked_and_hpc_mul_n3,
         SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_5_Masked_and_hpc_mul_n4,
         SBOX_4_and_5_Masked_and_hpc_mul_n3,
         SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_6_Masked_and_hpc_mul_n4,
         SBOX_4_and_6_Masked_and_hpc_mul_n3,
         SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_4_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_4_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_4_and_7_Masked_and_hpc_mul_n4,
         SBOX_4_and_7_Masked_and_hpc_mul_n3,
         SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_reg_0_s0_31, SBOX_5_reg_0_s1_31, SBOX_5_reg_0_s0_30,
         SBOX_5_reg_0_s1_30, SBOX_5_reg_0_s0_29, SBOX_5_reg_0_s1_29,
         SBOX_5_reg_0_s0_28, SBOX_5_reg_0_s1_28, SBOX_5_reg_0_s0_27,
         SBOX_5_reg_0_s1_27, SBOX_5_reg_0_s0_26, SBOX_5_reg_0_s1_26,
         SBOX_5_reg_0_s0_25, SBOX_5_reg_0_s1_25, SBOX_5_reg_0_s0_24,
         SBOX_5_reg_0_s1_24, SBOX_5_reg_0_s0_23, SBOX_5_reg_0_s1_23,
         SBOX_5_reg_0_s0_22, SBOX_5_reg_0_s1_22, SBOX_5_reg_0_s0_21,
         SBOX_5_reg_0_s1_21, SBOX_5_reg_0_s0_20, SBOX_5_reg_0_s1_20,
         SBOX_5_reg_0_s0_19, SBOX_5_reg_0_s1_19, SBOX_5_reg_0_s0_18,
         SBOX_5_reg_0_s1_18, SBOX_5_reg_0_s0_17, SBOX_5_reg_0_s1_17,
         SBOX_5_reg_0_s0_16, SBOX_5_reg_0_s1_16, SBOX_5_reg_0_s0_15,
         SBOX_5_reg_0_s1_15, SBOX_5_reg_0_s0_14, SBOX_5_reg_0_s1_14,
         SBOX_5_reg_0_s0_13, SBOX_5_reg_0_s1_13, SBOX_5_reg_0_s0_12,
         SBOX_5_reg_0_s1_12, SBOX_5_reg_0_s0_11, SBOX_5_reg_0_s1_11,
         SBOX_5_reg_0_s0_10, SBOX_5_reg_0_s1_10, SBOX_5_reg_0_s0_9,
         SBOX_5_reg_0_s1_9, SBOX_5_reg_0_s0_8, SBOX_5_reg_0_s1_8,
         SBOX_5_reg_0_s0_7, SBOX_5_reg_0_s1_7, SBOX_5_reg_0_s0_6,
         SBOX_5_reg_0_s1_6, SBOX_5_reg_0_s0_5, SBOX_5_reg_0_s1_5,
         SBOX_5_reg_0_s0_4, SBOX_5_reg_0_s1_4, SBOX_5_reg_0_s0_3,
         SBOX_5_reg_0_s1_3, SBOX_5_reg_0_s0_2, SBOX_5_reg_0_s1_2,
         SBOX_5_reg_0_s0_1, SBOX_5_reg_0_s1_1, SBOX_5_reg_0_s0,
         SBOX_5_reg_0_s1, SBOX_5__s0_2_0, SBOX_5__s0_2_1, SBOX_5__s1_2_0,
         SBOX_5__s1_2_1, SBOX_5__s0_1_0, SBOX_5__s0_1_1, SBOX_5__s1_1_0,
         SBOX_5__s1_1_1, SBOX_5__s0_0, \SBOX_5/_s0_1 , SBOX_5__s1_0,
         \SBOX_5/_s1_1 , SBOX_5_xor_5_Masked_z_0_, SBOX_5_xor_4_Masked_z_0_,
         SBOX_5_xor_3_Masked_z_0_, SBOX_5_xor_2_Masked_z_0_,
         SBOX_5_xor_1_Masked_z_0_, SBOX_5_not_3_Masked_z_0_,
         SBOX_5_not_2_Masked_z_0_, SBOX_5_xor_0_Masked_z_0_,
         SBOX_5_not_1_Masked_z_0_, SBOX_5_not_0_Masked_z_0_,
         SBOX_5_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_0_Masked_and_hpc_mul_n4,
         SBOX_5_and_0_Masked_and_hpc_mul_n3,
         SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_1_Masked_and_hpc_mul_n4,
         SBOX_5_and_1_Masked_and_hpc_mul_n3,
         SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_2_Masked_and_hpc_mul_n4,
         SBOX_5_and_2_Masked_and_hpc_mul_n3,
         SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_3_Masked_and_hpc_mul_n4,
         SBOX_5_and_3_Masked_and_hpc_mul_n3,
         SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_4_Masked_and_hpc_mul_n4,
         SBOX_5_and_4_Masked_and_hpc_mul_n3,
         SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_5_Masked_and_hpc_mul_n4,
         SBOX_5_and_5_Masked_and_hpc_mul_n3,
         SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_6_Masked_and_hpc_mul_n4,
         SBOX_5_and_6_Masked_and_hpc_mul_n3,
         SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_5_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_5_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_5_and_7_Masked_and_hpc_mul_n4,
         SBOX_5_and_7_Masked_and_hpc_mul_n3,
         SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_reg_0_s0_31, SBOX_6_reg_0_s1_31, SBOX_6_reg_0_s0_30,
         SBOX_6_reg_0_s1_30, SBOX_6_reg_0_s0_29, SBOX_6_reg_0_s1_29,
         SBOX_6_reg_0_s0_28, SBOX_6_reg_0_s1_28, SBOX_6_reg_0_s0_27,
         SBOX_6_reg_0_s1_27, SBOX_6_reg_0_s0_26, SBOX_6_reg_0_s1_26,
         SBOX_6_reg_0_s0_25, SBOX_6_reg_0_s1_25, SBOX_6_reg_0_s0_24,
         SBOX_6_reg_0_s1_24, SBOX_6_reg_0_s0_23, SBOX_6_reg_0_s1_23,
         SBOX_6_reg_0_s0_22, SBOX_6_reg_0_s1_22, SBOX_6_reg_0_s0_21,
         SBOX_6_reg_0_s1_21, SBOX_6_reg_0_s0_20, SBOX_6_reg_0_s1_20,
         SBOX_6_reg_0_s0_19, SBOX_6_reg_0_s1_19, SBOX_6_reg_0_s0_18,
         SBOX_6_reg_0_s1_18, SBOX_6_reg_0_s0_17, SBOX_6_reg_0_s1_17,
         SBOX_6_reg_0_s0_16, SBOX_6_reg_0_s1_16, SBOX_6_reg_0_s0_15,
         SBOX_6_reg_0_s1_15, SBOX_6_reg_0_s0_14, SBOX_6_reg_0_s1_14,
         SBOX_6_reg_0_s0_13, SBOX_6_reg_0_s1_13, SBOX_6_reg_0_s0_12,
         SBOX_6_reg_0_s1_12, SBOX_6_reg_0_s0_11, SBOX_6_reg_0_s1_11,
         SBOX_6_reg_0_s0_10, SBOX_6_reg_0_s1_10, SBOX_6_reg_0_s0_9,
         SBOX_6_reg_0_s1_9, SBOX_6_reg_0_s0_8, SBOX_6_reg_0_s1_8,
         SBOX_6_reg_0_s0_7, SBOX_6_reg_0_s1_7, SBOX_6_reg_0_s0_6,
         SBOX_6_reg_0_s1_6, SBOX_6_reg_0_s0_5, SBOX_6_reg_0_s1_5,
         SBOX_6_reg_0_s0_4, SBOX_6_reg_0_s1_4, SBOX_6_reg_0_s0_3,
         SBOX_6_reg_0_s1_3, SBOX_6_reg_0_s0_2, SBOX_6_reg_0_s1_2,
         SBOX_6_reg_0_s0_1, SBOX_6_reg_0_s1_1, SBOX_6_reg_0_s0,
         SBOX_6_reg_0_s1, SBOX_6__s0_2_0, SBOX_6__s0_2_1, SBOX_6__s1_2_0,
         SBOX_6__s1_2_1, SBOX_6__s0_1_0, SBOX_6__s0_1_1, SBOX_6__s1_1_0,
         SBOX_6__s1_1_1, SBOX_6__s0_0, \SBOX_6/_s0_1 , SBOX_6__s1_0,
         \SBOX_6/_s1_1 , SBOX_6_xor_5_Masked_z_0_, SBOX_6_xor_4_Masked_z_0_,
         SBOX_6_xor_3_Masked_z_0_, SBOX_6_xor_2_Masked_z_0_,
         SBOX_6_xor_1_Masked_z_0_, SBOX_6_not_3_Masked_z_0_,
         SBOX_6_not_2_Masked_z_0_, SBOX_6_xor_0_Masked_z_0_,
         SBOX_6_not_1_Masked_z_0_, SBOX_6_not_0_Masked_z_0_,
         SBOX_6_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_0_Masked_and_hpc_mul_n4,
         SBOX_6_and_0_Masked_and_hpc_mul_n3,
         SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_1_Masked_and_hpc_mul_n4,
         SBOX_6_and_1_Masked_and_hpc_mul_n3,
         SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_2_Masked_and_hpc_mul_n4,
         SBOX_6_and_2_Masked_and_hpc_mul_n3,
         SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_3_Masked_and_hpc_mul_n4,
         SBOX_6_and_3_Masked_and_hpc_mul_n3,
         SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_4_Masked_and_hpc_mul_n4,
         SBOX_6_and_4_Masked_and_hpc_mul_n3,
         SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_5_Masked_and_hpc_mul_n4,
         SBOX_6_and_5_Masked_and_hpc_mul_n3,
         SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_6_Masked_and_hpc_mul_n4,
         SBOX_6_and_6_Masked_and_hpc_mul_n3,
         SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_6_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_6_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_6_and_7_Masked_and_hpc_mul_n4,
         SBOX_6_and_7_Masked_and_hpc_mul_n3,
         SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_reg_0_s0_31, SBOX_7_reg_0_s1_31, SBOX_7_reg_0_s0_30,
         SBOX_7_reg_0_s1_30, SBOX_7_reg_0_s0_29, SBOX_7_reg_0_s1_29,
         SBOX_7_reg_0_s0_28, SBOX_7_reg_0_s1_28, SBOX_7_reg_0_s0_27,
         SBOX_7_reg_0_s1_27, SBOX_7_reg_0_s0_26, SBOX_7_reg_0_s1_26,
         SBOX_7_reg_0_s0_25, SBOX_7_reg_0_s1_25, SBOX_7_reg_0_s0_24,
         SBOX_7_reg_0_s1_24, SBOX_7_reg_0_s0_23, SBOX_7_reg_0_s1_23,
         SBOX_7_reg_0_s0_22, SBOX_7_reg_0_s1_22, SBOX_7_reg_0_s0_21,
         SBOX_7_reg_0_s1_21, SBOX_7_reg_0_s0_20, SBOX_7_reg_0_s1_20,
         SBOX_7_reg_0_s0_19, SBOX_7_reg_0_s1_19, SBOX_7_reg_0_s0_18,
         SBOX_7_reg_0_s1_18, SBOX_7_reg_0_s0_17, SBOX_7_reg_0_s1_17,
         SBOX_7_reg_0_s0_16, SBOX_7_reg_0_s1_16, SBOX_7_reg_0_s0_15,
         SBOX_7_reg_0_s1_15, SBOX_7_reg_0_s0_14, SBOX_7_reg_0_s1_14,
         SBOX_7_reg_0_s0_13, SBOX_7_reg_0_s1_13, SBOX_7_reg_0_s0_12,
         SBOX_7_reg_0_s1_12, SBOX_7_reg_0_s0_11, SBOX_7_reg_0_s1_11,
         SBOX_7_reg_0_s0_10, SBOX_7_reg_0_s1_10, SBOX_7_reg_0_s0_9,
         SBOX_7_reg_0_s1_9, SBOX_7_reg_0_s0_8, SBOX_7_reg_0_s1_8,
         SBOX_7_reg_0_s0_7, SBOX_7_reg_0_s1_7, SBOX_7_reg_0_s0_6,
         SBOX_7_reg_0_s1_6, SBOX_7_reg_0_s0_5, SBOX_7_reg_0_s1_5,
         SBOX_7_reg_0_s0_4, SBOX_7_reg_0_s1_4, SBOX_7_reg_0_s0_3,
         SBOX_7_reg_0_s1_3, SBOX_7_reg_0_s0_2, SBOX_7_reg_0_s1_2,
         SBOX_7_reg_0_s0_1, SBOX_7_reg_0_s1_1, SBOX_7_reg_0_s0,
         SBOX_7_reg_0_s1, SBOX_7__s0_2_0, SBOX_7__s0_2_1, SBOX_7__s1_2_0,
         SBOX_7__s1_2_1, SBOX_7__s0_1_0, SBOX_7__s0_1_1, SBOX_7__s1_1_0,
         SBOX_7__s1_1_1, SBOX_7__s0_0, \SBOX_7/_s0_1 , SBOX_7__s1_0,
         \SBOX_7/_s1_1 , SBOX_7_xor_5_Masked_z_0_, SBOX_7_xor_4_Masked_z_0_,
         SBOX_7_xor_3_Masked_z_0_, SBOX_7_xor_2_Masked_z_0_,
         SBOX_7_xor_1_Masked_z_0_, SBOX_7_not_3_Masked_z_0_,
         SBOX_7_not_2_Masked_z_0_, SBOX_7_xor_0_Masked_z_0_,
         SBOX_7_not_1_Masked_z_0_, SBOX_7_not_0_Masked_z_0_,
         SBOX_7_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_0_Masked_and_hpc_mul_n4,
         SBOX_7_and_0_Masked_and_hpc_mul_n3,
         SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_1_Masked_and_hpc_mul_n4,
         SBOX_7_and_1_Masked_and_hpc_mul_n3,
         SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_2_Masked_and_hpc_mul_n4,
         SBOX_7_and_2_Masked_and_hpc_mul_n3,
         SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_3_Masked_and_hpc_mul_n4,
         SBOX_7_and_3_Masked_and_hpc_mul_n3,
         SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_4_Masked_and_hpc_mul_n4,
         SBOX_7_and_4_Masked_and_hpc_mul_n3,
         SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_5_Masked_and_hpc_mul_n4,
         SBOX_7_and_5_Masked_and_hpc_mul_n3,
         SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_6_Masked_and_hpc_mul_n4,
         SBOX_7_and_6_Masked_and_hpc_mul_n3,
         SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_7_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_7_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_7_and_7_Masked_and_hpc_mul_n4,
         SBOX_7_and_7_Masked_and_hpc_mul_n3,
         SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_reg_0_s0_31, SBOX_8_reg_0_s1_31, SBOX_8_reg_0_s0_30,
         SBOX_8_reg_0_s1_30, SBOX_8_reg_0_s0_29, SBOX_8_reg_0_s1_29,
         SBOX_8_reg_0_s0_28, SBOX_8_reg_0_s1_28, SBOX_8_reg_0_s0_27,
         SBOX_8_reg_0_s1_27, SBOX_8_reg_0_s0_26, SBOX_8_reg_0_s1_26,
         SBOX_8_reg_0_s0_25, SBOX_8_reg_0_s1_25, SBOX_8_reg_0_s0_24,
         SBOX_8_reg_0_s1_24, SBOX_8_reg_0_s0_23, SBOX_8_reg_0_s1_23,
         SBOX_8_reg_0_s0_22, SBOX_8_reg_0_s1_22, SBOX_8_reg_0_s0_21,
         SBOX_8_reg_0_s1_21, SBOX_8_reg_0_s0_20, SBOX_8_reg_0_s1_20,
         SBOX_8_reg_0_s0_19, SBOX_8_reg_0_s1_19, SBOX_8_reg_0_s0_18,
         SBOX_8_reg_0_s1_18, SBOX_8_reg_0_s0_17, SBOX_8_reg_0_s1_17,
         SBOX_8_reg_0_s0_16, SBOX_8_reg_0_s1_16, SBOX_8_reg_0_s0_15,
         SBOX_8_reg_0_s1_15, SBOX_8_reg_0_s0_14, SBOX_8_reg_0_s1_14,
         SBOX_8_reg_0_s0_13, SBOX_8_reg_0_s1_13, SBOX_8_reg_0_s0_12,
         SBOX_8_reg_0_s1_12, SBOX_8_reg_0_s0_11, SBOX_8_reg_0_s1_11,
         SBOX_8_reg_0_s0_10, SBOX_8_reg_0_s1_10, SBOX_8_reg_0_s0_9,
         SBOX_8_reg_0_s1_9, SBOX_8_reg_0_s0_8, SBOX_8_reg_0_s1_8,
         SBOX_8_reg_0_s0_7, SBOX_8_reg_0_s1_7, SBOX_8_reg_0_s0_6,
         SBOX_8_reg_0_s1_6, SBOX_8_reg_0_s0_5, SBOX_8_reg_0_s1_5,
         SBOX_8_reg_0_s0_4, SBOX_8_reg_0_s1_4, SBOX_8_reg_0_s0_3,
         SBOX_8_reg_0_s1_3, SBOX_8_reg_0_s0_2, SBOX_8_reg_0_s1_2,
         SBOX_8_reg_0_s0_1, SBOX_8_reg_0_s1_1, SBOX_8_reg_0_s0,
         SBOX_8_reg_0_s1, SBOX_8__s0_2_0, SBOX_8__s0_2_1, SBOX_8__s1_2_0,
         SBOX_8__s1_2_1, SBOX_8__s0_1_0, SBOX_8__s0_1_1, SBOX_8__s1_1_0,
         SBOX_8__s1_1_1, SBOX_8__s0_0, \SBOX_8/_s0_1 , SBOX_8__s1_0,
         \SBOX_8/_s1_1 , SBOX_8_xor_5_Masked_z_0_, SBOX_8_xor_4_Masked_z_0_,
         SBOX_8_xor_3_Masked_z_0_, SBOX_8_xor_2_Masked_z_0_,
         SBOX_8_xor_1_Masked_z_0_, SBOX_8_not_3_Masked_z_0_,
         SBOX_8_not_2_Masked_z_0_, SBOX_8_xor_0_Masked_z_0_,
         SBOX_8_not_1_Masked_z_0_, SBOX_8_not_0_Masked_z_0_,
         SBOX_8_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_0_Masked_and_hpc_mul_n4,
         SBOX_8_and_0_Masked_and_hpc_mul_n3,
         SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_1_Masked_and_hpc_mul_n4,
         SBOX_8_and_1_Masked_and_hpc_mul_n3,
         SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_2_Masked_and_hpc_mul_n4,
         SBOX_8_and_2_Masked_and_hpc_mul_n3,
         SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_3_Masked_and_hpc_mul_n4,
         SBOX_8_and_3_Masked_and_hpc_mul_n3,
         SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_4_Masked_and_hpc_mul_n4,
         SBOX_8_and_4_Masked_and_hpc_mul_n3,
         SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_5_Masked_and_hpc_mul_n4,
         SBOX_8_and_5_Masked_and_hpc_mul_n3,
         SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_6_Masked_and_hpc_mul_n4,
         SBOX_8_and_6_Masked_and_hpc_mul_n3,
         SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_8_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_8_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_8_and_7_Masked_and_hpc_mul_n4,
         SBOX_8_and_7_Masked_and_hpc_mul_n3,
         SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_reg_0_s0_31, SBOX_9_reg_0_s1_31, SBOX_9_reg_0_s0_30,
         SBOX_9_reg_0_s1_30, SBOX_9_reg_0_s0_29, SBOX_9_reg_0_s1_29,
         SBOX_9_reg_0_s0_28, SBOX_9_reg_0_s1_28, SBOX_9_reg_0_s0_27,
         SBOX_9_reg_0_s1_27, SBOX_9_reg_0_s0_26, SBOX_9_reg_0_s1_26,
         SBOX_9_reg_0_s0_25, SBOX_9_reg_0_s1_25, SBOX_9_reg_0_s0_24,
         SBOX_9_reg_0_s1_24, SBOX_9_reg_0_s0_23, SBOX_9_reg_0_s1_23,
         SBOX_9_reg_0_s0_22, SBOX_9_reg_0_s1_22, SBOX_9_reg_0_s0_21,
         SBOX_9_reg_0_s1_21, SBOX_9_reg_0_s0_20, SBOX_9_reg_0_s1_20,
         SBOX_9_reg_0_s0_19, SBOX_9_reg_0_s1_19, SBOX_9_reg_0_s0_18,
         SBOX_9_reg_0_s1_18, SBOX_9_reg_0_s0_17, SBOX_9_reg_0_s1_17,
         SBOX_9_reg_0_s0_16, SBOX_9_reg_0_s1_16, SBOX_9_reg_0_s0_15,
         SBOX_9_reg_0_s1_15, SBOX_9_reg_0_s0_14, SBOX_9_reg_0_s1_14,
         SBOX_9_reg_0_s0_13, SBOX_9_reg_0_s1_13, SBOX_9_reg_0_s0_12,
         SBOX_9_reg_0_s1_12, SBOX_9_reg_0_s0_11, SBOX_9_reg_0_s1_11,
         SBOX_9_reg_0_s0_10, SBOX_9_reg_0_s1_10, SBOX_9_reg_0_s0_9,
         SBOX_9_reg_0_s1_9, SBOX_9_reg_0_s0_8, SBOX_9_reg_0_s1_8,
         SBOX_9_reg_0_s0_7, SBOX_9_reg_0_s1_7, SBOX_9_reg_0_s0_6,
         SBOX_9_reg_0_s1_6, SBOX_9_reg_0_s0_5, SBOX_9_reg_0_s1_5,
         SBOX_9_reg_0_s0_4, SBOX_9_reg_0_s1_4, SBOX_9_reg_0_s0_3,
         SBOX_9_reg_0_s1_3, SBOX_9_reg_0_s0_2, SBOX_9_reg_0_s1_2,
         SBOX_9_reg_0_s0_1, SBOX_9_reg_0_s1_1, SBOX_9_reg_0_s0,
         SBOX_9_reg_0_s1, SBOX_9__s0_2_0, SBOX_9__s0_2_1, SBOX_9__s1_2_0,
         SBOX_9__s1_2_1, SBOX_9__s0_1_0, SBOX_9__s0_1_1, SBOX_9__s1_1_0,
         SBOX_9__s1_1_1, SBOX_9__s0_0, \SBOX_9/_s0_1 , SBOX_9__s1_0,
         \SBOX_9/_s1_1 , SBOX_9_xor_5_Masked_z_0_, SBOX_9_xor_4_Masked_z_0_,
         SBOX_9_xor_3_Masked_z_0_, SBOX_9_xor_2_Masked_z_0_,
         SBOX_9_xor_1_Masked_z_0_, SBOX_9_not_3_Masked_z_0_,
         SBOX_9_not_2_Masked_z_0_, SBOX_9_xor_0_Masked_z_0_,
         SBOX_9_not_1_Masked_z_0_, SBOX_9_not_0_Masked_z_0_,
         SBOX_9_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_0_Masked_and_hpc_mul_n4,
         SBOX_9_and_0_Masked_and_hpc_mul_n3,
         SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_1_Masked_and_hpc_mul_n4,
         SBOX_9_and_1_Masked_and_hpc_mul_n3,
         SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_2_Masked_and_hpc_mul_n4,
         SBOX_9_and_2_Masked_and_hpc_mul_n3,
         SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_3_Masked_and_hpc_mul_n4,
         SBOX_9_and_3_Masked_and_hpc_mul_n3,
         SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_4_Masked_and_hpc_mul_n4,
         SBOX_9_and_4_Masked_and_hpc_mul_n3,
         SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_5_Masked_and_hpc_mul_n4,
         SBOX_9_and_5_Masked_and_hpc_mul_n3,
         SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_6_Masked_and_hpc_mul_n4,
         SBOX_9_and_6_Masked_and_hpc_mul_n3,
         SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_9_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_9_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_9_and_7_Masked_and_hpc_mul_n4,
         SBOX_9_and_7_Masked_and_hpc_mul_n3,
         SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_reg_0_s0_31, SBOX_10_reg_0_s1_31, SBOX_10_reg_0_s0_30,
         SBOX_10_reg_0_s1_30, SBOX_10_reg_0_s0_29, SBOX_10_reg_0_s1_29,
         SBOX_10_reg_0_s0_28, SBOX_10_reg_0_s1_28, SBOX_10_reg_0_s0_27,
         SBOX_10_reg_0_s1_27, SBOX_10_reg_0_s0_26, SBOX_10_reg_0_s1_26,
         SBOX_10_reg_0_s0_25, SBOX_10_reg_0_s1_25, SBOX_10_reg_0_s0_24,
         SBOX_10_reg_0_s1_24, SBOX_10_reg_0_s0_23, SBOX_10_reg_0_s1_23,
         SBOX_10_reg_0_s0_22, SBOX_10_reg_0_s1_22, SBOX_10_reg_0_s0_21,
         SBOX_10_reg_0_s1_21, SBOX_10_reg_0_s0_20, SBOX_10_reg_0_s1_20,
         SBOX_10_reg_0_s0_19, SBOX_10_reg_0_s1_19, SBOX_10_reg_0_s0_18,
         SBOX_10_reg_0_s1_18, SBOX_10_reg_0_s0_17, SBOX_10_reg_0_s1_17,
         SBOX_10_reg_0_s0_16, SBOX_10_reg_0_s1_16, SBOX_10_reg_0_s0_15,
         SBOX_10_reg_0_s1_15, SBOX_10_reg_0_s0_14, SBOX_10_reg_0_s1_14,
         SBOX_10_reg_0_s0_13, SBOX_10_reg_0_s1_13, SBOX_10_reg_0_s0_12,
         SBOX_10_reg_0_s1_12, SBOX_10_reg_0_s0_11, SBOX_10_reg_0_s1_11,
         SBOX_10_reg_0_s0_10, SBOX_10_reg_0_s1_10, SBOX_10_reg_0_s0_9,
         SBOX_10_reg_0_s1_9, SBOX_10_reg_0_s0_8, SBOX_10_reg_0_s1_8,
         SBOX_10_reg_0_s0_7, SBOX_10_reg_0_s1_7, SBOX_10_reg_0_s0_6,
         SBOX_10_reg_0_s1_6, SBOX_10_reg_0_s0_5, SBOX_10_reg_0_s1_5,
         SBOX_10_reg_0_s0_4, SBOX_10_reg_0_s1_4, SBOX_10_reg_0_s0_3,
         SBOX_10_reg_0_s1_3, SBOX_10_reg_0_s0_2, SBOX_10_reg_0_s1_2,
         SBOX_10_reg_0_s0_1, SBOX_10_reg_0_s1_1, SBOX_10_reg_0_s0,
         SBOX_10_reg_0_s1, SBOX_10__s0_2_0, SBOX_10__s0_2_1, SBOX_10__s1_2_0,
         SBOX_10__s1_2_1, SBOX_10__s0_1_0, SBOX_10__s0_1_1, SBOX_10__s1_1_0,
         SBOX_10__s1_1_1, SBOX_10__s0_0, \SBOX_10/_s0_1 , SBOX_10__s1_0,
         \SBOX_10/_s1_1 , SBOX_10_xor_5_Masked_z_0_, SBOX_10_xor_4_Masked_z_0_,
         SBOX_10_xor_3_Masked_z_0_, SBOX_10_xor_2_Masked_z_0_,
         SBOX_10_xor_1_Masked_z_0_, SBOX_10_not_3_Masked_z_0_,
         SBOX_10_not_2_Masked_z_0_, SBOX_10_xor_0_Masked_z_0_,
         SBOX_10_not_1_Masked_z_0_, SBOX_10_not_0_Masked_z_0_,
         SBOX_10_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_0_Masked_and_hpc_mul_n4,
         SBOX_10_and_0_Masked_and_hpc_mul_n3,
         SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_1_Masked_and_hpc_mul_n4,
         SBOX_10_and_1_Masked_and_hpc_mul_n3,
         SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_2_Masked_and_hpc_mul_n4,
         SBOX_10_and_2_Masked_and_hpc_mul_n3,
         SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_3_Masked_and_hpc_mul_n4,
         SBOX_10_and_3_Masked_and_hpc_mul_n3,
         SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_4_Masked_and_hpc_mul_n4,
         SBOX_10_and_4_Masked_and_hpc_mul_n3,
         SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_5_Masked_and_hpc_mul_n4,
         SBOX_10_and_5_Masked_and_hpc_mul_n3,
         SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_6_Masked_and_hpc_mul_n4,
         SBOX_10_and_6_Masked_and_hpc_mul_n3,
         SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_10_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_10_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_10_and_7_Masked_and_hpc_mul_n4,
         SBOX_10_and_7_Masked_and_hpc_mul_n3,
         SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_reg_0_s0_31, SBOX_11_reg_0_s1_31, SBOX_11_reg_0_s0_30,
         SBOX_11_reg_0_s1_30, SBOX_11_reg_0_s0_29, SBOX_11_reg_0_s1_29,
         SBOX_11_reg_0_s0_28, SBOX_11_reg_0_s1_28, SBOX_11_reg_0_s0_27,
         SBOX_11_reg_0_s1_27, SBOX_11_reg_0_s0_26, SBOX_11_reg_0_s1_26,
         SBOX_11_reg_0_s0_25, SBOX_11_reg_0_s1_25, SBOX_11_reg_0_s0_24,
         SBOX_11_reg_0_s1_24, SBOX_11_reg_0_s0_23, SBOX_11_reg_0_s1_23,
         SBOX_11_reg_0_s0_22, SBOX_11_reg_0_s1_22, SBOX_11_reg_0_s0_21,
         SBOX_11_reg_0_s1_21, SBOX_11_reg_0_s0_20, SBOX_11_reg_0_s1_20,
         SBOX_11_reg_0_s0_19, SBOX_11_reg_0_s1_19, SBOX_11_reg_0_s0_18,
         SBOX_11_reg_0_s1_18, SBOX_11_reg_0_s0_17, SBOX_11_reg_0_s1_17,
         SBOX_11_reg_0_s0_16, SBOX_11_reg_0_s1_16, SBOX_11_reg_0_s0_15,
         SBOX_11_reg_0_s1_15, SBOX_11_reg_0_s0_14, SBOX_11_reg_0_s1_14,
         SBOX_11_reg_0_s0_13, SBOX_11_reg_0_s1_13, SBOX_11_reg_0_s0_12,
         SBOX_11_reg_0_s1_12, SBOX_11_reg_0_s0_11, SBOX_11_reg_0_s1_11,
         SBOX_11_reg_0_s0_10, SBOX_11_reg_0_s1_10, SBOX_11_reg_0_s0_9,
         SBOX_11_reg_0_s1_9, SBOX_11_reg_0_s0_8, SBOX_11_reg_0_s1_8,
         SBOX_11_reg_0_s0_7, SBOX_11_reg_0_s1_7, SBOX_11_reg_0_s0_6,
         SBOX_11_reg_0_s1_6, SBOX_11_reg_0_s0_5, SBOX_11_reg_0_s1_5,
         SBOX_11_reg_0_s0_4, SBOX_11_reg_0_s1_4, SBOX_11_reg_0_s0_3,
         SBOX_11_reg_0_s1_3, SBOX_11_reg_0_s0_2, SBOX_11_reg_0_s1_2,
         SBOX_11_reg_0_s0_1, SBOX_11_reg_0_s1_1, SBOX_11_reg_0_s0,
         SBOX_11_reg_0_s1, SBOX_11__s0_2_0, SBOX_11__s0_2_1, SBOX_11__s1_2_0,
         SBOX_11__s1_2_1, SBOX_11__s0_1_0, SBOX_11__s0_1_1, SBOX_11__s1_1_0,
         SBOX_11__s1_1_1, SBOX_11__s0_0, \SBOX_11/_s0_1 , SBOX_11__s1_0,
         \SBOX_11/_s1_1 , SBOX_11_xor_5_Masked_z_0_, SBOX_11_xor_4_Masked_z_0_,
         SBOX_11_xor_3_Masked_z_0_, SBOX_11_xor_2_Masked_z_0_,
         SBOX_11_xor_1_Masked_z_0_, SBOX_11_not_3_Masked_z_0_,
         SBOX_11_not_2_Masked_z_0_, SBOX_11_xor_0_Masked_z_0_,
         SBOX_11_not_1_Masked_z_0_, SBOX_11_not_0_Masked_z_0_,
         SBOX_11_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_0_Masked_and_hpc_mul_n4,
         SBOX_11_and_0_Masked_and_hpc_mul_n3,
         SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_1_Masked_and_hpc_mul_n4,
         SBOX_11_and_1_Masked_and_hpc_mul_n3,
         SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_2_Masked_and_hpc_mul_n4,
         SBOX_11_and_2_Masked_and_hpc_mul_n3,
         SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_3_Masked_and_hpc_mul_n4,
         SBOX_11_and_3_Masked_and_hpc_mul_n3,
         SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_4_Masked_and_hpc_mul_n4,
         SBOX_11_and_4_Masked_and_hpc_mul_n3,
         SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_5_Masked_and_hpc_mul_n4,
         SBOX_11_and_5_Masked_and_hpc_mul_n3,
         SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_6_Masked_and_hpc_mul_n4,
         SBOX_11_and_6_Masked_and_hpc_mul_n3,
         SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_11_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_11_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_11_and_7_Masked_and_hpc_mul_n4,
         SBOX_11_and_7_Masked_and_hpc_mul_n3,
         SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_reg_0_s0_31, SBOX_12_reg_0_s1_31, SBOX_12_reg_0_s0_30,
         SBOX_12_reg_0_s1_30, SBOX_12_reg_0_s0_29, SBOX_12_reg_0_s1_29,
         SBOX_12_reg_0_s0_28, SBOX_12_reg_0_s1_28, SBOX_12_reg_0_s0_27,
         SBOX_12_reg_0_s1_27, SBOX_12_reg_0_s0_26, SBOX_12_reg_0_s1_26,
         SBOX_12_reg_0_s0_25, SBOX_12_reg_0_s1_25, SBOX_12_reg_0_s0_24,
         SBOX_12_reg_0_s1_24, SBOX_12_reg_0_s0_23, SBOX_12_reg_0_s1_23,
         SBOX_12_reg_0_s0_22, SBOX_12_reg_0_s1_22, SBOX_12_reg_0_s0_21,
         SBOX_12_reg_0_s1_21, SBOX_12_reg_0_s0_20, SBOX_12_reg_0_s1_20,
         SBOX_12_reg_0_s0_19, SBOX_12_reg_0_s1_19, SBOX_12_reg_0_s0_18,
         SBOX_12_reg_0_s1_18, SBOX_12_reg_0_s0_17, SBOX_12_reg_0_s1_17,
         SBOX_12_reg_0_s0_16, SBOX_12_reg_0_s1_16, SBOX_12_reg_0_s0_15,
         SBOX_12_reg_0_s1_15, SBOX_12_reg_0_s0_14, SBOX_12_reg_0_s1_14,
         SBOX_12_reg_0_s0_13, SBOX_12_reg_0_s1_13, SBOX_12_reg_0_s0_12,
         SBOX_12_reg_0_s1_12, SBOX_12_reg_0_s0_11, SBOX_12_reg_0_s1_11,
         SBOX_12_reg_0_s0_10, SBOX_12_reg_0_s1_10, SBOX_12_reg_0_s0_9,
         SBOX_12_reg_0_s1_9, SBOX_12_reg_0_s0_8, SBOX_12_reg_0_s1_8,
         SBOX_12_reg_0_s0_7, SBOX_12_reg_0_s1_7, SBOX_12_reg_0_s0_6,
         SBOX_12_reg_0_s1_6, SBOX_12_reg_0_s0_5, SBOX_12_reg_0_s1_5,
         SBOX_12_reg_0_s0_4, SBOX_12_reg_0_s1_4, SBOX_12_reg_0_s0_3,
         SBOX_12_reg_0_s1_3, SBOX_12_reg_0_s0_2, SBOX_12_reg_0_s1_2,
         SBOX_12_reg_0_s0_1, SBOX_12_reg_0_s1_1, SBOX_12_reg_0_s0,
         SBOX_12_reg_0_s1, SBOX_12__s0_2_0, SBOX_12__s0_2_1, SBOX_12__s1_2_0,
         SBOX_12__s1_2_1, SBOX_12__s0_1_0, SBOX_12__s0_1_1, SBOX_12__s1_1_0,
         SBOX_12__s1_1_1, SBOX_12__s0_0, \SBOX_12/_s0_1 , SBOX_12__s1_0,
         \SBOX_12/_s1_1 , SBOX_12_xor_5_Masked_z_0_, SBOX_12_xor_4_Masked_z_0_,
         SBOX_12_xor_3_Masked_z_0_, SBOX_12_xor_2_Masked_z_0_,
         SBOX_12_xor_1_Masked_z_0_, SBOX_12_not_3_Masked_z_0_,
         SBOX_12_not_2_Masked_z_0_, SBOX_12_xor_0_Masked_z_0_,
         SBOX_12_not_1_Masked_z_0_, SBOX_12_not_0_Masked_z_0_,
         SBOX_12_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_0_Masked_and_hpc_mul_n4,
         SBOX_12_and_0_Masked_and_hpc_mul_n3,
         SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_1_Masked_and_hpc_mul_n4,
         SBOX_12_and_1_Masked_and_hpc_mul_n3,
         SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_2_Masked_and_hpc_mul_n4,
         SBOX_12_and_2_Masked_and_hpc_mul_n3,
         SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_3_Masked_and_hpc_mul_n4,
         SBOX_12_and_3_Masked_and_hpc_mul_n3,
         SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_4_Masked_and_hpc_mul_n4,
         SBOX_12_and_4_Masked_and_hpc_mul_n3,
         SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_5_Masked_and_hpc_mul_n4,
         SBOX_12_and_5_Masked_and_hpc_mul_n3,
         SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_6_Masked_and_hpc_mul_n4,
         SBOX_12_and_6_Masked_and_hpc_mul_n3,
         SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_12_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_12_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_12_and_7_Masked_and_hpc_mul_n4,
         SBOX_12_and_7_Masked_and_hpc_mul_n3,
         SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_reg_0_s0_31, SBOX_13_reg_0_s1_31, SBOX_13_reg_0_s0_30,
         SBOX_13_reg_0_s1_30, SBOX_13_reg_0_s0_29, SBOX_13_reg_0_s1_29,
         SBOX_13_reg_0_s0_28, SBOX_13_reg_0_s1_28, SBOX_13_reg_0_s0_27,
         SBOX_13_reg_0_s1_27, SBOX_13_reg_0_s0_26, SBOX_13_reg_0_s1_26,
         SBOX_13_reg_0_s0_25, SBOX_13_reg_0_s1_25, SBOX_13_reg_0_s0_24,
         SBOX_13_reg_0_s1_24, SBOX_13_reg_0_s0_23, SBOX_13_reg_0_s1_23,
         SBOX_13_reg_0_s0_22, SBOX_13_reg_0_s1_22, SBOX_13_reg_0_s0_21,
         SBOX_13_reg_0_s1_21, SBOX_13_reg_0_s0_20, SBOX_13_reg_0_s1_20,
         SBOX_13_reg_0_s0_19, SBOX_13_reg_0_s1_19, SBOX_13_reg_0_s0_18,
         SBOX_13_reg_0_s1_18, SBOX_13_reg_0_s0_17, SBOX_13_reg_0_s1_17,
         SBOX_13_reg_0_s0_16, SBOX_13_reg_0_s1_16, SBOX_13_reg_0_s0_15,
         SBOX_13_reg_0_s1_15, SBOX_13_reg_0_s0_14, SBOX_13_reg_0_s1_14,
         SBOX_13_reg_0_s0_13, SBOX_13_reg_0_s1_13, SBOX_13_reg_0_s0_12,
         SBOX_13_reg_0_s1_12, SBOX_13_reg_0_s0_11, SBOX_13_reg_0_s1_11,
         SBOX_13_reg_0_s0_10, SBOX_13_reg_0_s1_10, SBOX_13_reg_0_s0_9,
         SBOX_13_reg_0_s1_9, SBOX_13_reg_0_s0_8, SBOX_13_reg_0_s1_8,
         SBOX_13_reg_0_s0_7, SBOX_13_reg_0_s1_7, SBOX_13_reg_0_s0_6,
         SBOX_13_reg_0_s1_6, SBOX_13_reg_0_s0_5, SBOX_13_reg_0_s1_5,
         SBOX_13_reg_0_s0_4, SBOX_13_reg_0_s1_4, SBOX_13_reg_0_s0_3,
         SBOX_13_reg_0_s1_3, SBOX_13_reg_0_s0_2, SBOX_13_reg_0_s1_2,
         SBOX_13_reg_0_s0_1, SBOX_13_reg_0_s1_1, SBOX_13_reg_0_s0,
         SBOX_13_reg_0_s1, SBOX_13__s0_2_0, SBOX_13__s0_2_1, SBOX_13__s1_2_0,
         SBOX_13__s1_2_1, SBOX_13__s0_1_0, SBOX_13__s0_1_1, SBOX_13__s1_1_0,
         SBOX_13__s1_1_1, SBOX_13__s0_0, \SBOX_13/_s0_1 , SBOX_13__s1_0,
         \SBOX_13/_s1_1 , SBOX_13_xor_5_Masked_z_0_, SBOX_13_xor_4_Masked_z_0_,
         SBOX_13_xor_3_Masked_z_0_, SBOX_13_xor_2_Masked_z_0_,
         SBOX_13_xor_1_Masked_z_0_, SBOX_13_not_3_Masked_z_0_,
         SBOX_13_not_2_Masked_z_0_, SBOX_13_xor_0_Masked_z_0_,
         SBOX_13_not_1_Masked_z_0_, SBOX_13_not_0_Masked_z_0_,
         SBOX_13_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_0_Masked_and_hpc_mul_n4,
         SBOX_13_and_0_Masked_and_hpc_mul_n3,
         SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_1_Masked_and_hpc_mul_n4,
         SBOX_13_and_1_Masked_and_hpc_mul_n3,
         SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_2_Masked_and_hpc_mul_n4,
         SBOX_13_and_2_Masked_and_hpc_mul_n3,
         SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_3_Masked_and_hpc_mul_n4,
         SBOX_13_and_3_Masked_and_hpc_mul_n3,
         SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_4_Masked_and_hpc_mul_n4,
         SBOX_13_and_4_Masked_and_hpc_mul_n3,
         SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_5_Masked_and_hpc_mul_n4,
         SBOX_13_and_5_Masked_and_hpc_mul_n3,
         SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_6_Masked_and_hpc_mul_n4,
         SBOX_13_and_6_Masked_and_hpc_mul_n3,
         SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_13_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_13_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_13_and_7_Masked_and_hpc_mul_n4,
         SBOX_13_and_7_Masked_and_hpc_mul_n3,
         SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_reg_0_s0_31, SBOX_14_reg_0_s1_31, SBOX_14_reg_0_s0_30,
         SBOX_14_reg_0_s1_30, SBOX_14_reg_0_s0_29, SBOX_14_reg_0_s1_29,
         SBOX_14_reg_0_s0_28, SBOX_14_reg_0_s1_28, SBOX_14_reg_0_s0_27,
         SBOX_14_reg_0_s1_27, SBOX_14_reg_0_s0_26, SBOX_14_reg_0_s1_26,
         SBOX_14_reg_0_s0_25, SBOX_14_reg_0_s1_25, SBOX_14_reg_0_s0_24,
         SBOX_14_reg_0_s1_24, SBOX_14_reg_0_s0_23, SBOX_14_reg_0_s1_23,
         SBOX_14_reg_0_s0_22, SBOX_14_reg_0_s1_22, SBOX_14_reg_0_s0_21,
         SBOX_14_reg_0_s1_21, SBOX_14_reg_0_s0_20, SBOX_14_reg_0_s1_20,
         SBOX_14_reg_0_s0_19, SBOX_14_reg_0_s1_19, SBOX_14_reg_0_s0_18,
         SBOX_14_reg_0_s1_18, SBOX_14_reg_0_s0_17, SBOX_14_reg_0_s1_17,
         SBOX_14_reg_0_s0_16, SBOX_14_reg_0_s1_16, SBOX_14_reg_0_s0_15,
         SBOX_14_reg_0_s1_15, SBOX_14_reg_0_s0_14, SBOX_14_reg_0_s1_14,
         SBOX_14_reg_0_s0_13, SBOX_14_reg_0_s1_13, SBOX_14_reg_0_s0_12,
         SBOX_14_reg_0_s1_12, SBOX_14_reg_0_s0_11, SBOX_14_reg_0_s1_11,
         SBOX_14_reg_0_s0_10, SBOX_14_reg_0_s1_10, SBOX_14_reg_0_s0_9,
         SBOX_14_reg_0_s1_9, SBOX_14_reg_0_s0_8, SBOX_14_reg_0_s1_8,
         SBOX_14_reg_0_s0_7, SBOX_14_reg_0_s1_7, SBOX_14_reg_0_s0_6,
         SBOX_14_reg_0_s1_6, SBOX_14_reg_0_s0_5, SBOX_14_reg_0_s1_5,
         SBOX_14_reg_0_s0_4, SBOX_14_reg_0_s1_4, SBOX_14_reg_0_s0_3,
         SBOX_14_reg_0_s1_3, SBOX_14_reg_0_s0_2, SBOX_14_reg_0_s1_2,
         SBOX_14_reg_0_s0_1, SBOX_14_reg_0_s1_1, SBOX_14_reg_0_s0,
         SBOX_14_reg_0_s1, SBOX_14__s0_2_0, SBOX_14__s0_2_1, SBOX_14__s1_2_0,
         SBOX_14__s1_2_1, SBOX_14__s0_1_0, SBOX_14__s0_1_1, SBOX_14__s1_1_0,
         SBOX_14__s1_1_1, SBOX_14__s0_0, \SBOX_14/_s0_1 , SBOX_14__s1_0,
         \SBOX_14/_s1_1 , SBOX_14_xor_5_Masked_z_0_, SBOX_14_xor_4_Masked_z_0_,
         SBOX_14_xor_3_Masked_z_0_, SBOX_14_xor_2_Masked_z_0_,
         SBOX_14_xor_1_Masked_z_0_, SBOX_14_not_3_Masked_z_0_,
         SBOX_14_not_2_Masked_z_0_, SBOX_14_xor_0_Masked_z_0_,
         SBOX_14_not_1_Masked_z_0_, SBOX_14_not_0_Masked_z_0_,
         SBOX_14_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_0_Masked_and_hpc_mul_n4,
         SBOX_14_and_0_Masked_and_hpc_mul_n3,
         SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_1_Masked_and_hpc_mul_n4,
         SBOX_14_and_1_Masked_and_hpc_mul_n3,
         SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_2_Masked_and_hpc_mul_n4,
         SBOX_14_and_2_Masked_and_hpc_mul_n3,
         SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_3_Masked_and_hpc_mul_n4,
         SBOX_14_and_3_Masked_and_hpc_mul_n3,
         SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_4_Masked_and_hpc_mul_n4,
         SBOX_14_and_4_Masked_and_hpc_mul_n3,
         SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_5_Masked_and_hpc_mul_n4,
         SBOX_14_and_5_Masked_and_hpc_mul_n3,
         SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_6_Masked_and_hpc_mul_n4,
         SBOX_14_and_6_Masked_and_hpc_mul_n3,
         SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_14_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_14_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_14_and_7_Masked_and_hpc_mul_n4,
         SBOX_14_and_7_Masked_and_hpc_mul_n3,
         SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_reg_0_s0_31, SBOX_15_reg_0_s1_31, SBOX_15_reg_0_s0_30,
         SBOX_15_reg_0_s1_30, SBOX_15_reg_0_s0_29, SBOX_15_reg_0_s1_29,
         SBOX_15_reg_0_s0_28, SBOX_15_reg_0_s1_28, SBOX_15_reg_0_s0_27,
         SBOX_15_reg_0_s1_27, SBOX_15_reg_0_s0_26, SBOX_15_reg_0_s1_26,
         SBOX_15_reg_0_s0_25, SBOX_15_reg_0_s1_25, SBOX_15_reg_0_s0_24,
         SBOX_15_reg_0_s1_24, SBOX_15_reg_0_s0_23, SBOX_15_reg_0_s1_23,
         SBOX_15_reg_0_s0_22, SBOX_15_reg_0_s1_22, SBOX_15_reg_0_s0_21,
         SBOX_15_reg_0_s1_21, SBOX_15_reg_0_s0_20, SBOX_15_reg_0_s1_20,
         SBOX_15_reg_0_s0_19, SBOX_15_reg_0_s1_19, SBOX_15_reg_0_s0_18,
         SBOX_15_reg_0_s1_18, SBOX_15_reg_0_s0_17, SBOX_15_reg_0_s1_17,
         SBOX_15_reg_0_s0_16, SBOX_15_reg_0_s1_16, SBOX_15_reg_0_s0_15,
         SBOX_15_reg_0_s1_15, SBOX_15_reg_0_s0_14, SBOX_15_reg_0_s1_14,
         SBOX_15_reg_0_s0_13, SBOX_15_reg_0_s1_13, SBOX_15_reg_0_s0_12,
         SBOX_15_reg_0_s1_12, SBOX_15_reg_0_s0_11, SBOX_15_reg_0_s1_11,
         SBOX_15_reg_0_s0_10, SBOX_15_reg_0_s1_10, SBOX_15_reg_0_s0_9,
         SBOX_15_reg_0_s1_9, SBOX_15_reg_0_s0_8, SBOX_15_reg_0_s1_8,
         SBOX_15_reg_0_s0_7, SBOX_15_reg_0_s1_7, SBOX_15_reg_0_s0_6,
         SBOX_15_reg_0_s1_6, SBOX_15_reg_0_s0_5, SBOX_15_reg_0_s1_5,
         SBOX_15_reg_0_s0_4, SBOX_15_reg_0_s1_4, SBOX_15_reg_0_s0_3,
         SBOX_15_reg_0_s1_3, SBOX_15_reg_0_s0_2, SBOX_15_reg_0_s1_2,
         SBOX_15_reg_0_s0_1, SBOX_15_reg_0_s1_1, SBOX_15_reg_0_s0,
         SBOX_15_reg_0_s1, SBOX_15__s0_2_0, SBOX_15__s0_2_1, SBOX_15__s1_2_0,
         SBOX_15__s1_2_1, SBOX_15__s0_1_0, SBOX_15__s0_1_1, SBOX_15__s1_1_0,
         SBOX_15__s1_1_1, SBOX_15__s0_0, \SBOX_15/_s0_1 , SBOX_15__s1_0,
         \SBOX_15/_s1_1 , SBOX_15_xor_5_Masked_z_0_, SBOX_15_xor_4_Masked_z_0_,
         SBOX_15_xor_3_Masked_z_0_, SBOX_15_xor_2_Masked_z_0_,
         SBOX_15_xor_1_Masked_z_0_, SBOX_15_not_3_Masked_z_0_,
         SBOX_15_not_2_Masked_z_0_, SBOX_15_xor_0_Masked_z_0_,
         SBOX_15_not_1_Masked_z_0_, SBOX_15_not_0_Masked_z_0_,
         SBOX_15_and_0_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_0_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_0_Masked_and_hpc_mul_n4,
         SBOX_15_and_0_Masked_and_hpc_mul_n3,
         SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_1_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_1_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_1_Masked_and_hpc_mul_n4,
         SBOX_15_and_1_Masked_and_hpc_mul_n3,
         SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_2_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_2_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_2_Masked_and_hpc_mul_n4,
         SBOX_15_and_2_Masked_and_hpc_mul_n3,
         SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_3_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_3_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_3_Masked_and_hpc_mul_n4,
         SBOX_15_and_3_Masked_and_hpc_mul_n3,
         SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_4_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_4_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_4_Masked_and_hpc_mul_n4,
         SBOX_15_and_4_Masked_and_hpc_mul_n3,
         SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_5_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_5_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_5_Masked_and_hpc_mul_n4,
         SBOX_15_and_5_Masked_and_hpc_mul_n3,
         SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_6_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_6_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_6_Masked_and_hpc_mul_n4,
         SBOX_15_and_6_Masked_and_hpc_mul_n3,
         SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         SBOX_15_and_7_Masked_and_hpc_rfrsh_N1,
         SBOX_15_and_7_Masked_and_hpc_rfrsh_N0,
         SBOX_15_and_7_Masked_and_hpc_mul_n4,
         SBOX_15_and_7_Masked_and_hpc_mul_n3,
         SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire,
         SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire,
         SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire,
         SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire,
         KA1_n7, KA1_n6, KA1_n5, KA1_n4, KA1_n3, KA1_n2;
  wire   [255:57] SUBSTITUTE2;
  wire   [223:0] SHIFTROWS;
  wire   [7:4] SBOX_0__s0_2;
  wire   [5:4] SBOX_0__s1_2;
  wire   [7:4] SBOX_0__s0_1;
  wire   [5:4] SBOX_0__s1_1;
  wire   [7:4] SBOX_0__s0;
  wire   [5:4] SBOX_0__s1;
  wire   [1:0] SBOX_0_xor_7_Masked_x;
  wire   [1:0] SBOX_0_and_7_Masked_z;
  wire   [1:0] SBOX_0_not_15_Masked_z;
  wire   [1:0] SBOX_0_not_14_Masked_z;
  wire   [1:0] SBOX_0_xor_6_Masked_x;
  wire   [1:0] SBOX_0_and_6_Masked_z;
  wire   [1:0] SBOX_0_not_13_Masked_z;
  wire   [1:0] SBOX_0_not_12_Masked_z;
  wire   [1:0] SBOX_0_xor_5_Masked_x;
  wire   [1:0] SBOX_0_and_5_Masked_z;
  wire   [1:0] SBOX_0_not_11_Masked_z;
  wire   [1:0] SBOX_0_not_10_Masked_z;
  wire   [1:0] SBOX_0_xor_4_Masked_x;
  wire   [1:0] SBOX_0_and_4_Masked_z;
  wire   [1:0] SBOX_0_not_9_Masked_z;
  wire   [1:0] SBOX_0_not_8_Masked_z;
  wire   [1:0] SBOX_0_xor_3_Masked_x;
  wire   [1:0] SBOX_0_and_3_Masked_z;
  wire   [1:0] SBOX_0_not_7_Masked_z;
  wire   [1:0] SBOX_0_not_6_Masked_z;
  wire   [1:0] SBOX_0_xor_2_Masked_x;
  wire   [1:0] SBOX_0_and_2_Masked_z;
  wire   [1:0] SBOX_0_not_5_Masked_z;
  wire   [1:0] SBOX_0_not_4_Masked_z;
  wire   [1:0] SBOX_0_xor_1_Masked_x;
  wire   [1:0] SBOX_0_and_1_Masked_z;
  wire   [1:0] SBOX_0_xor_0_Masked_x;
  wire   [1:0] SBOX_0_and_0_Masked_z;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_0_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_0_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_1__s0_2;
  wire   [5:4] SBOX_1__s1_2;
  wire   [7:4] SBOX_1__s0_1;
  wire   [5:4] SBOX_1__s1_1;
  wire   [7:4] SBOX_1__s0;
  wire   [5:4] SBOX_1__s1;
  wire   [1:0] SBOX_1_xor_7_Masked_x;
  wire   [1:0] SBOX_1_and_7_Masked_z;
  wire   [1:0] SBOX_1_not_15_Masked_z;
  wire   [1:0] SBOX_1_not_14_Masked_z;
  wire   [1:0] SBOX_1_xor_6_Masked_x;
  wire   [1:0] SBOX_1_and_6_Masked_z;
  wire   [1:0] SBOX_1_not_13_Masked_z;
  wire   [1:0] SBOX_1_not_12_Masked_z;
  wire   [1:0] SBOX_1_xor_5_Masked_x;
  wire   [1:0] SBOX_1_and_5_Masked_z;
  wire   [1:0] SBOX_1_not_11_Masked_z;
  wire   [1:0] SBOX_1_not_10_Masked_z;
  wire   [1:0] SBOX_1_xor_4_Masked_x;
  wire   [1:0] SBOX_1_and_4_Masked_z;
  wire   [1:0] SBOX_1_not_9_Masked_z;
  wire   [1:0] SBOX_1_not_8_Masked_z;
  wire   [1:0] SBOX_1_xor_3_Masked_x;
  wire   [1:0] SBOX_1_and_3_Masked_z;
  wire   [1:0] SBOX_1_not_7_Masked_z;
  wire   [1:0] SBOX_1_not_6_Masked_z;
  wire   [1:0] SBOX_1_xor_2_Masked_x;
  wire   [1:0] SBOX_1_and_2_Masked_z;
  wire   [1:0] SBOX_1_not_5_Masked_z;
  wire   [1:0] SBOX_1_not_4_Masked_z;
  wire   [1:0] SBOX_1_xor_1_Masked_x;
  wire   [1:0] SBOX_1_and_1_Masked_z;
  wire   [1:0] SBOX_1_xor_0_Masked_x;
  wire   [1:0] SBOX_1_and_0_Masked_z;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_1_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_1_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_2__s0_2;
  wire   [5:4] SBOX_2__s1_2;
  wire   [7:4] SBOX_2__s0_1;
  wire   [5:4] SBOX_2__s1_1;
  wire   [7:4] SBOX_2__s0;
  wire   [5:4] SBOX_2__s1;
  wire   [1:0] SBOX_2_xor_7_Masked_x;
  wire   [1:0] SBOX_2_and_7_Masked_z;
  wire   [1:0] SBOX_2_not_15_Masked_z;
  wire   [1:0] SBOX_2_not_14_Masked_z;
  wire   [1:0] SBOX_2_xor_6_Masked_x;
  wire   [1:0] SBOX_2_and_6_Masked_z;
  wire   [1:0] SBOX_2_not_13_Masked_z;
  wire   [1:0] SBOX_2_not_12_Masked_z;
  wire   [1:0] SBOX_2_xor_5_Masked_x;
  wire   [1:0] SBOX_2_and_5_Masked_z;
  wire   [1:0] SBOX_2_not_11_Masked_z;
  wire   [1:0] SBOX_2_not_10_Masked_z;
  wire   [1:0] SBOX_2_xor_4_Masked_x;
  wire   [1:0] SBOX_2_and_4_Masked_z;
  wire   [1:0] SBOX_2_not_9_Masked_z;
  wire   [1:0] SBOX_2_not_8_Masked_z;
  wire   [1:0] SBOX_2_xor_3_Masked_x;
  wire   [1:0] SBOX_2_and_3_Masked_z;
  wire   [1:0] SBOX_2_not_7_Masked_z;
  wire   [1:0] SBOX_2_not_6_Masked_z;
  wire   [1:0] SBOX_2_xor_2_Masked_x;
  wire   [1:0] SBOX_2_and_2_Masked_z;
  wire   [1:0] SBOX_2_not_5_Masked_z;
  wire   [1:0] SBOX_2_not_4_Masked_z;
  wire   [1:0] SBOX_2_xor_1_Masked_x;
  wire   [1:0] SBOX_2_and_1_Masked_z;
  wire   [1:0] SBOX_2_xor_0_Masked_x;
  wire   [1:0] SBOX_2_and_0_Masked_z;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_2_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_2_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_3__s0_2;
  wire   [5:4] SBOX_3__s1_2;
  wire   [7:4] SBOX_3__s0_1;
  wire   [5:4] SBOX_3__s1_1;
  wire   [7:4] SBOX_3__s0;
  wire   [5:4] SBOX_3__s1;
  wire   [1:0] SBOX_3_xor_7_Masked_x;
  wire   [1:0] SBOX_3_and_7_Masked_z;
  wire   [1:0] SBOX_3_not_15_Masked_z;
  wire   [1:0] SBOX_3_not_14_Masked_z;
  wire   [1:0] SBOX_3_xor_6_Masked_x;
  wire   [1:0] SBOX_3_and_6_Masked_z;
  wire   [1:0] SBOX_3_not_13_Masked_z;
  wire   [1:0] SBOX_3_not_12_Masked_z;
  wire   [1:0] SBOX_3_xor_5_Masked_x;
  wire   [1:0] SBOX_3_and_5_Masked_z;
  wire   [1:0] SBOX_3_not_11_Masked_z;
  wire   [1:0] SBOX_3_not_10_Masked_z;
  wire   [1:0] SBOX_3_xor_4_Masked_x;
  wire   [1:0] SBOX_3_and_4_Masked_z;
  wire   [1:0] SBOX_3_not_9_Masked_z;
  wire   [1:0] SBOX_3_not_8_Masked_z;
  wire   [1:0] SBOX_3_xor_3_Masked_x;
  wire   [1:0] SBOX_3_and_3_Masked_z;
  wire   [1:0] SBOX_3_not_7_Masked_z;
  wire   [1:0] SBOX_3_not_6_Masked_z;
  wire   [1:0] SBOX_3_xor_2_Masked_x;
  wire   [1:0] SBOX_3_and_2_Masked_z;
  wire   [1:0] SBOX_3_not_5_Masked_z;
  wire   [1:0] SBOX_3_not_4_Masked_z;
  wire   [1:0] SBOX_3_xor_1_Masked_x;
  wire   [1:0] SBOX_3_and_1_Masked_z;
  wire   [1:0] SBOX_3_xor_0_Masked_x;
  wire   [1:0] SBOX_3_and_0_Masked_z;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_3_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_3_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_4__s0_2;
  wire   [5:4] SBOX_4__s1_2;
  wire   [7:4] SBOX_4__s0_1;
  wire   [5:4] SBOX_4__s1_1;
  wire   [7:4] SBOX_4__s0;
  wire   [5:4] SBOX_4__s1;
  wire   [1:0] SBOX_4_xor_7_Masked_x;
  wire   [1:0] SBOX_4_and_7_Masked_z;
  wire   [1:0] SBOX_4_not_15_Masked_z;
  wire   [1:0] SBOX_4_not_14_Masked_z;
  wire   [1:0] SBOX_4_xor_6_Masked_x;
  wire   [1:0] SBOX_4_and_6_Masked_z;
  wire   [1:0] SBOX_4_not_13_Masked_z;
  wire   [1:0] SBOX_4_not_12_Masked_z;
  wire   [1:0] SBOX_4_xor_5_Masked_x;
  wire   [1:0] SBOX_4_and_5_Masked_z;
  wire   [1:0] SBOX_4_not_11_Masked_z;
  wire   [1:0] SBOX_4_not_10_Masked_z;
  wire   [1:0] SBOX_4_xor_4_Masked_x;
  wire   [1:0] SBOX_4_and_4_Masked_z;
  wire   [1:0] SBOX_4_not_9_Masked_z;
  wire   [1:0] SBOX_4_not_8_Masked_z;
  wire   [1:0] SBOX_4_xor_3_Masked_x;
  wire   [1:0] SBOX_4_and_3_Masked_z;
  wire   [1:0] SBOX_4_not_7_Masked_z;
  wire   [1:0] SBOX_4_not_6_Masked_z;
  wire   [1:0] SBOX_4_xor_2_Masked_x;
  wire   [1:0] SBOX_4_and_2_Masked_z;
  wire   [1:0] SBOX_4_not_5_Masked_z;
  wire   [1:0] SBOX_4_not_4_Masked_z;
  wire   [1:0] SBOX_4_xor_1_Masked_x;
  wire   [1:0] SBOX_4_and_1_Masked_z;
  wire   [1:0] SBOX_4_xor_0_Masked_x;
  wire   [1:0] SBOX_4_and_0_Masked_z;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_4_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_4_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_5__s0_2;
  wire   [5:4] SBOX_5__s1_2;
  wire   [7:4] SBOX_5__s0_1;
  wire   [5:4] SBOX_5__s1_1;
  wire   [7:4] SBOX_5__s0;
  wire   [5:4] SBOX_5__s1;
  wire   [1:0] SBOX_5_xor_7_Masked_x;
  wire   [1:0] SBOX_5_and_7_Masked_z;
  wire   [1:0] SBOX_5_not_15_Masked_z;
  wire   [1:0] SBOX_5_not_14_Masked_z;
  wire   [1:0] SBOX_5_xor_6_Masked_x;
  wire   [1:0] SBOX_5_and_6_Masked_z;
  wire   [1:0] SBOX_5_not_13_Masked_z;
  wire   [1:0] SBOX_5_not_12_Masked_z;
  wire   [1:0] SBOX_5_xor_5_Masked_x;
  wire   [1:0] SBOX_5_and_5_Masked_z;
  wire   [1:0] SBOX_5_not_11_Masked_z;
  wire   [1:0] SBOX_5_not_10_Masked_z;
  wire   [1:0] SBOX_5_xor_4_Masked_x;
  wire   [1:0] SBOX_5_and_4_Masked_z;
  wire   [1:0] SBOX_5_not_9_Masked_z;
  wire   [1:0] SBOX_5_not_8_Masked_z;
  wire   [1:0] SBOX_5_xor_3_Masked_x;
  wire   [1:0] SBOX_5_and_3_Masked_z;
  wire   [1:0] SBOX_5_not_7_Masked_z;
  wire   [1:0] SBOX_5_not_6_Masked_z;
  wire   [1:0] SBOX_5_xor_2_Masked_x;
  wire   [1:0] SBOX_5_and_2_Masked_z;
  wire   [1:0] SBOX_5_not_5_Masked_z;
  wire   [1:0] SBOX_5_not_4_Masked_z;
  wire   [1:0] SBOX_5_xor_1_Masked_x;
  wire   [1:0] SBOX_5_and_1_Masked_z;
  wire   [1:0] SBOX_5_xor_0_Masked_x;
  wire   [1:0] SBOX_5_and_0_Masked_z;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_5_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_5_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_6__s0_2;
  wire   [5:4] SBOX_6__s1_2;
  wire   [7:4] SBOX_6__s0_1;
  wire   [5:4] SBOX_6__s1_1;
  wire   [7:4] SBOX_6__s0;
  wire   [5:4] SBOX_6__s1;
  wire   [1:0] SBOX_6_xor_7_Masked_x;
  wire   [1:0] SBOX_6_and_7_Masked_z;
  wire   [1:0] SBOX_6_not_15_Masked_z;
  wire   [1:0] SBOX_6_not_14_Masked_z;
  wire   [1:0] SBOX_6_xor_6_Masked_x;
  wire   [1:0] SBOX_6_and_6_Masked_z;
  wire   [1:0] SBOX_6_not_13_Masked_z;
  wire   [1:0] SBOX_6_not_12_Masked_z;
  wire   [1:0] SBOX_6_xor_5_Masked_x;
  wire   [1:0] SBOX_6_and_5_Masked_z;
  wire   [1:0] SBOX_6_not_11_Masked_z;
  wire   [1:0] SBOX_6_not_10_Masked_z;
  wire   [1:0] SBOX_6_xor_4_Masked_x;
  wire   [1:0] SBOX_6_and_4_Masked_z;
  wire   [1:0] SBOX_6_not_9_Masked_z;
  wire   [1:0] SBOX_6_not_8_Masked_z;
  wire   [1:0] SBOX_6_xor_3_Masked_x;
  wire   [1:0] SBOX_6_and_3_Masked_z;
  wire   [1:0] SBOX_6_not_7_Masked_z;
  wire   [1:0] SBOX_6_not_6_Masked_z;
  wire   [1:0] SBOX_6_xor_2_Masked_x;
  wire   [1:0] SBOX_6_and_2_Masked_z;
  wire   [1:0] SBOX_6_not_5_Masked_z;
  wire   [1:0] SBOX_6_not_4_Masked_z;
  wire   [1:0] SBOX_6_xor_1_Masked_x;
  wire   [1:0] SBOX_6_and_1_Masked_z;
  wire   [1:0] SBOX_6_xor_0_Masked_x;
  wire   [1:0] SBOX_6_and_0_Masked_z;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_6_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_6_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_7__s0_2;
  wire   [5:4] SBOX_7__s1_2;
  wire   [7:4] SBOX_7__s0_1;
  wire   [5:4] SBOX_7__s1_1;
  wire   [7:4] SBOX_7__s0;
  wire   [5:4] SBOX_7__s1;
  wire   [1:0] SBOX_7_xor_7_Masked_x;
  wire   [1:0] SBOX_7_and_7_Masked_z;
  wire   [1:0] SBOX_7_not_15_Masked_z;
  wire   [1:0] SBOX_7_not_14_Masked_z;
  wire   [1:0] SBOX_7_xor_6_Masked_x;
  wire   [1:0] SBOX_7_and_6_Masked_z;
  wire   [1:0] SBOX_7_not_13_Masked_z;
  wire   [1:0] SBOX_7_not_12_Masked_z;
  wire   [1:0] SBOX_7_xor_5_Masked_x;
  wire   [1:0] SBOX_7_and_5_Masked_z;
  wire   [1:0] SBOX_7_not_11_Masked_z;
  wire   [1:0] SBOX_7_not_10_Masked_z;
  wire   [1:0] SBOX_7_xor_4_Masked_x;
  wire   [1:0] SBOX_7_and_4_Masked_z;
  wire   [1:0] SBOX_7_not_9_Masked_z;
  wire   [1:0] SBOX_7_not_8_Masked_z;
  wire   [1:0] SBOX_7_xor_3_Masked_x;
  wire   [1:0] SBOX_7_and_3_Masked_z;
  wire   [1:0] SBOX_7_not_7_Masked_z;
  wire   [1:0] SBOX_7_not_6_Masked_z;
  wire   [1:0] SBOX_7_xor_2_Masked_x;
  wire   [1:0] SBOX_7_and_2_Masked_z;
  wire   [1:0] SBOX_7_not_5_Masked_z;
  wire   [1:0] SBOX_7_not_4_Masked_z;
  wire   [1:0] SBOX_7_xor_1_Masked_x;
  wire   [1:0] SBOX_7_and_1_Masked_z;
  wire   [1:0] SBOX_7_xor_0_Masked_x;
  wire   [1:0] SBOX_7_and_0_Masked_z;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_7_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_7_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_8__s0_2;
  wire   [5:4] SBOX_8__s1_2;
  wire   [7:4] SBOX_8__s0_1;
  wire   [5:4] SBOX_8__s1_1;
  wire   [7:4] SBOX_8__s0;
  wire   [5:4] SBOX_8__s1;
  wire   [1:0] SBOX_8_xor_7_Masked_x;
  wire   [1:0] SBOX_8_and_7_Masked_z;
  wire   [1:0] SBOX_8_not_15_Masked_z;
  wire   [1:0] SBOX_8_not_14_Masked_z;
  wire   [1:0] SBOX_8_xor_6_Masked_x;
  wire   [1:0] SBOX_8_and_6_Masked_z;
  wire   [1:0] SBOX_8_not_13_Masked_z;
  wire   [1:0] SBOX_8_not_12_Masked_z;
  wire   [1:0] SBOX_8_xor_5_Masked_x;
  wire   [1:0] SBOX_8_and_5_Masked_z;
  wire   [1:0] SBOX_8_not_11_Masked_z;
  wire   [1:0] SBOX_8_not_10_Masked_z;
  wire   [1:0] SBOX_8_xor_4_Masked_x;
  wire   [1:0] SBOX_8_and_4_Masked_z;
  wire   [1:0] SBOX_8_not_9_Masked_z;
  wire   [1:0] SBOX_8_not_8_Masked_z;
  wire   [1:0] SBOX_8_xor_3_Masked_x;
  wire   [1:0] SBOX_8_and_3_Masked_z;
  wire   [1:0] SBOX_8_not_7_Masked_z;
  wire   [1:0] SBOX_8_not_6_Masked_z;
  wire   [1:0] SBOX_8_xor_2_Masked_x;
  wire   [1:0] SBOX_8_and_2_Masked_z;
  wire   [1:0] SBOX_8_not_5_Masked_z;
  wire   [1:0] SBOX_8_not_4_Masked_z;
  wire   [1:0] SBOX_8_xor_1_Masked_x;
  wire   [1:0] SBOX_8_and_1_Masked_z;
  wire   [1:0] SBOX_8_xor_0_Masked_x;
  wire   [1:0] SBOX_8_and_0_Masked_z;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_8_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_8_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_9__s0_2;
  wire   [5:4] SBOX_9__s1_2;
  wire   [7:4] SBOX_9__s0_1;
  wire   [5:4] SBOX_9__s1_1;
  wire   [7:4] SBOX_9__s0;
  wire   [5:4] SBOX_9__s1;
  wire   [1:0] SBOX_9_xor_7_Masked_x;
  wire   [1:0] SBOX_9_and_7_Masked_z;
  wire   [1:0] SBOX_9_not_15_Masked_z;
  wire   [1:0] SBOX_9_not_14_Masked_z;
  wire   [1:0] SBOX_9_xor_6_Masked_x;
  wire   [1:0] SBOX_9_and_6_Masked_z;
  wire   [1:0] SBOX_9_not_13_Masked_z;
  wire   [1:0] SBOX_9_not_12_Masked_z;
  wire   [1:0] SBOX_9_xor_5_Masked_x;
  wire   [1:0] SBOX_9_and_5_Masked_z;
  wire   [1:0] SBOX_9_not_11_Masked_z;
  wire   [1:0] SBOX_9_not_10_Masked_z;
  wire   [1:0] SBOX_9_xor_4_Masked_x;
  wire   [1:0] SBOX_9_and_4_Masked_z;
  wire   [1:0] SBOX_9_not_9_Masked_z;
  wire   [1:0] SBOX_9_not_8_Masked_z;
  wire   [1:0] SBOX_9_xor_3_Masked_x;
  wire   [1:0] SBOX_9_and_3_Masked_z;
  wire   [1:0] SBOX_9_not_7_Masked_z;
  wire   [1:0] SBOX_9_not_6_Masked_z;
  wire   [1:0] SBOX_9_xor_2_Masked_x;
  wire   [1:0] SBOX_9_and_2_Masked_z;
  wire   [1:0] SBOX_9_not_5_Masked_z;
  wire   [1:0] SBOX_9_not_4_Masked_z;
  wire   [1:0] SBOX_9_xor_1_Masked_x;
  wire   [1:0] SBOX_9_and_1_Masked_z;
  wire   [1:0] SBOX_9_xor_0_Masked_x;
  wire   [1:0] SBOX_9_and_0_Masked_z;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_9_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_9_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_10__s0_2;
  wire   [5:4] SBOX_10__s1_2;
  wire   [7:4] SBOX_10__s0_1;
  wire   [5:4] SBOX_10__s1_1;
  wire   [7:4] SBOX_10__s0;
  wire   [5:4] SBOX_10__s1;
  wire   [1:0] SBOX_10_xor_7_Masked_x;
  wire   [1:0] SBOX_10_and_7_Masked_z;
  wire   [1:0] SBOX_10_not_15_Masked_z;
  wire   [1:0] SBOX_10_not_14_Masked_z;
  wire   [1:0] SBOX_10_xor_6_Masked_x;
  wire   [1:0] SBOX_10_and_6_Masked_z;
  wire   [1:0] SBOX_10_not_13_Masked_z;
  wire   [1:0] SBOX_10_not_12_Masked_z;
  wire   [1:0] SBOX_10_xor_5_Masked_x;
  wire   [1:0] SBOX_10_and_5_Masked_z;
  wire   [1:0] SBOX_10_not_11_Masked_z;
  wire   [1:0] SBOX_10_not_10_Masked_z;
  wire   [1:0] SBOX_10_xor_4_Masked_x;
  wire   [1:0] SBOX_10_and_4_Masked_z;
  wire   [1:0] SBOX_10_not_9_Masked_z;
  wire   [1:0] SBOX_10_not_8_Masked_z;
  wire   [1:0] SBOX_10_xor_3_Masked_x;
  wire   [1:0] SBOX_10_and_3_Masked_z;
  wire   [1:0] SBOX_10_not_7_Masked_z;
  wire   [1:0] SBOX_10_not_6_Masked_z;
  wire   [1:0] SBOX_10_xor_2_Masked_x;
  wire   [1:0] SBOX_10_and_2_Masked_z;
  wire   [1:0] SBOX_10_not_5_Masked_z;
  wire   [1:0] SBOX_10_not_4_Masked_z;
  wire   [1:0] SBOX_10_xor_1_Masked_x;
  wire   [1:0] SBOX_10_and_1_Masked_z;
  wire   [1:0] SBOX_10_xor_0_Masked_x;
  wire   [1:0] SBOX_10_and_0_Masked_z;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_10_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_10_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_11__s0_2;
  wire   [5:4] SBOX_11__s1_2;
  wire   [7:4] SBOX_11__s0_1;
  wire   [5:4] SBOX_11__s1_1;
  wire   [7:4] SBOX_11__s0;
  wire   [5:4] SBOX_11__s1;
  wire   [1:0] SBOX_11_xor_7_Masked_x;
  wire   [1:0] SBOX_11_and_7_Masked_z;
  wire   [1:0] SBOX_11_not_15_Masked_z;
  wire   [1:0] SBOX_11_not_14_Masked_z;
  wire   [1:0] SBOX_11_xor_6_Masked_x;
  wire   [1:0] SBOX_11_and_6_Masked_z;
  wire   [1:0] SBOX_11_not_13_Masked_z;
  wire   [1:0] SBOX_11_not_12_Masked_z;
  wire   [1:0] SBOX_11_xor_5_Masked_x;
  wire   [1:0] SBOX_11_and_5_Masked_z;
  wire   [1:0] SBOX_11_not_11_Masked_z;
  wire   [1:0] SBOX_11_not_10_Masked_z;
  wire   [1:0] SBOX_11_xor_4_Masked_x;
  wire   [1:0] SBOX_11_and_4_Masked_z;
  wire   [1:0] SBOX_11_not_9_Masked_z;
  wire   [1:0] SBOX_11_not_8_Masked_z;
  wire   [1:0] SBOX_11_xor_3_Masked_x;
  wire   [1:0] SBOX_11_and_3_Masked_z;
  wire   [1:0] SBOX_11_not_7_Masked_z;
  wire   [1:0] SBOX_11_not_6_Masked_z;
  wire   [1:0] SBOX_11_xor_2_Masked_x;
  wire   [1:0] SBOX_11_and_2_Masked_z;
  wire   [1:0] SBOX_11_not_5_Masked_z;
  wire   [1:0] SBOX_11_not_4_Masked_z;
  wire   [1:0] SBOX_11_xor_1_Masked_x;
  wire   [1:0] SBOX_11_and_1_Masked_z;
  wire   [1:0] SBOX_11_xor_0_Masked_x;
  wire   [1:0] SBOX_11_and_0_Masked_z;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_11_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_11_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_12__s0_2;
  wire   [5:4] SBOX_12__s1_2;
  wire   [7:4] SBOX_12__s0_1;
  wire   [5:4] SBOX_12__s1_1;
  wire   [7:4] SBOX_12__s0;
  wire   [5:4] SBOX_12__s1;
  wire   [1:0] SBOX_12_xor_7_Masked_x;
  wire   [1:0] SBOX_12_and_7_Masked_z;
  wire   [1:0] SBOX_12_not_15_Masked_z;
  wire   [1:0] SBOX_12_not_14_Masked_z;
  wire   [1:0] SBOX_12_xor_6_Masked_x;
  wire   [1:0] SBOX_12_and_6_Masked_z;
  wire   [1:0] SBOX_12_not_13_Masked_z;
  wire   [1:0] SBOX_12_not_12_Masked_z;
  wire   [1:0] SBOX_12_xor_5_Masked_x;
  wire   [1:0] SBOX_12_and_5_Masked_z;
  wire   [1:0] SBOX_12_not_11_Masked_z;
  wire   [1:0] SBOX_12_not_10_Masked_z;
  wire   [1:0] SBOX_12_xor_4_Masked_x;
  wire   [1:0] SBOX_12_and_4_Masked_z;
  wire   [1:0] SBOX_12_not_9_Masked_z;
  wire   [1:0] SBOX_12_not_8_Masked_z;
  wire   [1:0] SBOX_12_xor_3_Masked_x;
  wire   [1:0] SBOX_12_and_3_Masked_z;
  wire   [1:0] SBOX_12_not_7_Masked_z;
  wire   [1:0] SBOX_12_not_6_Masked_z;
  wire   [1:0] SBOX_12_xor_2_Masked_x;
  wire   [1:0] SBOX_12_and_2_Masked_z;
  wire   [1:0] SBOX_12_not_5_Masked_z;
  wire   [1:0] SBOX_12_not_4_Masked_z;
  wire   [1:0] SBOX_12_xor_1_Masked_x;
  wire   [1:0] SBOX_12_and_1_Masked_z;
  wire   [1:0] SBOX_12_xor_0_Masked_x;
  wire   [1:0] SBOX_12_and_0_Masked_z;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_12_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_12_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_13__s0_2;
  wire   [5:4] SBOX_13__s1_2;
  wire   [7:4] SBOX_13__s0_1;
  wire   [5:4] SBOX_13__s1_1;
  wire   [7:4] SBOX_13__s0;
  wire   [5:4] SBOX_13__s1;
  wire   [1:0] SBOX_13_xor_7_Masked_x;
  wire   [1:0] SBOX_13_and_7_Masked_z;
  wire   [1:0] SBOX_13_not_15_Masked_z;
  wire   [1:0] SBOX_13_not_14_Masked_z;
  wire   [1:0] SBOX_13_xor_6_Masked_x;
  wire   [1:0] SBOX_13_and_6_Masked_z;
  wire   [1:0] SBOX_13_not_13_Masked_z;
  wire   [1:0] SBOX_13_not_12_Masked_z;
  wire   [1:0] SBOX_13_xor_5_Masked_x;
  wire   [1:0] SBOX_13_and_5_Masked_z;
  wire   [1:0] SBOX_13_not_11_Masked_z;
  wire   [1:0] SBOX_13_not_10_Masked_z;
  wire   [1:0] SBOX_13_xor_4_Masked_x;
  wire   [1:0] SBOX_13_and_4_Masked_z;
  wire   [1:0] SBOX_13_not_9_Masked_z;
  wire   [1:0] SBOX_13_not_8_Masked_z;
  wire   [1:0] SBOX_13_xor_3_Masked_x;
  wire   [1:0] SBOX_13_and_3_Masked_z;
  wire   [1:0] SBOX_13_not_7_Masked_z;
  wire   [1:0] SBOX_13_not_6_Masked_z;
  wire   [1:0] SBOX_13_xor_2_Masked_x;
  wire   [1:0] SBOX_13_and_2_Masked_z;
  wire   [1:0] SBOX_13_not_5_Masked_z;
  wire   [1:0] SBOX_13_not_4_Masked_z;
  wire   [1:0] SBOX_13_xor_1_Masked_x;
  wire   [1:0] SBOX_13_and_1_Masked_z;
  wire   [1:0] SBOX_13_xor_0_Masked_x;
  wire   [1:0] SBOX_13_and_0_Masked_z;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_13_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_13_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_14__s0_2;
  wire   [5:4] SBOX_14__s1_2;
  wire   [7:4] SBOX_14__s0_1;
  wire   [5:4] SBOX_14__s1_1;
  wire   [7:4] SBOX_14__s0;
  wire   [5:4] SBOX_14__s1;
  wire   [1:0] SBOX_14_xor_7_Masked_x;
  wire   [1:0] SBOX_14_and_7_Masked_z;
  wire   [1:0] SBOX_14_not_15_Masked_z;
  wire   [1:0] SBOX_14_not_14_Masked_z;
  wire   [1:0] SBOX_14_xor_6_Masked_x;
  wire   [1:0] SBOX_14_and_6_Masked_z;
  wire   [1:0] SBOX_14_not_13_Masked_z;
  wire   [1:0] SBOX_14_not_12_Masked_z;
  wire   [1:0] SBOX_14_xor_5_Masked_x;
  wire   [1:0] SBOX_14_and_5_Masked_z;
  wire   [1:0] SBOX_14_not_11_Masked_z;
  wire   [1:0] SBOX_14_not_10_Masked_z;
  wire   [1:0] SBOX_14_xor_4_Masked_x;
  wire   [1:0] SBOX_14_and_4_Masked_z;
  wire   [1:0] SBOX_14_not_9_Masked_z;
  wire   [1:0] SBOX_14_not_8_Masked_z;
  wire   [1:0] SBOX_14_xor_3_Masked_x;
  wire   [1:0] SBOX_14_and_3_Masked_z;
  wire   [1:0] SBOX_14_not_7_Masked_z;
  wire   [1:0] SBOX_14_not_6_Masked_z;
  wire   [1:0] SBOX_14_xor_2_Masked_x;
  wire   [1:0] SBOX_14_and_2_Masked_z;
  wire   [1:0] SBOX_14_not_5_Masked_z;
  wire   [1:0] SBOX_14_not_4_Masked_z;
  wire   [1:0] SBOX_14_xor_1_Masked_x;
  wire   [1:0] SBOX_14_and_1_Masked_z;
  wire   [1:0] SBOX_14_xor_0_Masked_x;
  wire   [1:0] SBOX_14_and_0_Masked_z;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_14_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_14_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [7:4] SBOX_15__s0_2;
  wire   [5:4] SBOX_15__s1_2;
  wire   [7:4] SBOX_15__s0_1;
  wire   [5:4] SBOX_15__s1_1;
  wire   [7:4] SBOX_15__s0;
  wire   [5:4] SBOX_15__s1;
  wire   [1:0] SBOX_15_xor_7_Masked_x;
  wire   [1:0] SBOX_15_and_7_Masked_z;
  wire   [1:0] SBOX_15_not_15_Masked_z;
  wire   [1:0] SBOX_15_not_14_Masked_z;
  wire   [1:0] SBOX_15_xor_6_Masked_x;
  wire   [1:0] SBOX_15_and_6_Masked_z;
  wire   [1:0] SBOX_15_not_13_Masked_z;
  wire   [1:0] SBOX_15_not_12_Masked_z;
  wire   [1:0] SBOX_15_xor_5_Masked_x;
  wire   [1:0] SBOX_15_and_5_Masked_z;
  wire   [1:0] SBOX_15_not_11_Masked_z;
  wire   [1:0] SBOX_15_not_10_Masked_z;
  wire   [1:0] SBOX_15_xor_4_Masked_x;
  wire   [1:0] SBOX_15_and_4_Masked_z;
  wire   [1:0] SBOX_15_not_9_Masked_z;
  wire   [1:0] SBOX_15_not_8_Masked_z;
  wire   [1:0] SBOX_15_xor_3_Masked_x;
  wire   [1:0] SBOX_15_and_3_Masked_z;
  wire   [1:0] SBOX_15_not_7_Masked_z;
  wire   [1:0] SBOX_15_not_6_Masked_z;
  wire   [1:0] SBOX_15_xor_2_Masked_x;
  wire   [1:0] SBOX_15_and_2_Masked_z;
  wire   [1:0] SBOX_15_not_5_Masked_z;
  wire   [1:0] SBOX_15_not_4_Masked_z;
  wire   [1:0] SBOX_15_xor_1_Masked_x;
  wire   [1:0] SBOX_15_and_1_Masked_z;
  wire   [1:0] SBOX_15_xor_0_Masked_x;
  wire   [1:0] SBOX_15_and_0_Masked_z;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_4_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_4_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_5_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_5_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_6_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_6_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;
  wire   [1:0] SBOX_15_and_7_Masked_and_hpc_inb_ref;
  wire   [1:0] SBOX_15_and_7_Masked_and_hpc_ina_delay;
  wire   [1:0] SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg;
  wire   [1:0] SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg;

  DFF_X1 SBOX_0_reg_1_s0_31_reg ( .D(SBOX_0_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_0_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_31_reg ( .D(SBOX_0_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_0_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_30_reg ( .D(SBOX_0_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[9]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_30_reg ( .D(SBOX_0_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[137]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_29_reg ( .D(SBOX_0_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[10]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_29_reg ( .D(SBOX_0_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[138]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_28_reg ( .D(SBOX_0_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[11]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_28_reg ( .D(SBOX_0_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[139]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_27_reg ( .D(SBOX_0_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_0_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_27_reg ( .D(SBOX_0_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_0_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_26_reg ( .D(SBOX_0_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[13]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_26_reg ( .D(SBOX_0_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[141]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_25_reg ( .D(SBOX_0_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[14]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_25_reg ( .D(SBOX_0_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[142]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_24_reg ( .D(SBOX_0_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[15]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_24_reg ( .D(SBOX_0_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[143]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_31_reg ( .D(SBOX_0__s0_2_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_23_reg ( .D(SBOX_0_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_0__s0_2_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_31_reg ( .D(SBOX_0__s1_2_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_23_reg ( .D(SBOX_0_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_0__s1_2_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_29_reg ( .D(SBOX_0__s0_2_1), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_22_reg ( .D(SBOX_0_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_0__s0_2_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_29_reg ( .D(SBOX_0__s1_2_1), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_22_reg ( .D(SBOX_0_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_0__s1_2_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_30_reg ( .D(SBOX_0_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_30_reg ( .D(SBOX_0_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_21_reg ( .D(SBOX_0_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_0_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_21_reg ( .D(SBOX_0_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_0_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_28_reg ( .D(SBOX_0_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_28_reg ( .D(SBOX_0_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_20_reg ( .D(SBOX_0_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_0_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_20_reg ( .D(SBOX_0_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_0_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_27_reg ( .D(SBOX_0__s0_2[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_19_reg ( .D(SBOX_0_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_0__s0_2[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_27_reg ( .D(SBOX_0__s1_2[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_19_reg ( .D(SBOX_0_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_0__s1_2[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_26_reg ( .D(SBOX_0__s0_2[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_18_reg ( .D(SBOX_0_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_0__s0_2[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_26_reg ( .D(SBOX_0__s1_2[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_18_reg ( .D(SBOX_0_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_0__s1_2[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_25_reg ( .D(SBOX_0__s0_2[6]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_17_reg ( .D(SBOX_0_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_0__s0_2[6]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_25_reg ( .D(SBOX_0_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_17_reg ( .D(SBOX_0_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_0_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_24_reg ( .D(SBOX_0__s0_2[7]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_16_reg ( .D(SBOX_0_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_0__s0_2[7]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_24_reg ( .D(SBOX_0_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_16_reg ( .D(SBOX_0_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_0_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_21_reg ( .D(SBOX_0__s0_1_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_15_reg ( .D(SBOX_0_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_0__s0_1_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_21_reg ( .D(SBOX_0__s1_1_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_15_reg ( .D(SBOX_0_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_0__s1_1_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_17_reg ( .D(SBOX_0__s0_1_1), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_14_reg ( .D(SBOX_0_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_0__s0_1_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_17_reg ( .D(SBOX_0__s1_1_1), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_14_reg ( .D(SBOX_0_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_0__s1_1_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_16_reg ( .D(SBOX_0_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_16_reg ( .D(SBOX_0_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_13_reg ( .D(SBOX_0_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_0_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_13_reg ( .D(SBOX_0_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_0_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_22_reg ( .D(SBOX_0_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_22_reg ( .D(SBOX_0_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_12_reg ( .D(SBOX_0_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_0_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_12_reg ( .D(SBOX_0_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_0_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_20_reg ( .D(SBOX_0__s0_1[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_11_reg ( .D(SBOX_0_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_0__s0_1[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_20_reg ( .D(SBOX_0__s1_1[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_11_reg ( .D(SBOX_0_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_0__s1_1[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_23_reg ( .D(SBOX_0__s0_1[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_10_reg ( .D(SBOX_0_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_0__s0_1[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_23_reg ( .D(SBOX_0__s1_1[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_10_reg ( .D(SBOX_0_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_0__s1_1[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_19_reg ( .D(SBOX_0__s0_1[6]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_9_reg ( .D(SBOX_0_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_0__s0_1[6]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_19_reg ( .D(SBOX_0_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_9_reg ( .D(SBOX_0_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_0_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_18_reg ( .D(SBOX_0__s0_1[7]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_8_reg ( .D(SBOX_0_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_0__s0_1[7]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_18_reg ( .D(SBOX_0_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_8_reg ( .D(SBOX_0_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_0_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_13_reg ( .D(SBOX_0__s0_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_7_reg ( .D(SBOX_0_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_0__s0_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_13_reg ( .D(SBOX_0__s1_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_7_reg ( .D(SBOX_0_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_0__s1_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_9_reg ( .D(\SBOX_0/_s0_1 ), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_6_reg ( .D(SBOX_0_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_0/_s0_1 ), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_9_reg ( .D(\SBOX_0/_s1_1 ), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_6_reg ( .D(SBOX_0_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_0/_s1_1 ), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_8_reg ( .D(SBOX_0_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_8_reg ( .D(SBOX_0_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_5_reg ( .D(SBOX_0_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_0_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_5_reg ( .D(SBOX_0_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_0_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_14_reg ( .D(SBOX_0_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_14_reg ( .D(SBOX_0_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_4_reg ( .D(SBOX_0_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_0_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_4_reg ( .D(SBOX_0_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_0_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_12_reg ( .D(SBOX_0__s0[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_3_reg ( .D(SBOX_0_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_0__s0[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_12_reg ( .D(SBOX_0__s1[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_3_reg ( .D(SBOX_0_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_0__s1[4]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_15_reg ( .D(SBOX_0__s0[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_2_reg ( .D(SBOX_0_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_0__s0[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_15_reg ( .D(SBOX_0__s1[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_2_reg ( .D(SBOX_0_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_0__s1[5]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_11_reg ( .D(SBOX_0__s0[6]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_1_reg ( .D(SBOX_0_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_0__s0[6]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_11_reg ( .D(SBOX_0_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_1_reg ( .D(SBOX_0_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_0_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_10_reg ( .D(SBOX_0__s0[7]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_reg ( .D(SBOX_0_reg_0_s0), .CK(CLK), .Q(SBOX_0__s0[7]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_10_reg ( .D(SBOX_0_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_reg ( .D(SBOX_0_reg_0_s1), .CK(CLK), .Q(
        SBOX_0_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_4_reg ( .D(SHARE2_IN[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_4_reg ( .D(SHARE1_IN[4]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_5_reg ( .D(SHARE2_IN[0]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_5_reg ( .D(SHARE1_IN[0]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_6_reg ( .D(SHARE2_IN[3]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_6_reg ( .D(SHARE1_IN[3]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_7_reg ( .D(SHARE2_IN[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_3_reg ( .D(SHARE1_IN[6]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_7_reg ( .D(SHARE1_IN[5]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_3_reg ( .D(SHARE2_IN[6]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_2_reg ( .D(SHARE1_IN[7]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_2_reg ( .D(SHARE2_IN[7]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_1_reg ( .D(SHARE1_IN[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_1_reg ( .D(SHARE2_IN[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_reg ( .D(SHARE1_IN[2]), .CK(CLK), .Q(SBOX_0_reg_0_s0), 
        .QN() );
  DFF_X1 SBOX_0_reg_0_s1_reg ( .D(SHARE2_IN[2]), .CK(CLK), .Q(SBOX_0_reg_0_s1), 
        .QN() );
  INV_X1 SBOX_0_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[7]), .ZN(
        SBOX_0_not_0_Masked_z_0_) );
  INV_X1 SBOX_0_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[6]), .ZN(
        SBOX_0_not_1_Masked_z_0_) );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[7]), .CK(
        CLK), .Q(SBOX_0_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[0]), .B(SHARE2_IN[6]), 
        .Z(SBOX_0_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[0]), .B(
        SBOX_0_not_1_Masked_z_0_), .Z(SBOX_0_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_n2) );
  XNOR2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[1]), .B(
        SBOX_0_and_0_Masked_and_hpc_mul_n2), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_n1) );
  XNOR2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[1]), .B(
        SBOX_0_and_0_Masked_and_hpc_mul_n1), .ZN(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_0_Masked_z[0]) );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_0_Masked_z[0]), 
        .B(SBOX_0_xor_0_Masked_x[0]), .Z(SBOX_0_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_0_Masked_z[1]), 
        .B(SBOX_0_xor_0_Masked_x[1]), .Z(SBOX_0_not_6_Masked_z[1]) );
  INV_X1 SBOX_0_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[3]), .ZN(
        SBOX_0_not_2_Masked_z_0_) );
  INV_X1 SBOX_0_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[2]), .ZN(
        SBOX_0_not_3_Masked_z_0_) );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[3]), .CK(
        CLK), .Q(SBOX_0_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[2]), .B(SHARE2_IN[2]), 
        .Z(SBOX_0_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[2]), .B(
        SBOX_0_not_3_Masked_z_0_), .Z(SBOX_0_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[3]), .B(
        SBOX_0_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[3]), .B(
        SBOX_0_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_1_Masked_z[0]) );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_1_Masked_z[0]), 
        .B(SBOX_0_xor_1_Masked_x[0]), .Z(SBOX_0_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_1_Masked_z[1]), 
        .B(SBOX_0_xor_1_Masked_x[1]), .Z(SBOX_0_not_7_Masked_z[1]) );
  INV_X1 SBOX_0_not_4_Masked_not_hpc_U1 ( .A(SBOX_0__s0[7]), .ZN(
        SBOX_0_not_4_Masked_z[0]) );
  INV_X1 SBOX_0_not_5_Masked_not_hpc_U1 ( .A(SBOX_0__s0[6]), .ZN(
        SBOX_0_not_5_Masked_z[0]) );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[4]), .B(
        SBOX_0_not_5_Masked_z[1]), .Z(SBOX_0_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[4]), .B(
        SBOX_0_not_5_Masked_z[0]), .Z(SBOX_0_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[5]), .B(
        SBOX_0_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[5]), .B(
        SBOX_0_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_2_Masked_z[0]) );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_2_Masked_z[0]), 
        .B(SBOX_0_xor_2_Masked_x[0]), .Z(SBOX_0_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_2_Masked_z[1]), 
        .B(SBOX_0_xor_2_Masked_x[1]), .Z(SBOX_0_not_10_Masked_z[1]) );
  INV_X1 SBOX_0_not_6_Masked_not_hpc_U1 ( .A(SBOX_0_xor_0_Masked_z_0_), .ZN(
        SBOX_0_not_6_Masked_z[0]) );
  INV_X1 SBOX_0_not_7_Masked_not_hpc_U1 ( .A(SBOX_0_xor_1_Masked_z_0_), .ZN(
        SBOX_0_not_7_Masked_z[0]) );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[6]), .B(
        SBOX_0_not_7_Masked_z[1]), .Z(SBOX_0_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[6]), .B(
        SBOX_0_not_7_Masked_z[0]), .Z(SBOX_0_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[7]), .B(
        SBOX_0_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[7]), .B(
        SBOX_0_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_3_Masked_z[0]) );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_3_Masked_z[0]), 
        .B(SBOX_0_xor_3_Masked_x[0]), .Z(SBOX_0_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_3_Masked_z[1]), 
        .B(SBOX_0_xor_3_Masked_x[1]), .Z(SBOX_0_not_11_Masked_z[1]) );
  INV_X1 SBOX_0_not_8_Masked_not_hpc_U1 ( .A(SBOX_0__s0_1[7]), .ZN(
        SBOX_0_not_8_Masked_z[0]) );
  INV_X1 SBOX_0_not_9_Masked_not_hpc_U1 ( .A(SBOX_0__s0_1[6]), .ZN(
        SBOX_0_not_9_Masked_z[0]) );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[8]), .B(
        SBOX_0_not_9_Masked_z[1]), .Z(SBOX_0_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_0_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[8]), .B(
        SBOX_0_not_9_Masked_z[0]), .Z(SBOX_0_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[9]), .B(
        SBOX_0_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[9]), .B(
        SBOX_0_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_4_Masked_z[0]) );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_4_Masked_z[0]), 
        .B(SBOX_0_xor_4_Masked_x[0]), .Z(SBOX_0_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_4_Masked_z[1]), 
        .B(SBOX_0_xor_4_Masked_x[1]), .Z(SBOX_0_not_14_Masked_z[1]) );
  INV_X1 SBOX_0_not_10_Masked_not_hpc_U1 ( .A(SBOX_0_xor_2_Masked_z_0_), .ZN(
        SBOX_0_not_10_Masked_z[0]) );
  INV_X1 SBOX_0_not_11_Masked_not_hpc_U1 ( .A(SBOX_0_xor_3_Masked_z_0_), .ZN(
        SBOX_0_not_11_Masked_z[0]) );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[10]), .B(
        SBOX_0_not_11_Masked_z[1]), .Z(SBOX_0_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_0_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[10]), .B(
        SBOX_0_not_11_Masked_z[0]), .Z(SBOX_0_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[11]), .B(
        SBOX_0_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[11]), .B(
        SBOX_0_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_5_Masked_z[0]) );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_5_Masked_z[0]), 
        .B(SBOX_0_xor_5_Masked_x[0]), .Z(SBOX_0_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_5_Masked_z[1]), 
        .B(SBOX_0_xor_5_Masked_x[1]), .Z(SBOX_0_not_15_Masked_z[1]) );
  INV_X1 SBOX_0_not_12_Masked_not_hpc_U1 ( .A(SBOX_0__s0_2[7]), .ZN(
        SBOX_0_not_12_Masked_z[0]) );
  INV_X1 SBOX_0_not_13_Masked_not_hpc_U1 ( .A(SBOX_0__s0_2[6]), .ZN(
        SBOX_0_not_13_Masked_z[0]) );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[12]), .B(
        SBOX_0_not_13_Masked_z[1]), .Z(SBOX_0_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_0_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[12]), .B(
        SBOX_0_not_13_Masked_z[0]), .Z(SBOX_0_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_6_Masked_z[1]) );
  AND2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[13]), .B(
        SBOX_0_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_0_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[13]), .B(
        SBOX_0_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_6_Masked_z[0]), 
        .B(SBOX_0_xor_6_Masked_x[0]), .Z(SHIFTROWS[12]) );
  XOR2_X1 SBOX_0_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_6_Masked_z[1]), 
        .B(SBOX_0_xor_6_Masked_x[1]), .Z(SHIFTROWS[140]) );
  INV_X1 SBOX_0_not_14_Masked_not_hpc_U1 ( .A(SBOX_0_xor_4_Masked_z_0_), .ZN(
        SBOX_0_not_14_Masked_z[0]) );
  INV_X1 SBOX_0_not_15_Masked_not_hpc_U1 ( .A(SBOX_0_xor_5_Masked_z_0_), .ZN(
        SBOX_0_not_15_Masked_z[0]) );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_0_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_0_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_0_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[14]), .B(
        SBOX_0_not_15_Masked_z[1]), .Z(SBOX_0_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_0_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[14]), .B(
        SBOX_0_not_15_Masked_z[0]), .Z(SBOX_0_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_0_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_0_and_7_Masked_z[1]) );
  AND2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[15]), .B(
        SBOX_0_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_0_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_0_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_0_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[15]), .B(
        SBOX_0_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_0_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_0_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_7_Masked_z[0]), 
        .B(SBOX_0_xor_7_Masked_x[0]), .Z(SHIFTROWS[8]) );
  XOR2_X1 SBOX_0_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_7_Masked_z[1]), 
        .B(SBOX_0_xor_7_Masked_x[1]), .Z(SHIFTROWS[136]) );
  DFF_X1 SBOX_1_reg_1_s0_31_reg ( .D(SBOX_1_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_1_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_31_reg ( .D(SBOX_1_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_1_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_30_reg ( .D(SBOX_1_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[17]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_30_reg ( .D(SBOX_1_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[145]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_29_reg ( .D(SBOX_1_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[18]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_29_reg ( .D(SBOX_1_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[146]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_28_reg ( .D(SBOX_1_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[19]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_28_reg ( .D(SBOX_1_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[147]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_27_reg ( .D(SBOX_1_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_1_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_27_reg ( .D(SBOX_1_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_1_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_26_reg ( .D(SBOX_1_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[21]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_26_reg ( .D(SBOX_1_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[149]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_25_reg ( .D(SBOX_1_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[22]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_25_reg ( .D(SBOX_1_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[150]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_24_reg ( .D(SBOX_1_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[23]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_24_reg ( .D(SBOX_1_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[151]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_31_reg ( .D(SBOX_1__s0_2_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_23_reg ( .D(SBOX_1_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_1__s0_2_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_31_reg ( .D(SBOX_1__s1_2_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_23_reg ( .D(SBOX_1_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_1__s1_2_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_29_reg ( .D(SBOX_1__s0_2_1), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_22_reg ( .D(SBOX_1_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_1__s0_2_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_29_reg ( .D(SBOX_1__s1_2_1), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_22_reg ( .D(SBOX_1_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_1__s1_2_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_30_reg ( .D(SBOX_1_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_30_reg ( .D(SBOX_1_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_21_reg ( .D(SBOX_1_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_1_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_21_reg ( .D(SBOX_1_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_1_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_28_reg ( .D(SBOX_1_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_28_reg ( .D(SBOX_1_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_20_reg ( .D(SBOX_1_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_1_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_20_reg ( .D(SBOX_1_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_1_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_27_reg ( .D(SBOX_1__s0_2[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_19_reg ( .D(SBOX_1_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_1__s0_2[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_27_reg ( .D(SBOX_1__s1_2[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_19_reg ( .D(SBOX_1_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_1__s1_2[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_26_reg ( .D(SBOX_1__s0_2[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_18_reg ( .D(SBOX_1_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_1__s0_2[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_26_reg ( .D(SBOX_1__s1_2[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_18_reg ( .D(SBOX_1_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_1__s1_2[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_25_reg ( .D(SBOX_1__s0_2[6]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_17_reg ( .D(SBOX_1_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_1__s0_2[6]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_25_reg ( .D(SBOX_1_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_17_reg ( .D(SBOX_1_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_1_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_24_reg ( .D(SBOX_1__s0_2[7]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_16_reg ( .D(SBOX_1_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_1__s0_2[7]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_24_reg ( .D(SBOX_1_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_16_reg ( .D(SBOX_1_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_1_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_21_reg ( .D(SBOX_1__s0_1_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_15_reg ( .D(SBOX_1_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_1__s0_1_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_21_reg ( .D(SBOX_1__s1_1_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_15_reg ( .D(SBOX_1_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_1__s1_1_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_17_reg ( .D(SBOX_1__s0_1_1), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_14_reg ( .D(SBOX_1_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_1__s0_1_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_17_reg ( .D(SBOX_1__s1_1_1), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_14_reg ( .D(SBOX_1_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_1__s1_1_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_16_reg ( .D(SBOX_1_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_16_reg ( .D(SBOX_1_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_13_reg ( .D(SBOX_1_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_1_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_13_reg ( .D(SBOX_1_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_1_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_22_reg ( .D(SBOX_1_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_22_reg ( .D(SBOX_1_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_12_reg ( .D(SBOX_1_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_1_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_12_reg ( .D(SBOX_1_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_1_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_20_reg ( .D(SBOX_1__s0_1[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_11_reg ( .D(SBOX_1_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_1__s0_1[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_20_reg ( .D(SBOX_1__s1_1[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_11_reg ( .D(SBOX_1_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_1__s1_1[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_23_reg ( .D(SBOX_1__s0_1[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_10_reg ( .D(SBOX_1_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_1__s0_1[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_23_reg ( .D(SBOX_1__s1_1[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_10_reg ( .D(SBOX_1_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_1__s1_1[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_19_reg ( .D(SBOX_1__s0_1[6]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_9_reg ( .D(SBOX_1_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_1__s0_1[6]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_19_reg ( .D(SBOX_1_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_9_reg ( .D(SBOX_1_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_1_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_18_reg ( .D(SBOX_1__s0_1[7]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_8_reg ( .D(SBOX_1_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_1__s0_1[7]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_18_reg ( .D(SBOX_1_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_8_reg ( .D(SBOX_1_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_1_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_13_reg ( .D(SBOX_1__s0_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_7_reg ( .D(SBOX_1_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_1__s0_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_13_reg ( .D(SBOX_1__s1_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_7_reg ( .D(SBOX_1_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_1__s1_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_9_reg ( .D(\SBOX_1/_s0_1 ), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_6_reg ( .D(SBOX_1_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_1/_s0_1 ), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_9_reg ( .D(\SBOX_1/_s1_1 ), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_6_reg ( .D(SBOX_1_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_1/_s1_1 ), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_8_reg ( .D(SBOX_1_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_8_reg ( .D(SBOX_1_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_5_reg ( .D(SBOX_1_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_1_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_5_reg ( .D(SBOX_1_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_1_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_14_reg ( .D(SBOX_1_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_14_reg ( .D(SBOX_1_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_4_reg ( .D(SBOX_1_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_1_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_4_reg ( .D(SBOX_1_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_1_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_12_reg ( .D(SBOX_1__s0[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_3_reg ( .D(SBOX_1_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_1__s0[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_12_reg ( .D(SBOX_1__s1[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_3_reg ( .D(SBOX_1_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_1__s1[4]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_15_reg ( .D(SBOX_1__s0[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_2_reg ( .D(SBOX_1_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_1__s0[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_15_reg ( .D(SBOX_1__s1[5]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_2_reg ( .D(SBOX_1_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_1__s1[5]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_11_reg ( .D(SBOX_1__s0[6]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_1_reg ( .D(SBOX_1_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_1__s0[6]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_11_reg ( .D(SBOX_1_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_1_reg ( .D(SBOX_1_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_1_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_10_reg ( .D(SBOX_1__s0[7]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_reg ( .D(SBOX_1_reg_0_s0), .CK(CLK), .Q(SBOX_1__s0[7]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_10_reg ( .D(SBOX_1_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_reg ( .D(SBOX_1_reg_0_s1), .CK(CLK), .Q(
        SBOX_1_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_4_reg ( .D(SHARE2_IN[12]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_4_reg ( .D(SHARE1_IN[12]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_5_reg ( .D(SHARE2_IN[8]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_5_reg ( .D(SHARE1_IN[8]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_6_reg ( .D(SHARE2_IN[11]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_6_reg ( .D(SHARE1_IN[11]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_7_reg ( .D(SHARE2_IN[13]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_3_reg ( .D(SHARE1_IN[14]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_7_reg ( .D(SHARE1_IN[13]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_3_reg ( .D(SHARE2_IN[14]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_2_reg ( .D(SHARE1_IN[15]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_2_reg ( .D(SHARE2_IN[15]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_1_reg ( .D(SHARE1_IN[9]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_1_reg ( .D(SHARE2_IN[9]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_reg ( .D(SHARE1_IN[10]), .CK(CLK), .Q(SBOX_1_reg_0_s0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_reg ( .D(SHARE2_IN[10]), .CK(CLK), .Q(SBOX_1_reg_0_s1), .QN() );
  INV_X1 SBOX_1_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[15]), .ZN(
        SBOX_1_not_0_Masked_z_0_) );
  INV_X1 SBOX_1_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[14]), .ZN(
        SBOX_1_not_1_Masked_z_0_) );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[15]), 
        .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[16]), .B(
        SHARE2_IN[14]), .Z(SBOX_1_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[16]), .B(
        SBOX_1_not_1_Masked_z_0_), .Z(SBOX_1_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[17]), .B(
        SBOX_1_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[17]), .B(
        SBOX_1_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_0_Masked_z[0]) );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_0_Masked_z[0]), 
        .B(SBOX_1_xor_0_Masked_x[0]), .Z(SBOX_1_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_0_Masked_z[1]), 
        .B(SBOX_1_xor_0_Masked_x[1]), .Z(SBOX_1_not_6_Masked_z[1]) );
  INV_X1 SBOX_1_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[11]), .ZN(
        SBOX_1_not_2_Masked_z_0_) );
  INV_X1 SBOX_1_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[10]), .ZN(
        SBOX_1_not_3_Masked_z_0_) );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[11]), 
        .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[18]), .B(
        SHARE2_IN[10]), .Z(SBOX_1_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[18]), .B(
        SBOX_1_not_3_Masked_z_0_), .Z(SBOX_1_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[19]), .B(
        SBOX_1_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[19]), .B(
        SBOX_1_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_1_Masked_z[0]) );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_1_Masked_z[0]), 
        .B(SBOX_1_xor_1_Masked_x[0]), .Z(SBOX_1_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_1_Masked_z[1]), 
        .B(SBOX_1_xor_1_Masked_x[1]), .Z(SBOX_1_not_7_Masked_z[1]) );
  INV_X1 SBOX_1_not_4_Masked_not_hpc_U1 ( .A(SBOX_1__s0[7]), .ZN(
        SBOX_1_not_4_Masked_z[0]) );
  INV_X1 SBOX_1_not_5_Masked_not_hpc_U1 ( .A(SBOX_1__s0[6]), .ZN(
        SBOX_1_not_5_Masked_z[0]) );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[20]), .B(
        SBOX_1_not_5_Masked_z[1]), .Z(SBOX_1_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[20]), .B(
        SBOX_1_not_5_Masked_z[0]), .Z(SBOX_1_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[21]), .B(
        SBOX_1_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[21]), .B(
        SBOX_1_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_2_Masked_z[0]) );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_2_Masked_z[0]), 
        .B(SBOX_1_xor_2_Masked_x[0]), .Z(SBOX_1_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_2_Masked_z[1]), 
        .B(SBOX_1_xor_2_Masked_x[1]), .Z(SBOX_1_not_10_Masked_z[1]) );
  INV_X1 SBOX_1_not_6_Masked_not_hpc_U1 ( .A(SBOX_1_xor_0_Masked_z_0_), .ZN(
        SBOX_1_not_6_Masked_z[0]) );
  INV_X1 SBOX_1_not_7_Masked_not_hpc_U1 ( .A(SBOX_1_xor_1_Masked_z_0_), .ZN(
        SBOX_1_not_7_Masked_z[0]) );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[22]), .B(
        SBOX_1_not_7_Masked_z[1]), .Z(SBOX_1_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[22]), .B(
        SBOX_1_not_7_Masked_z[0]), .Z(SBOX_1_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[23]), .B(
        SBOX_1_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[23]), .B(
        SBOX_1_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_3_Masked_z[0]) );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_3_Masked_z[0]), 
        .B(SBOX_1_xor_3_Masked_x[0]), .Z(SBOX_1_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_3_Masked_z[1]), 
        .B(SBOX_1_xor_3_Masked_x[1]), .Z(SBOX_1_not_11_Masked_z[1]) );
  INV_X1 SBOX_1_not_8_Masked_not_hpc_U1 ( .A(SBOX_1__s0_1[7]), .ZN(
        SBOX_1_not_8_Masked_z[0]) );
  INV_X1 SBOX_1_not_9_Masked_not_hpc_U1 ( .A(SBOX_1__s0_1[6]), .ZN(
        SBOX_1_not_9_Masked_z[0]) );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[24]), .B(
        SBOX_1_not_9_Masked_z[1]), .Z(SBOX_1_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_1_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[24]), .B(
        SBOX_1_not_9_Masked_z[0]), .Z(SBOX_1_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[25]), .B(
        SBOX_1_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[25]), .B(
        SBOX_1_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_4_Masked_z[0]) );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_4_Masked_z[0]), 
        .B(SBOX_1_xor_4_Masked_x[0]), .Z(SBOX_1_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_4_Masked_z[1]), 
        .B(SBOX_1_xor_4_Masked_x[1]), .Z(SBOX_1_not_14_Masked_z[1]) );
  INV_X1 SBOX_1_not_10_Masked_not_hpc_U1 ( .A(SBOX_1_xor_2_Masked_z_0_), .ZN(
        SBOX_1_not_10_Masked_z[0]) );
  INV_X1 SBOX_1_not_11_Masked_not_hpc_U1 ( .A(SBOX_1_xor_3_Masked_z_0_), .ZN(
        SBOX_1_not_11_Masked_z[0]) );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[26]), .B(
        SBOX_1_not_11_Masked_z[1]), .Z(SBOX_1_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_1_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[26]), .B(
        SBOX_1_not_11_Masked_z[0]), .Z(SBOX_1_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[27]), .B(
        SBOX_1_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[27]), .B(
        SBOX_1_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_5_Masked_z[0]) );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_5_Masked_z[0]), 
        .B(SBOX_1_xor_5_Masked_x[0]), .Z(SBOX_1_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_5_Masked_z[1]), 
        .B(SBOX_1_xor_5_Masked_x[1]), .Z(SBOX_1_not_15_Masked_z[1]) );
  INV_X1 SBOX_1_not_12_Masked_not_hpc_U1 ( .A(SBOX_1__s0_2[7]), .ZN(
        SBOX_1_not_12_Masked_z[0]) );
  INV_X1 SBOX_1_not_13_Masked_not_hpc_U1 ( .A(SBOX_1__s0_2[6]), .ZN(
        SBOX_1_not_13_Masked_z[0]) );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[28]), .B(
        SBOX_1_not_13_Masked_z[1]), .Z(SBOX_1_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_1_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[28]), .B(
        SBOX_1_not_13_Masked_z[0]), .Z(SBOX_1_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_6_Masked_z[1]) );
  AND2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[29]), .B(
        SBOX_1_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_1_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[29]), .B(
        SBOX_1_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_6_Masked_z[0]), 
        .B(SBOX_1_xor_6_Masked_x[0]), .Z(SHIFTROWS[20]) );
  XOR2_X1 SBOX_1_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_6_Masked_z[1]), 
        .B(SBOX_1_xor_6_Masked_x[1]), .Z(SHIFTROWS[148]) );
  INV_X1 SBOX_1_not_14_Masked_not_hpc_U1 ( .A(SBOX_1_xor_4_Masked_z_0_), .ZN(
        SBOX_1_not_14_Masked_z[0]) );
  INV_X1 SBOX_1_not_15_Masked_not_hpc_U1 ( .A(SBOX_1_xor_5_Masked_z_0_), .ZN(
        SBOX_1_not_15_Masked_z[0]) );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_1_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_1_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_1_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[30]), .B(
        SBOX_1_not_15_Masked_z[1]), .Z(SBOX_1_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_1_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[30]), .B(
        SBOX_1_not_15_Masked_z[0]), .Z(SBOX_1_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_1_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_1_and_7_Masked_z[1]) );
  AND2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[31]), .B(
        SBOX_1_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_1_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_1_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_1_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[31]), .B(
        SBOX_1_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_1_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_1_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_7_Masked_z[0]), 
        .B(SBOX_1_xor_7_Masked_x[0]), .Z(SHIFTROWS[16]) );
  XOR2_X1 SBOX_1_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_7_Masked_z[1]), 
        .B(SBOX_1_xor_7_Masked_x[1]), .Z(SHIFTROWS[144]) );
  DFF_X1 SBOX_2_reg_1_s0_31_reg ( .D(SBOX_2_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_2_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_31_reg ( .D(SBOX_2_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_2_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_30_reg ( .D(SBOX_2_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[25]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_30_reg ( .D(SBOX_2_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[153]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_29_reg ( .D(SBOX_2_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[26]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_29_reg ( .D(SBOX_2_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[154]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_28_reg ( .D(SBOX_2_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[27]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_28_reg ( .D(SBOX_2_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[155]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_27_reg ( .D(SBOX_2_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_2_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_27_reg ( .D(SBOX_2_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_2_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_26_reg ( .D(SBOX_2_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[29]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_26_reg ( .D(SBOX_2_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[157]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_25_reg ( .D(SBOX_2_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[30]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_25_reg ( .D(SBOX_2_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[158]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_24_reg ( .D(SBOX_2_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[31]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_24_reg ( .D(SBOX_2_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[159]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_31_reg ( .D(SBOX_2__s0_2_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_23_reg ( .D(SBOX_2_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_2__s0_2_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_31_reg ( .D(SBOX_2__s1_2_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_23_reg ( .D(SBOX_2_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_2__s1_2_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_29_reg ( .D(SBOX_2__s0_2_1), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_22_reg ( .D(SBOX_2_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_2__s0_2_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_29_reg ( .D(SBOX_2__s1_2_1), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_22_reg ( .D(SBOX_2_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_2__s1_2_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_30_reg ( .D(SBOX_2_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_30_reg ( .D(SBOX_2_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_21_reg ( .D(SBOX_2_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_2_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_21_reg ( .D(SBOX_2_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_2_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_28_reg ( .D(SBOX_2_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_28_reg ( .D(SBOX_2_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_20_reg ( .D(SBOX_2_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_2_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_20_reg ( .D(SBOX_2_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_2_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_27_reg ( .D(SBOX_2__s0_2[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_19_reg ( .D(SBOX_2_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_2__s0_2[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_27_reg ( .D(SBOX_2__s1_2[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_19_reg ( .D(SBOX_2_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_2__s1_2[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_26_reg ( .D(SBOX_2__s0_2[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_18_reg ( .D(SBOX_2_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_2__s0_2[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_26_reg ( .D(SBOX_2__s1_2[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_18_reg ( .D(SBOX_2_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_2__s1_2[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_25_reg ( .D(SBOX_2__s0_2[6]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_17_reg ( .D(SBOX_2_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_2__s0_2[6]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_25_reg ( .D(SBOX_2_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_17_reg ( .D(SBOX_2_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_2_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_24_reg ( .D(SBOX_2__s0_2[7]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_16_reg ( .D(SBOX_2_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_2__s0_2[7]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_24_reg ( .D(SBOX_2_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_16_reg ( .D(SBOX_2_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_2_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_21_reg ( .D(SBOX_2__s0_1_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_15_reg ( .D(SBOX_2_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_2__s0_1_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_21_reg ( .D(SBOX_2__s1_1_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_15_reg ( .D(SBOX_2_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_2__s1_1_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_17_reg ( .D(SBOX_2__s0_1_1), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_14_reg ( .D(SBOX_2_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_2__s0_1_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_17_reg ( .D(SBOX_2__s1_1_1), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_14_reg ( .D(SBOX_2_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_2__s1_1_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_16_reg ( .D(SBOX_2_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_16_reg ( .D(SBOX_2_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_13_reg ( .D(SBOX_2_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_2_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_13_reg ( .D(SBOX_2_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_2_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_22_reg ( .D(SBOX_2_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_22_reg ( .D(SBOX_2_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_12_reg ( .D(SBOX_2_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_2_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_12_reg ( .D(SBOX_2_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_2_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_20_reg ( .D(SBOX_2__s0_1[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_11_reg ( .D(SBOX_2_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_2__s0_1[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_20_reg ( .D(SBOX_2__s1_1[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_11_reg ( .D(SBOX_2_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_2__s1_1[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_23_reg ( .D(SBOX_2__s0_1[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_10_reg ( .D(SBOX_2_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_2__s0_1[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_23_reg ( .D(SBOX_2__s1_1[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_10_reg ( .D(SBOX_2_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_2__s1_1[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_19_reg ( .D(SBOX_2__s0_1[6]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_9_reg ( .D(SBOX_2_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_2__s0_1[6]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_19_reg ( .D(SBOX_2_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_9_reg ( .D(SBOX_2_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_2_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_18_reg ( .D(SBOX_2__s0_1[7]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_8_reg ( .D(SBOX_2_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_2__s0_1[7]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_18_reg ( .D(SBOX_2_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_8_reg ( .D(SBOX_2_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_2_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_13_reg ( .D(SBOX_2__s0_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_7_reg ( .D(SBOX_2_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_2__s0_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_13_reg ( .D(SBOX_2__s1_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_7_reg ( .D(SBOX_2_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_2__s1_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_9_reg ( .D(\SBOX_2/_s0_1 ), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_6_reg ( .D(SBOX_2_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_2/_s0_1 ), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_9_reg ( .D(\SBOX_2/_s1_1 ), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_6_reg ( .D(SBOX_2_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_2/_s1_1 ), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_8_reg ( .D(SBOX_2_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_8_reg ( .D(SBOX_2_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_5_reg ( .D(SBOX_2_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_2_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_5_reg ( .D(SBOX_2_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_2_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_14_reg ( .D(SBOX_2_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_14_reg ( .D(SBOX_2_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_4_reg ( .D(SBOX_2_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_2_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_4_reg ( .D(SBOX_2_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_2_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_12_reg ( .D(SBOX_2__s0[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_3_reg ( .D(SBOX_2_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_2__s0[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_12_reg ( .D(SBOX_2__s1[4]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_3_reg ( .D(SBOX_2_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_2__s1[4]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_15_reg ( .D(SBOX_2__s0[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_2_reg ( .D(SBOX_2_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_2__s0[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_15_reg ( .D(SBOX_2__s1[5]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_2_reg ( .D(SBOX_2_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_2__s1[5]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_11_reg ( .D(SBOX_2__s0[6]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_1_reg ( .D(SBOX_2_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_2__s0[6]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_11_reg ( .D(SBOX_2_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_1_reg ( .D(SBOX_2_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_2_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_10_reg ( .D(SBOX_2__s0[7]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_reg ( .D(SBOX_2_reg_0_s0), .CK(CLK), .Q(SBOX_2__s0[7]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_10_reg ( .D(SBOX_2_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_reg ( .D(SBOX_2_reg_0_s1), .CK(CLK), .Q(
        SBOX_2_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_4_reg ( .D(SHARE2_IN[20]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_4_reg ( .D(SHARE1_IN[20]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_5_reg ( .D(SHARE2_IN[16]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_5_reg ( .D(SHARE1_IN[16]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_6_reg ( .D(SHARE2_IN[19]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_6_reg ( .D(SHARE1_IN[19]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_7_reg ( .D(SHARE2_IN[21]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_3_reg ( .D(SHARE1_IN[22]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_7_reg ( .D(SHARE1_IN[21]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_3_reg ( .D(SHARE2_IN[22]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_2_reg ( .D(SHARE1_IN[23]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_2_reg ( .D(SHARE2_IN[23]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_1_reg ( .D(SHARE1_IN[17]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_1_reg ( .D(SHARE2_IN[17]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_reg ( .D(SHARE1_IN[18]), .CK(CLK), .Q(SBOX_2_reg_0_s0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_reg ( .D(SHARE2_IN[18]), .CK(CLK), .Q(SBOX_2_reg_0_s1), .QN() );
  INV_X1 SBOX_2_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[23]), .ZN(
        SBOX_2_not_0_Masked_z_0_) );
  INV_X1 SBOX_2_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[22]), .ZN(
        SBOX_2_not_1_Masked_z_0_) );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[23]), 
        .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[32]), .B(
        SHARE2_IN[22]), .Z(SBOX_2_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[32]), .B(
        SBOX_2_not_1_Masked_z_0_), .Z(SBOX_2_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[33]), .B(
        SBOX_2_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[33]), .B(
        SBOX_2_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_0_Masked_z[0]) );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_0_Masked_z[0]), 
        .B(SBOX_2_xor_0_Masked_x[0]), .Z(SBOX_2_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_0_Masked_z[1]), 
        .B(SBOX_2_xor_0_Masked_x[1]), .Z(SBOX_2_not_6_Masked_z[1]) );
  INV_X1 SBOX_2_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[19]), .ZN(
        SBOX_2_not_2_Masked_z_0_) );
  INV_X1 SBOX_2_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[18]), .ZN(
        SBOX_2_not_3_Masked_z_0_) );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[19]), 
        .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[34]), .B(
        SHARE2_IN[18]), .Z(SBOX_2_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[34]), .B(
        SBOX_2_not_3_Masked_z_0_), .Z(SBOX_2_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[35]), .B(
        SBOX_2_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[35]), .B(
        SBOX_2_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_1_Masked_z[0]) );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_1_Masked_z[0]), 
        .B(SBOX_2_xor_1_Masked_x[0]), .Z(SBOX_2_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_1_Masked_z[1]), 
        .B(SBOX_2_xor_1_Masked_x[1]), .Z(SBOX_2_not_7_Masked_z[1]) );
  INV_X1 SBOX_2_not_4_Masked_not_hpc_U1 ( .A(SBOX_2__s0[7]), .ZN(
        SBOX_2_not_4_Masked_z[0]) );
  INV_X1 SBOX_2_not_5_Masked_not_hpc_U1 ( .A(SBOX_2__s0[6]), .ZN(
        SBOX_2_not_5_Masked_z[0]) );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[36]), .B(
        SBOX_2_not_5_Masked_z[1]), .Z(SBOX_2_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[36]), .B(
        SBOX_2_not_5_Masked_z[0]), .Z(SBOX_2_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[37]), .B(
        SBOX_2_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[37]), .B(
        SBOX_2_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_2_Masked_z[0]) );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_2_Masked_z[0]), 
        .B(SBOX_2_xor_2_Masked_x[0]), .Z(SBOX_2_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_2_Masked_z[1]), 
        .B(SBOX_2_xor_2_Masked_x[1]), .Z(SBOX_2_not_10_Masked_z[1]) );
  INV_X1 SBOX_2_not_6_Masked_not_hpc_U1 ( .A(SBOX_2_xor_0_Masked_z_0_), .ZN(
        SBOX_2_not_6_Masked_z[0]) );
  INV_X1 SBOX_2_not_7_Masked_not_hpc_U1 ( .A(SBOX_2_xor_1_Masked_z_0_), .ZN(
        SBOX_2_not_7_Masked_z[0]) );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[38]), .B(
        SBOX_2_not_7_Masked_z[1]), .Z(SBOX_2_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[38]), .B(
        SBOX_2_not_7_Masked_z[0]), .Z(SBOX_2_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[39]), .B(
        SBOX_2_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[39]), .B(
        SBOX_2_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_3_Masked_z[0]) );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_3_Masked_z[0]), 
        .B(SBOX_2_xor_3_Masked_x[0]), .Z(SBOX_2_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_3_Masked_z[1]), 
        .B(SBOX_2_xor_3_Masked_x[1]), .Z(SBOX_2_not_11_Masked_z[1]) );
  INV_X1 SBOX_2_not_8_Masked_not_hpc_U1 ( .A(SBOX_2__s0_1[7]), .ZN(
        SBOX_2_not_8_Masked_z[0]) );
  INV_X1 SBOX_2_not_9_Masked_not_hpc_U1 ( .A(SBOX_2__s0_1[6]), .ZN(
        SBOX_2_not_9_Masked_z[0]) );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[40]), .B(
        SBOX_2_not_9_Masked_z[1]), .Z(SBOX_2_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_2_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[40]), .B(
        SBOX_2_not_9_Masked_z[0]), .Z(SBOX_2_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[41]), .B(
        SBOX_2_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[41]), .B(
        SBOX_2_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_4_Masked_z[0]) );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_4_Masked_z[0]), 
        .B(SBOX_2_xor_4_Masked_x[0]), .Z(SBOX_2_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_4_Masked_z[1]), 
        .B(SBOX_2_xor_4_Masked_x[1]), .Z(SBOX_2_not_14_Masked_z[1]) );
  INV_X1 SBOX_2_not_10_Masked_not_hpc_U1 ( .A(SBOX_2_xor_2_Masked_z_0_), .ZN(
        SBOX_2_not_10_Masked_z[0]) );
  INV_X1 SBOX_2_not_11_Masked_not_hpc_U1 ( .A(SBOX_2_xor_3_Masked_z_0_), .ZN(
        SBOX_2_not_11_Masked_z[0]) );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[42]), .B(
        SBOX_2_not_11_Masked_z[1]), .Z(SBOX_2_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_2_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[42]), .B(
        SBOX_2_not_11_Masked_z[0]), .Z(SBOX_2_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[43]), .B(
        SBOX_2_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[43]), .B(
        SBOX_2_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_5_Masked_z[0]) );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_5_Masked_z[0]), 
        .B(SBOX_2_xor_5_Masked_x[0]), .Z(SBOX_2_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_5_Masked_z[1]), 
        .B(SBOX_2_xor_5_Masked_x[1]), .Z(SBOX_2_not_15_Masked_z[1]) );
  INV_X1 SBOX_2_not_12_Masked_not_hpc_U1 ( .A(SBOX_2__s0_2[7]), .ZN(
        SBOX_2_not_12_Masked_z[0]) );
  INV_X1 SBOX_2_not_13_Masked_not_hpc_U1 ( .A(SBOX_2__s0_2[6]), .ZN(
        SBOX_2_not_13_Masked_z[0]) );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[44]), .B(
        SBOX_2_not_13_Masked_z[1]), .Z(SBOX_2_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_2_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[44]), .B(
        SBOX_2_not_13_Masked_z[0]), .Z(SBOX_2_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_6_Masked_z[1]) );
  AND2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[45]), .B(
        SBOX_2_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_2_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[45]), .B(
        SBOX_2_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_6_Masked_z[0]), 
        .B(SBOX_2_xor_6_Masked_x[0]), .Z(SHIFTROWS[28]) );
  XOR2_X1 SBOX_2_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_6_Masked_z[1]), 
        .B(SBOX_2_xor_6_Masked_x[1]), .Z(SHIFTROWS[156]) );
  INV_X1 SBOX_2_not_14_Masked_not_hpc_U1 ( .A(SBOX_2_xor_4_Masked_z_0_), .ZN(
        SBOX_2_not_14_Masked_z[0]) );
  INV_X1 SBOX_2_not_15_Masked_not_hpc_U1 ( .A(SBOX_2_xor_5_Masked_z_0_), .ZN(
        SBOX_2_not_15_Masked_z[0]) );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_2_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_2_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_2_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[46]), .B(
        SBOX_2_not_15_Masked_z[1]), .Z(SBOX_2_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_2_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[46]), .B(
        SBOX_2_not_15_Masked_z[0]), .Z(SBOX_2_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_2_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_2_and_7_Masked_z[1]) );
  AND2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[47]), .B(
        SBOX_2_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_2_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_2_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_2_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[47]), .B(
        SBOX_2_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_2_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_2_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_7_Masked_z[0]), 
        .B(SBOX_2_xor_7_Masked_x[0]), .Z(SHIFTROWS[24]) );
  XOR2_X1 SBOX_2_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_7_Masked_z[1]), 
        .B(SBOX_2_xor_7_Masked_x[1]), .Z(SHIFTROWS[152]) );
  DFF_X1 SBOX_3_reg_1_s0_31_reg ( .D(SBOX_3_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_3_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_31_reg ( .D(SBOX_3_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_3_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_30_reg ( .D(SBOX_3_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[1]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_30_reg ( .D(SBOX_3_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[129]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_29_reg ( .D(SBOX_3_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[2]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_29_reg ( .D(SBOX_3_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[130]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_28_reg ( .D(SBOX_3_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[3]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_28_reg ( .D(SBOX_3_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[131]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_27_reg ( .D(SBOX_3_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_3_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_27_reg ( .D(SBOX_3_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_3_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_26_reg ( .D(SBOX_3_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[5]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_26_reg ( .D(SBOX_3_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[133]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_25_reg ( .D(SBOX_3_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[6]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_25_reg ( .D(SBOX_3_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[134]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_24_reg ( .D(SBOX_3_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[7]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_24_reg ( .D(SBOX_3_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[135]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_31_reg ( .D(SBOX_3__s0_2_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_23_reg ( .D(SBOX_3_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_3__s0_2_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_31_reg ( .D(SBOX_3__s1_2_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_23_reg ( .D(SBOX_3_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_3__s1_2_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_29_reg ( .D(SBOX_3__s0_2_1), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_22_reg ( .D(SBOX_3_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_3__s0_2_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_29_reg ( .D(SBOX_3__s1_2_1), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_22_reg ( .D(SBOX_3_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_3__s1_2_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_30_reg ( .D(SBOX_3_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_30_reg ( .D(SBOX_3_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_21_reg ( .D(SBOX_3_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_3_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_21_reg ( .D(SBOX_3_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_3_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_28_reg ( .D(SBOX_3_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_28_reg ( .D(SBOX_3_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_20_reg ( .D(SBOX_3_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_3_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_20_reg ( .D(SBOX_3_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_3_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_27_reg ( .D(SBOX_3__s0_2[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_19_reg ( .D(SBOX_3_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_3__s0_2[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_27_reg ( .D(SBOX_3__s1_2[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_19_reg ( .D(SBOX_3_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_3__s1_2[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_26_reg ( .D(SBOX_3__s0_2[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_18_reg ( .D(SBOX_3_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_3__s0_2[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_26_reg ( .D(SBOX_3__s1_2[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_18_reg ( .D(SBOX_3_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_3__s1_2[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_25_reg ( .D(SBOX_3__s0_2[6]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_17_reg ( .D(SBOX_3_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_3__s0_2[6]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_25_reg ( .D(SBOX_3_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_17_reg ( .D(SBOX_3_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_3_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_24_reg ( .D(SBOX_3__s0_2[7]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_16_reg ( .D(SBOX_3_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_3__s0_2[7]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_24_reg ( .D(SBOX_3_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_16_reg ( .D(SBOX_3_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_3_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_21_reg ( .D(SBOX_3__s0_1_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_15_reg ( .D(SBOX_3_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_3__s0_1_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_21_reg ( .D(SBOX_3__s1_1_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_15_reg ( .D(SBOX_3_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_3__s1_1_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_17_reg ( .D(SBOX_3__s0_1_1), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_14_reg ( .D(SBOX_3_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_3__s0_1_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_17_reg ( .D(SBOX_3__s1_1_1), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_14_reg ( .D(SBOX_3_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_3__s1_1_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_16_reg ( .D(SBOX_3_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_16_reg ( .D(SBOX_3_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_13_reg ( .D(SBOX_3_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_3_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_13_reg ( .D(SBOX_3_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_3_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_22_reg ( .D(SBOX_3_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_22_reg ( .D(SBOX_3_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_12_reg ( .D(SBOX_3_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_3_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_12_reg ( .D(SBOX_3_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_3_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_20_reg ( .D(SBOX_3__s0_1[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_11_reg ( .D(SBOX_3_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_3__s0_1[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_20_reg ( .D(SBOX_3__s1_1[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_11_reg ( .D(SBOX_3_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_3__s1_1[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_23_reg ( .D(SBOX_3__s0_1[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_10_reg ( .D(SBOX_3_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_3__s0_1[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_23_reg ( .D(SBOX_3__s1_1[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_10_reg ( .D(SBOX_3_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_3__s1_1[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_19_reg ( .D(SBOX_3__s0_1[6]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_9_reg ( .D(SBOX_3_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_3__s0_1[6]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_19_reg ( .D(SBOX_3_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_9_reg ( .D(SBOX_3_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_3_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_18_reg ( .D(SBOX_3__s0_1[7]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_8_reg ( .D(SBOX_3_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_3__s0_1[7]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_18_reg ( .D(SBOX_3_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_8_reg ( .D(SBOX_3_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_3_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_13_reg ( .D(SBOX_3__s0_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_7_reg ( .D(SBOX_3_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_3__s0_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_13_reg ( .D(SBOX_3__s1_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_7_reg ( .D(SBOX_3_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_3__s1_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_9_reg ( .D(\SBOX_3/_s0_1 ), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_6_reg ( .D(SBOX_3_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_3/_s0_1 ), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_9_reg ( .D(\SBOX_3/_s1_1 ), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_6_reg ( .D(SBOX_3_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_3/_s1_1 ), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_8_reg ( .D(SBOX_3_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_8_reg ( .D(SBOX_3_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_5_reg ( .D(SBOX_3_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_3_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_5_reg ( .D(SBOX_3_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_3_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_14_reg ( .D(SBOX_3_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_14_reg ( .D(SBOX_3_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_4_reg ( .D(SBOX_3_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_3_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_4_reg ( .D(SBOX_3_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_3_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_12_reg ( .D(SBOX_3__s0[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_3_reg ( .D(SBOX_3_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_3__s0[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_12_reg ( .D(SBOX_3__s1[4]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_3_reg ( .D(SBOX_3_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_3__s1[4]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_15_reg ( .D(SBOX_3__s0[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_2_reg ( .D(SBOX_3_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_3__s0[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_15_reg ( .D(SBOX_3__s1[5]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_2_reg ( .D(SBOX_3_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_3__s1[5]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_11_reg ( .D(SBOX_3__s0[6]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_1_reg ( .D(SBOX_3_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_3__s0[6]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_11_reg ( .D(SBOX_3_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_1_reg ( .D(SBOX_3_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_3_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_10_reg ( .D(SBOX_3__s0[7]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_reg ( .D(SBOX_3_reg_0_s0), .CK(CLK), .Q(SBOX_3__s0[7]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_10_reg ( .D(SBOX_3_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_reg ( .D(SBOX_3_reg_0_s1), .CK(CLK), .Q(
        SBOX_3_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_4_reg ( .D(SHARE2_IN[28]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_4_reg ( .D(SHARE1_IN[28]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_5_reg ( .D(SHARE2_IN[24]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_5_reg ( .D(SHARE1_IN[24]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_6_reg ( .D(SHARE2_IN[27]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_6_reg ( .D(SHARE1_IN[27]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_7_reg ( .D(SHARE2_IN[29]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_3_reg ( .D(SHARE1_IN[30]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_7_reg ( .D(SHARE1_IN[29]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_3_reg ( .D(SHARE2_IN[30]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_2_reg ( .D(SHARE1_IN[31]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_2_reg ( .D(SHARE2_IN[31]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_1_reg ( .D(SHARE1_IN[25]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_1_reg ( .D(SHARE2_IN[25]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_reg ( .D(SHARE1_IN[26]), .CK(CLK), .Q(SBOX_3_reg_0_s0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_reg ( .D(SHARE2_IN[26]), .CK(CLK), .Q(SBOX_3_reg_0_s1), .QN() );
  INV_X1 SBOX_3_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[31]), .ZN(
        SBOX_3_not_0_Masked_z_0_) );
  INV_X1 SBOX_3_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[30]), .ZN(
        SBOX_3_not_1_Masked_z_0_) );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[31]), 
        .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[48]), .B(
        SHARE2_IN[30]), .Z(SBOX_3_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[48]), .B(
        SBOX_3_not_1_Masked_z_0_), .Z(SBOX_3_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[49]), .B(
        SBOX_3_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[49]), .B(
        SBOX_3_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_0_Masked_z[0]) );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_0_Masked_z[0]), 
        .B(SBOX_3_xor_0_Masked_x[0]), .Z(SBOX_3_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_0_Masked_z[1]), 
        .B(SBOX_3_xor_0_Masked_x[1]), .Z(SBOX_3_not_6_Masked_z[1]) );
  INV_X1 SBOX_3_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[27]), .ZN(
        SBOX_3_not_2_Masked_z_0_) );
  INV_X1 SBOX_3_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[26]), .ZN(
        SBOX_3_not_3_Masked_z_0_) );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[27]), 
        .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[50]), .B(
        SHARE2_IN[26]), .Z(SBOX_3_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[50]), .B(
        SBOX_3_not_3_Masked_z_0_), .Z(SBOX_3_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[51]), .B(
        SBOX_3_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[51]), .B(
        SBOX_3_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_1_Masked_z[0]) );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_1_Masked_z[0]), 
        .B(SBOX_3_xor_1_Masked_x[0]), .Z(SBOX_3_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_1_Masked_z[1]), 
        .B(SBOX_3_xor_1_Masked_x[1]), .Z(SBOX_3_not_7_Masked_z[1]) );
  INV_X1 SBOX_3_not_4_Masked_not_hpc_U1 ( .A(SBOX_3__s0[7]), .ZN(
        SBOX_3_not_4_Masked_z[0]) );
  INV_X1 SBOX_3_not_5_Masked_not_hpc_U1 ( .A(SBOX_3__s0[6]), .ZN(
        SBOX_3_not_5_Masked_z[0]) );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[52]), .B(
        SBOX_3_not_5_Masked_z[1]), .Z(SBOX_3_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[52]), .B(
        SBOX_3_not_5_Masked_z[0]), .Z(SBOX_3_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[53]), .B(
        SBOX_3_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[53]), .B(
        SBOX_3_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_2_Masked_z[0]) );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_2_Masked_z[0]), 
        .B(SBOX_3_xor_2_Masked_x[0]), .Z(SBOX_3_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_2_Masked_z[1]), 
        .B(SBOX_3_xor_2_Masked_x[1]), .Z(SBOX_3_not_10_Masked_z[1]) );
  INV_X1 SBOX_3_not_6_Masked_not_hpc_U1 ( .A(SBOX_3_xor_0_Masked_z_0_), .ZN(
        SBOX_3_not_6_Masked_z[0]) );
  INV_X1 SBOX_3_not_7_Masked_not_hpc_U1 ( .A(SBOX_3_xor_1_Masked_z_0_), .ZN(
        SBOX_3_not_7_Masked_z[0]) );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[54]), .B(
        SBOX_3_not_7_Masked_z[1]), .Z(SBOX_3_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[54]), .B(
        SBOX_3_not_7_Masked_z[0]), .Z(SBOX_3_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[55]), .B(
        SBOX_3_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[55]), .B(
        SBOX_3_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_3_Masked_z[0]) );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_3_Masked_z[0]), 
        .B(SBOX_3_xor_3_Masked_x[0]), .Z(SBOX_3_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_3_Masked_z[1]), 
        .B(SBOX_3_xor_3_Masked_x[1]), .Z(SBOX_3_not_11_Masked_z[1]) );
  INV_X1 SBOX_3_not_8_Masked_not_hpc_U1 ( .A(SBOX_3__s0_1[7]), .ZN(
        SBOX_3_not_8_Masked_z[0]) );
  INV_X1 SBOX_3_not_9_Masked_not_hpc_U1 ( .A(SBOX_3__s0_1[6]), .ZN(
        SBOX_3_not_9_Masked_z[0]) );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[56]), .B(
        SBOX_3_not_9_Masked_z[1]), .Z(SBOX_3_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_3_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[56]), .B(
        SBOX_3_not_9_Masked_z[0]), .Z(SBOX_3_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[57]), .B(
        SBOX_3_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[57]), .B(
        SBOX_3_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_4_Masked_z[0]) );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_4_Masked_z[0]), 
        .B(SBOX_3_xor_4_Masked_x[0]), .Z(SBOX_3_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_4_Masked_z[1]), 
        .B(SBOX_3_xor_4_Masked_x[1]), .Z(SBOX_3_not_14_Masked_z[1]) );
  INV_X1 SBOX_3_not_10_Masked_not_hpc_U1 ( .A(SBOX_3_xor_2_Masked_z_0_), .ZN(
        SBOX_3_not_10_Masked_z[0]) );
  INV_X1 SBOX_3_not_11_Masked_not_hpc_U1 ( .A(SBOX_3_xor_3_Masked_z_0_), .ZN(
        SBOX_3_not_11_Masked_z[0]) );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[58]), .B(
        SBOX_3_not_11_Masked_z[1]), .Z(SBOX_3_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_3_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[58]), .B(
        SBOX_3_not_11_Masked_z[0]), .Z(SBOX_3_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[59]), .B(
        SBOX_3_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[59]), .B(
        SBOX_3_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_5_Masked_z[0]) );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_5_Masked_z[0]), 
        .B(SBOX_3_xor_5_Masked_x[0]), .Z(SBOX_3_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_5_Masked_z[1]), 
        .B(SBOX_3_xor_5_Masked_x[1]), .Z(SBOX_3_not_15_Masked_z[1]) );
  INV_X1 SBOX_3_not_12_Masked_not_hpc_U1 ( .A(SBOX_3__s0_2[7]), .ZN(
        SBOX_3_not_12_Masked_z[0]) );
  INV_X1 SBOX_3_not_13_Masked_not_hpc_U1 ( .A(SBOX_3__s0_2[6]), .ZN(
        SBOX_3_not_13_Masked_z[0]) );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[60]), .B(
        SBOX_3_not_13_Masked_z[1]), .Z(SBOX_3_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_3_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[60]), .B(
        SBOX_3_not_13_Masked_z[0]), .Z(SBOX_3_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_6_Masked_z[1]) );
  AND2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[61]), .B(
        SBOX_3_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_3_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[61]), .B(
        SBOX_3_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_6_Masked_z[0]), 
        .B(SBOX_3_xor_6_Masked_x[0]), .Z(SHIFTROWS[4]) );
  XOR2_X1 SBOX_3_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_6_Masked_z[1]), 
        .B(SBOX_3_xor_6_Masked_x[1]), .Z(SHIFTROWS[132]) );
  INV_X1 SBOX_3_not_14_Masked_not_hpc_U1 ( .A(SBOX_3_xor_4_Masked_z_0_), .ZN(
        SBOX_3_not_14_Masked_z[0]) );
  INV_X1 SBOX_3_not_15_Masked_not_hpc_U1 ( .A(SBOX_3_xor_5_Masked_z_0_), .ZN(
        SBOX_3_not_15_Masked_z[0]) );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_3_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_3_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_3_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[62]), .B(
        SBOX_3_not_15_Masked_z[1]), .Z(SBOX_3_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_3_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[62]), .B(
        SBOX_3_not_15_Masked_z[0]), .Z(SBOX_3_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_3_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_3_and_7_Masked_z[1]) );
  AND2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[63]), .B(
        SBOX_3_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_3_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_3_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_3_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[63]), .B(
        SBOX_3_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_3_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_3_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_7_Masked_z[0]), 
        .B(SBOX_3_xor_7_Masked_x[0]), .Z(SHIFTROWS[0]) );
  XOR2_X1 SBOX_3_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_7_Masked_z[1]), 
        .B(SBOX_3_xor_7_Masked_x[1]), .Z(SHIFTROWS[128]) );
  DFF_X1 SBOX_4_reg_1_s0_31_reg ( .D(SBOX_4_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_4_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_31_reg ( .D(SBOX_4_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_4_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_30_reg ( .D(SBOX_4_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[49]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_30_reg ( .D(SBOX_4_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[177]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_29_reg ( .D(SBOX_4_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[50]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_29_reg ( .D(SBOX_4_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[178]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_28_reg ( .D(SBOX_4_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[51]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_28_reg ( .D(SBOX_4_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[179]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_27_reg ( .D(SBOX_4_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_4_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_27_reg ( .D(SBOX_4_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_4_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_26_reg ( .D(SBOX_4_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[53]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_26_reg ( .D(SBOX_4_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[181]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_25_reg ( .D(SBOX_4_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[54]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_25_reg ( .D(SBOX_4_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[182]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_24_reg ( .D(SBOX_4_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[55]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_24_reg ( .D(SBOX_4_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[183]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_31_reg ( .D(SBOX_4__s0_2_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_23_reg ( .D(SBOX_4_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_4__s0_2_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_31_reg ( .D(SBOX_4__s1_2_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_23_reg ( .D(SBOX_4_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_4__s1_2_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_29_reg ( .D(SBOX_4__s0_2_1), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_22_reg ( .D(SBOX_4_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_4__s0_2_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_29_reg ( .D(SBOX_4__s1_2_1), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_22_reg ( .D(SBOX_4_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_4__s1_2_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_30_reg ( .D(SBOX_4_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_30_reg ( .D(SBOX_4_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_21_reg ( .D(SBOX_4_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_4_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_21_reg ( .D(SBOX_4_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_4_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_28_reg ( .D(SBOX_4_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_28_reg ( .D(SBOX_4_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_20_reg ( .D(SBOX_4_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_4_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_20_reg ( .D(SBOX_4_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_4_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_27_reg ( .D(SBOX_4__s0_2[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_19_reg ( .D(SBOX_4_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_4__s0_2[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_27_reg ( .D(SBOX_4__s1_2[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_19_reg ( .D(SBOX_4_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_4__s1_2[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_26_reg ( .D(SBOX_4__s0_2[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_18_reg ( .D(SBOX_4_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_4__s0_2[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_26_reg ( .D(SBOX_4__s1_2[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_18_reg ( .D(SBOX_4_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_4__s1_2[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_25_reg ( .D(SBOX_4__s0_2[6]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_17_reg ( .D(SBOX_4_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_4__s0_2[6]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_25_reg ( .D(SBOX_4_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_17_reg ( .D(SBOX_4_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_4_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_24_reg ( .D(SBOX_4__s0_2[7]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_16_reg ( .D(SBOX_4_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_4__s0_2[7]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_24_reg ( .D(SBOX_4_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_16_reg ( .D(SBOX_4_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_4_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_21_reg ( .D(SBOX_4__s0_1_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_15_reg ( .D(SBOX_4_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_4__s0_1_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_21_reg ( .D(SBOX_4__s1_1_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_15_reg ( .D(SBOX_4_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_4__s1_1_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_17_reg ( .D(SBOX_4__s0_1_1), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_14_reg ( .D(SBOX_4_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_4__s0_1_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_17_reg ( .D(SBOX_4__s1_1_1), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_14_reg ( .D(SBOX_4_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_4__s1_1_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_16_reg ( .D(SBOX_4_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_16_reg ( .D(SBOX_4_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_13_reg ( .D(SBOX_4_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_4_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_13_reg ( .D(SBOX_4_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_4_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_22_reg ( .D(SBOX_4_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_22_reg ( .D(SBOX_4_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_12_reg ( .D(SBOX_4_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_4_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_12_reg ( .D(SBOX_4_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_4_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_20_reg ( .D(SBOX_4__s0_1[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_11_reg ( .D(SBOX_4_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_4__s0_1[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_20_reg ( .D(SBOX_4__s1_1[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_11_reg ( .D(SBOX_4_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_4__s1_1[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_23_reg ( .D(SBOX_4__s0_1[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_10_reg ( .D(SBOX_4_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_4__s0_1[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_23_reg ( .D(SBOX_4__s1_1[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_10_reg ( .D(SBOX_4_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_4__s1_1[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_19_reg ( .D(SBOX_4__s0_1[6]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_9_reg ( .D(SBOX_4_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_4__s0_1[6]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_19_reg ( .D(SBOX_4_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_9_reg ( .D(SBOX_4_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_4_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_18_reg ( .D(SBOX_4__s0_1[7]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_8_reg ( .D(SBOX_4_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_4__s0_1[7]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_18_reg ( .D(SBOX_4_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_8_reg ( .D(SBOX_4_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_4_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_13_reg ( .D(SBOX_4__s0_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_7_reg ( .D(SBOX_4_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_4__s0_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_13_reg ( .D(SBOX_4__s1_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_7_reg ( .D(SBOX_4_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_4__s1_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_9_reg ( .D(\SBOX_4/_s0_1 ), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_6_reg ( .D(SBOX_4_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_4/_s0_1 ), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_9_reg ( .D(\SBOX_4/_s1_1 ), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_6_reg ( .D(SBOX_4_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_4/_s1_1 ), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_8_reg ( .D(SBOX_4_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_8_reg ( .D(SBOX_4_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_5_reg ( .D(SBOX_4_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_4_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_5_reg ( .D(SBOX_4_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_4_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_14_reg ( .D(SBOX_4_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_14_reg ( .D(SBOX_4_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_4_reg ( .D(SBOX_4_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_4_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_4_reg ( .D(SBOX_4_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_4_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_12_reg ( .D(SBOX_4__s0[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_3_reg ( .D(SBOX_4_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_4__s0[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_12_reg ( .D(SBOX_4__s1[4]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_3_reg ( .D(SBOX_4_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_4__s1[4]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_15_reg ( .D(SBOX_4__s0[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_2_reg ( .D(SBOX_4_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_4__s0[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_15_reg ( .D(SBOX_4__s1[5]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_2_reg ( .D(SBOX_4_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_4__s1[5]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_11_reg ( .D(SBOX_4__s0[6]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_1_reg ( .D(SBOX_4_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_4__s0[6]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_11_reg ( .D(SBOX_4_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_1_reg ( .D(SBOX_4_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_4_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_10_reg ( .D(SBOX_4__s0[7]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_reg ( .D(SBOX_4_reg_0_s0), .CK(CLK), .Q(SBOX_4__s0[7]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_10_reg ( .D(SBOX_4_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_reg ( .D(SBOX_4_reg_0_s1), .CK(CLK), .Q(
        SBOX_4_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_4_reg ( .D(SHARE2_IN[36]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_4_reg ( .D(SHARE1_IN[36]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_5_reg ( .D(SHARE2_IN[32]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_5_reg ( .D(SHARE1_IN[32]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_6_reg ( .D(SHARE2_IN[35]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_6_reg ( .D(SHARE1_IN[35]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_7_reg ( .D(SHARE2_IN[37]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_3_reg ( .D(SHARE1_IN[38]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_7_reg ( .D(SHARE1_IN[37]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_3_reg ( .D(SHARE2_IN[38]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_2_reg ( .D(SHARE1_IN[39]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_2_reg ( .D(SHARE2_IN[39]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_1_reg ( .D(SHARE1_IN[33]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_1_reg ( .D(SHARE2_IN[33]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_reg ( .D(SHARE1_IN[34]), .CK(CLK), .Q(SBOX_4_reg_0_s0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_reg ( .D(SHARE2_IN[34]), .CK(CLK), .Q(SBOX_4_reg_0_s1), .QN() );
  INV_X1 SBOX_4_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[39]), .ZN(
        SBOX_4_not_0_Masked_z_0_) );
  INV_X1 SBOX_4_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[38]), .ZN(
        SBOX_4_not_1_Masked_z_0_) );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[39]), 
        .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[64]), .B(
        SHARE2_IN[38]), .Z(SBOX_4_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[64]), .B(
        SBOX_4_not_1_Masked_z_0_), .Z(SBOX_4_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[65]), .B(
        SBOX_4_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[65]), .B(
        SBOX_4_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_0_Masked_z[0]) );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_0_Masked_z[0]), 
        .B(SBOX_4_xor_0_Masked_x[0]), .Z(SBOX_4_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_0_Masked_z[1]), 
        .B(SBOX_4_xor_0_Masked_x[1]), .Z(SBOX_4_not_6_Masked_z[1]) );
  INV_X1 SBOX_4_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[35]), .ZN(
        SBOX_4_not_2_Masked_z_0_) );
  INV_X1 SBOX_4_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[34]), .ZN(
        SBOX_4_not_3_Masked_z_0_) );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[35]), 
        .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[66]), .B(
        SHARE2_IN[34]), .Z(SBOX_4_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[66]), .B(
        SBOX_4_not_3_Masked_z_0_), .Z(SBOX_4_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[67]), .B(
        SBOX_4_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[67]), .B(
        SBOX_4_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_1_Masked_z[0]) );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_1_Masked_z[0]), 
        .B(SBOX_4_xor_1_Masked_x[0]), .Z(SBOX_4_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_1_Masked_z[1]), 
        .B(SBOX_4_xor_1_Masked_x[1]), .Z(SBOX_4_not_7_Masked_z[1]) );
  INV_X1 SBOX_4_not_4_Masked_not_hpc_U1 ( .A(SBOX_4__s0[7]), .ZN(
        SBOX_4_not_4_Masked_z[0]) );
  INV_X1 SBOX_4_not_5_Masked_not_hpc_U1 ( .A(SBOX_4__s0[6]), .ZN(
        SBOX_4_not_5_Masked_z[0]) );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[68]), .B(
        SBOX_4_not_5_Masked_z[1]), .Z(SBOX_4_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[68]), .B(
        SBOX_4_not_5_Masked_z[0]), .Z(SBOX_4_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[69]), .B(
        SBOX_4_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[69]), .B(
        SBOX_4_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_2_Masked_z[0]) );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_2_Masked_z[0]), 
        .B(SBOX_4_xor_2_Masked_x[0]), .Z(SBOX_4_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_2_Masked_z[1]), 
        .B(SBOX_4_xor_2_Masked_x[1]), .Z(SBOX_4_not_10_Masked_z[1]) );
  INV_X1 SBOX_4_not_6_Masked_not_hpc_U1 ( .A(SBOX_4_xor_0_Masked_z_0_), .ZN(
        SBOX_4_not_6_Masked_z[0]) );
  INV_X1 SBOX_4_not_7_Masked_not_hpc_U1 ( .A(SBOX_4_xor_1_Masked_z_0_), .ZN(
        SBOX_4_not_7_Masked_z[0]) );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[70]), .B(
        SBOX_4_not_7_Masked_z[1]), .Z(SBOX_4_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[70]), .B(
        SBOX_4_not_7_Masked_z[0]), .Z(SBOX_4_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[71]), .B(
        SBOX_4_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[71]), .B(
        SBOX_4_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_3_Masked_z[0]) );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_3_Masked_z[0]), 
        .B(SBOX_4_xor_3_Masked_x[0]), .Z(SBOX_4_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_3_Masked_z[1]), 
        .B(SBOX_4_xor_3_Masked_x[1]), .Z(SBOX_4_not_11_Masked_z[1]) );
  INV_X1 SBOX_4_not_8_Masked_not_hpc_U1 ( .A(SBOX_4__s0_1[7]), .ZN(
        SBOX_4_not_8_Masked_z[0]) );
  INV_X1 SBOX_4_not_9_Masked_not_hpc_U1 ( .A(SBOX_4__s0_1[6]), .ZN(
        SBOX_4_not_9_Masked_z[0]) );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[72]), .B(
        SBOX_4_not_9_Masked_z[1]), .Z(SBOX_4_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_4_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[72]), .B(
        SBOX_4_not_9_Masked_z[0]), .Z(SBOX_4_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[73]), .B(
        SBOX_4_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[73]), .B(
        SBOX_4_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_4_Masked_z[0]) );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_4_Masked_z[0]), 
        .B(SBOX_4_xor_4_Masked_x[0]), .Z(SBOX_4_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_4_Masked_z[1]), 
        .B(SBOX_4_xor_4_Masked_x[1]), .Z(SBOX_4_not_14_Masked_z[1]) );
  INV_X1 SBOX_4_not_10_Masked_not_hpc_U1 ( .A(SBOX_4_xor_2_Masked_z_0_), .ZN(
        SBOX_4_not_10_Masked_z[0]) );
  INV_X1 SBOX_4_not_11_Masked_not_hpc_U1 ( .A(SBOX_4_xor_3_Masked_z_0_), .ZN(
        SBOX_4_not_11_Masked_z[0]) );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[74]), .B(
        SBOX_4_not_11_Masked_z[1]), .Z(SBOX_4_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_4_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[74]), .B(
        SBOX_4_not_11_Masked_z[0]), .Z(SBOX_4_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[75]), .B(
        SBOX_4_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[75]), .B(
        SBOX_4_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_5_Masked_z[0]) );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_5_Masked_z[0]), 
        .B(SBOX_4_xor_5_Masked_x[0]), .Z(SBOX_4_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_5_Masked_z[1]), 
        .B(SBOX_4_xor_5_Masked_x[1]), .Z(SBOX_4_not_15_Masked_z[1]) );
  INV_X1 SBOX_4_not_12_Masked_not_hpc_U1 ( .A(SBOX_4__s0_2[7]), .ZN(
        SBOX_4_not_12_Masked_z[0]) );
  INV_X1 SBOX_4_not_13_Masked_not_hpc_U1 ( .A(SBOX_4__s0_2[6]), .ZN(
        SBOX_4_not_13_Masked_z[0]) );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[76]), .B(
        SBOX_4_not_13_Masked_z[1]), .Z(SBOX_4_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_4_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[76]), .B(
        SBOX_4_not_13_Masked_z[0]), .Z(SBOX_4_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_6_Masked_z[1]) );
  AND2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[77]), .B(
        SBOX_4_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_4_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[77]), .B(
        SBOX_4_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_6_Masked_z[0]), 
        .B(SBOX_4_xor_6_Masked_x[0]), .Z(SHIFTROWS[52]) );
  XOR2_X1 SBOX_4_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_6_Masked_z[1]), 
        .B(SBOX_4_xor_6_Masked_x[1]), .Z(SHIFTROWS[180]) );
  INV_X1 SBOX_4_not_14_Masked_not_hpc_U1 ( .A(SBOX_4_xor_4_Masked_z_0_), .ZN(
        SBOX_4_not_14_Masked_z[0]) );
  INV_X1 SBOX_4_not_15_Masked_not_hpc_U1 ( .A(SBOX_4_xor_5_Masked_z_0_), .ZN(
        SBOX_4_not_15_Masked_z[0]) );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_4_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_4_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_4_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[78]), .B(
        SBOX_4_not_15_Masked_z[1]), .Z(SBOX_4_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_4_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[78]), .B(
        SBOX_4_not_15_Masked_z[0]), .Z(SBOX_4_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_4_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_4_and_7_Masked_z[1]) );
  AND2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[79]), .B(
        SBOX_4_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_4_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_4_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_4_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[79]), .B(
        SBOX_4_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_4_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_4_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_7_Masked_z[0]), 
        .B(SBOX_4_xor_7_Masked_x[0]), .Z(SHIFTROWS[48]) );
  XOR2_X1 SBOX_4_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_7_Masked_z[1]), 
        .B(SBOX_4_xor_7_Masked_x[1]), .Z(SHIFTROWS[176]) );
  DFF_X1 SBOX_5_reg_1_s0_31_reg ( .D(SBOX_5_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_5_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_31_reg ( .D(SBOX_5_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_5_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_30_reg ( .D(SBOX_5_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[57]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_30_reg ( .D(SBOX_5_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[185]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_29_reg ( .D(SBOX_5_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[58]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_29_reg ( .D(SBOX_5_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[186]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_28_reg ( .D(SBOX_5_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[59]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_28_reg ( .D(SBOX_5_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[187]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_27_reg ( .D(SBOX_5_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_5_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_27_reg ( .D(SBOX_5_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_5_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_26_reg ( .D(SBOX_5_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[61]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_26_reg ( .D(SBOX_5_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[189]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_25_reg ( .D(SBOX_5_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[62]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_25_reg ( .D(SBOX_5_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[190]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_24_reg ( .D(SBOX_5_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[63]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_24_reg ( .D(SBOX_5_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[191]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_31_reg ( .D(SBOX_5__s0_2_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_23_reg ( .D(SBOX_5_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_5__s0_2_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_31_reg ( .D(SBOX_5__s1_2_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_23_reg ( .D(SBOX_5_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_5__s1_2_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_29_reg ( .D(SBOX_5__s0_2_1), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_22_reg ( .D(SBOX_5_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_5__s0_2_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_29_reg ( .D(SBOX_5__s1_2_1), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_22_reg ( .D(SBOX_5_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_5__s1_2_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_30_reg ( .D(SBOX_5_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_30_reg ( .D(SBOX_5_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_21_reg ( .D(SBOX_5_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_5_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_21_reg ( .D(SBOX_5_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_5_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_28_reg ( .D(SBOX_5_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_28_reg ( .D(SBOX_5_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_20_reg ( .D(SBOX_5_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_5_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_20_reg ( .D(SBOX_5_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_5_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_27_reg ( .D(SBOX_5__s0_2[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_19_reg ( .D(SBOX_5_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_5__s0_2[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_27_reg ( .D(SBOX_5__s1_2[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_19_reg ( .D(SBOX_5_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_5__s1_2[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_26_reg ( .D(SBOX_5__s0_2[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_18_reg ( .D(SBOX_5_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_5__s0_2[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_26_reg ( .D(SBOX_5__s1_2[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_18_reg ( .D(SBOX_5_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_5__s1_2[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_25_reg ( .D(SBOX_5__s0_2[6]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_17_reg ( .D(SBOX_5_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_5__s0_2[6]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_25_reg ( .D(SBOX_5_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_17_reg ( .D(SBOX_5_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_5_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_24_reg ( .D(SBOX_5__s0_2[7]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_16_reg ( .D(SBOX_5_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_5__s0_2[7]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_24_reg ( .D(SBOX_5_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_16_reg ( .D(SBOX_5_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_5_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_21_reg ( .D(SBOX_5__s0_1_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_15_reg ( .D(SBOX_5_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_5__s0_1_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_21_reg ( .D(SBOX_5__s1_1_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_15_reg ( .D(SBOX_5_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_5__s1_1_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_17_reg ( .D(SBOX_5__s0_1_1), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_14_reg ( .D(SBOX_5_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_5__s0_1_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_17_reg ( .D(SBOX_5__s1_1_1), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_14_reg ( .D(SBOX_5_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_5__s1_1_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_16_reg ( .D(SBOX_5_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_16_reg ( .D(SBOX_5_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_13_reg ( .D(SBOX_5_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_5_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_13_reg ( .D(SBOX_5_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_5_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_22_reg ( .D(SBOX_5_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_22_reg ( .D(SBOX_5_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_12_reg ( .D(SBOX_5_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_5_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_12_reg ( .D(SBOX_5_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_5_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_20_reg ( .D(SBOX_5__s0_1[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_11_reg ( .D(SBOX_5_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_5__s0_1[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_20_reg ( .D(SBOX_5__s1_1[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_11_reg ( .D(SBOX_5_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_5__s1_1[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_23_reg ( .D(SBOX_5__s0_1[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_10_reg ( .D(SBOX_5_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_5__s0_1[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_23_reg ( .D(SBOX_5__s1_1[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_10_reg ( .D(SBOX_5_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_5__s1_1[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_19_reg ( .D(SBOX_5__s0_1[6]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_9_reg ( .D(SBOX_5_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_5__s0_1[6]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_19_reg ( .D(SBOX_5_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_9_reg ( .D(SBOX_5_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_5_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_18_reg ( .D(SBOX_5__s0_1[7]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_8_reg ( .D(SBOX_5_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_5__s0_1[7]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_18_reg ( .D(SBOX_5_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_8_reg ( .D(SBOX_5_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_5_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_13_reg ( .D(SBOX_5__s0_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_7_reg ( .D(SBOX_5_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_5__s0_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_13_reg ( .D(SBOX_5__s1_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_7_reg ( .D(SBOX_5_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_5__s1_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_9_reg ( .D(\SBOX_5/_s0_1 ), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_6_reg ( .D(SBOX_5_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_5/_s0_1 ), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_9_reg ( .D(\SBOX_5/_s1_1 ), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_6_reg ( .D(SBOX_5_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_5/_s1_1 ), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_8_reg ( .D(SBOX_5_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_8_reg ( .D(SBOX_5_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_5_reg ( .D(SBOX_5_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_5_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_5_reg ( .D(SBOX_5_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_5_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_14_reg ( .D(SBOX_5_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_14_reg ( .D(SBOX_5_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_4_reg ( .D(SBOX_5_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_5_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_4_reg ( .D(SBOX_5_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_5_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_12_reg ( .D(SBOX_5__s0[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_3_reg ( .D(SBOX_5_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_5__s0[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_12_reg ( .D(SBOX_5__s1[4]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_3_reg ( .D(SBOX_5_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_5__s1[4]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_15_reg ( .D(SBOX_5__s0[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_2_reg ( .D(SBOX_5_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_5__s0[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_15_reg ( .D(SBOX_5__s1[5]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_2_reg ( .D(SBOX_5_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_5__s1[5]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_11_reg ( .D(SBOX_5__s0[6]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_1_reg ( .D(SBOX_5_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_5__s0[6]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_11_reg ( .D(SBOX_5_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_1_reg ( .D(SBOX_5_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_5_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_10_reg ( .D(SBOX_5__s0[7]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_reg ( .D(SBOX_5_reg_0_s0), .CK(CLK), .Q(SBOX_5__s0[7]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_10_reg ( .D(SBOX_5_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_reg ( .D(SBOX_5_reg_0_s1), .CK(CLK), .Q(
        SBOX_5_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_4_reg ( .D(SHARE2_IN[44]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_4_reg ( .D(SHARE1_IN[44]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_5_reg ( .D(SHARE2_IN[40]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_5_reg ( .D(SHARE1_IN[40]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_6_reg ( .D(SHARE2_IN[43]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_6_reg ( .D(SHARE1_IN[43]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_7_reg ( .D(SHARE2_IN[45]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_3_reg ( .D(SHARE1_IN[46]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_7_reg ( .D(SHARE1_IN[45]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_3_reg ( .D(SHARE2_IN[46]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_2_reg ( .D(SHARE1_IN[47]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_2_reg ( .D(SHARE2_IN[47]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_1_reg ( .D(SHARE1_IN[41]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_1_reg ( .D(SHARE2_IN[41]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_reg ( .D(SHARE1_IN[42]), .CK(CLK), .Q(SBOX_5_reg_0_s0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_reg ( .D(SHARE2_IN[42]), .CK(CLK), .Q(SBOX_5_reg_0_s1), .QN() );
  INV_X1 SBOX_5_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[47]), .ZN(
        SBOX_5_not_0_Masked_z_0_) );
  INV_X1 SBOX_5_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[46]), .ZN(
        SBOX_5_not_1_Masked_z_0_) );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[47]), 
        .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[80]), .B(
        SHARE2_IN[46]), .Z(SBOX_5_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[80]), .B(
        SBOX_5_not_1_Masked_z_0_), .Z(SBOX_5_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[81]), .B(
        SBOX_5_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[81]), .B(
        SBOX_5_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_0_Masked_z[0]) );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_0_Masked_z[0]), 
        .B(SBOX_5_xor_0_Masked_x[0]), .Z(SBOX_5_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_0_Masked_z[1]), 
        .B(SBOX_5_xor_0_Masked_x[1]), .Z(SBOX_5_not_6_Masked_z[1]) );
  INV_X1 SBOX_5_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[43]), .ZN(
        SBOX_5_not_2_Masked_z_0_) );
  INV_X1 SBOX_5_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[42]), .ZN(
        SBOX_5_not_3_Masked_z_0_) );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[43]), 
        .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[82]), .B(
        SHARE2_IN[42]), .Z(SBOX_5_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[82]), .B(
        SBOX_5_not_3_Masked_z_0_), .Z(SBOX_5_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[83]), .B(
        SBOX_5_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[83]), .B(
        SBOX_5_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_1_Masked_z[0]) );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_1_Masked_z[0]), 
        .B(SBOX_5_xor_1_Masked_x[0]), .Z(SBOX_5_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_1_Masked_z[1]), 
        .B(SBOX_5_xor_1_Masked_x[1]), .Z(SBOX_5_not_7_Masked_z[1]) );
  INV_X1 SBOX_5_not_4_Masked_not_hpc_U1 ( .A(SBOX_5__s0[7]), .ZN(
        SBOX_5_not_4_Masked_z[0]) );
  INV_X1 SBOX_5_not_5_Masked_not_hpc_U1 ( .A(SBOX_5__s0[6]), .ZN(
        SBOX_5_not_5_Masked_z[0]) );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[84]), .B(
        SBOX_5_not_5_Masked_z[1]), .Z(SBOX_5_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[84]), .B(
        SBOX_5_not_5_Masked_z[0]), .Z(SBOX_5_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[85]), .B(
        SBOX_5_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[85]), .B(
        SBOX_5_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_2_Masked_z[0]) );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_2_Masked_z[0]), 
        .B(SBOX_5_xor_2_Masked_x[0]), .Z(SBOX_5_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_2_Masked_z[1]), 
        .B(SBOX_5_xor_2_Masked_x[1]), .Z(SBOX_5_not_10_Masked_z[1]) );
  INV_X1 SBOX_5_not_6_Masked_not_hpc_U1 ( .A(SBOX_5_xor_0_Masked_z_0_), .ZN(
        SBOX_5_not_6_Masked_z[0]) );
  INV_X1 SBOX_5_not_7_Masked_not_hpc_U1 ( .A(SBOX_5_xor_1_Masked_z_0_), .ZN(
        SBOX_5_not_7_Masked_z[0]) );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[86]), .B(
        SBOX_5_not_7_Masked_z[1]), .Z(SBOX_5_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[86]), .B(
        SBOX_5_not_7_Masked_z[0]), .Z(SBOX_5_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[87]), .B(
        SBOX_5_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[87]), .B(
        SBOX_5_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_3_Masked_z[0]) );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_3_Masked_z[0]), 
        .B(SBOX_5_xor_3_Masked_x[0]), .Z(SBOX_5_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_3_Masked_z[1]), 
        .B(SBOX_5_xor_3_Masked_x[1]), .Z(SBOX_5_not_11_Masked_z[1]) );
  INV_X1 SBOX_5_not_8_Masked_not_hpc_U1 ( .A(SBOX_5__s0_1[7]), .ZN(
        SBOX_5_not_8_Masked_z[0]) );
  INV_X1 SBOX_5_not_9_Masked_not_hpc_U1 ( .A(SBOX_5__s0_1[6]), .ZN(
        SBOX_5_not_9_Masked_z[0]) );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[88]), .B(
        SBOX_5_not_9_Masked_z[1]), .Z(SBOX_5_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_5_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[88]), .B(
        SBOX_5_not_9_Masked_z[0]), .Z(SBOX_5_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[89]), .B(
        SBOX_5_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[89]), .B(
        SBOX_5_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_4_Masked_z[0]) );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_4_Masked_z[0]), 
        .B(SBOX_5_xor_4_Masked_x[0]), .Z(SBOX_5_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_4_Masked_z[1]), 
        .B(SBOX_5_xor_4_Masked_x[1]), .Z(SBOX_5_not_14_Masked_z[1]) );
  INV_X1 SBOX_5_not_10_Masked_not_hpc_U1 ( .A(SBOX_5_xor_2_Masked_z_0_), .ZN(
        SBOX_5_not_10_Masked_z[0]) );
  INV_X1 SBOX_5_not_11_Masked_not_hpc_U1 ( .A(SBOX_5_xor_3_Masked_z_0_), .ZN(
        SBOX_5_not_11_Masked_z[0]) );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[90]), .B(
        SBOX_5_not_11_Masked_z[1]), .Z(SBOX_5_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_5_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[90]), .B(
        SBOX_5_not_11_Masked_z[0]), .Z(SBOX_5_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[91]), .B(
        SBOX_5_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[91]), .B(
        SBOX_5_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_5_Masked_z[0]) );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_5_Masked_z[0]), 
        .B(SBOX_5_xor_5_Masked_x[0]), .Z(SBOX_5_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_5_Masked_z[1]), 
        .B(SBOX_5_xor_5_Masked_x[1]), .Z(SBOX_5_not_15_Masked_z[1]) );
  INV_X1 SBOX_5_not_12_Masked_not_hpc_U1 ( .A(SBOX_5__s0_2[7]), .ZN(
        SBOX_5_not_12_Masked_z[0]) );
  INV_X1 SBOX_5_not_13_Masked_not_hpc_U1 ( .A(SBOX_5__s0_2[6]), .ZN(
        SBOX_5_not_13_Masked_z[0]) );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[92]), .B(
        SBOX_5_not_13_Masked_z[1]), .Z(SBOX_5_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_5_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[92]), .B(
        SBOX_5_not_13_Masked_z[0]), .Z(SBOX_5_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_6_Masked_z[1]) );
  AND2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[93]), .B(
        SBOX_5_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_5_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[93]), .B(
        SBOX_5_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_6_Masked_z[0]), 
        .B(SBOX_5_xor_6_Masked_x[0]), .Z(SHIFTROWS[60]) );
  XOR2_X1 SBOX_5_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_6_Masked_z[1]), 
        .B(SBOX_5_xor_6_Masked_x[1]), .Z(SHIFTROWS[188]) );
  INV_X1 SBOX_5_not_14_Masked_not_hpc_U1 ( .A(SBOX_5_xor_4_Masked_z_0_), .ZN(
        SBOX_5_not_14_Masked_z[0]) );
  INV_X1 SBOX_5_not_15_Masked_not_hpc_U1 ( .A(SBOX_5_xor_5_Masked_z_0_), .ZN(
        SBOX_5_not_15_Masked_z[0]) );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_5_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_5_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_5_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[94]), .B(
        SBOX_5_not_15_Masked_z[1]), .Z(SBOX_5_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_5_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[94]), .B(
        SBOX_5_not_15_Masked_z[0]), .Z(SBOX_5_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_5_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_5_and_7_Masked_z[1]) );
  AND2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[95]), .B(
        SBOX_5_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_5_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_5_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_5_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[95]), .B(
        SBOX_5_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_5_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_5_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_7_Masked_z[0]), 
        .B(SBOX_5_xor_7_Masked_x[0]), .Z(SHIFTROWS[56]) );
  XOR2_X1 SBOX_5_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_7_Masked_z[1]), 
        .B(SBOX_5_xor_7_Masked_x[1]), .Z(SHIFTROWS[184]) );
  DFF_X1 SBOX_6_reg_1_s0_31_reg ( .D(SBOX_6_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_6_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_31_reg ( .D(SBOX_6_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_6_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_30_reg ( .D(SBOX_6_reg_0_s0_30), .CK(CLK), .Q(
        SHIFTROWS[33]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_30_reg ( .D(SBOX_6_reg_0_s1_30), .CK(CLK), .Q(
        SHIFTROWS[161]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_29_reg ( .D(SBOX_6_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[34]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_29_reg ( .D(SBOX_6_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[162]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_28_reg ( .D(SBOX_6_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[35]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_28_reg ( .D(SBOX_6_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[163]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_27_reg ( .D(SBOX_6_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_6_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_27_reg ( .D(SBOX_6_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_6_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_26_reg ( .D(SBOX_6_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[37]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_26_reg ( .D(SBOX_6_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[165]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_25_reg ( .D(SBOX_6_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[38]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_25_reg ( .D(SBOX_6_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[166]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_24_reg ( .D(SBOX_6_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[39]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_24_reg ( .D(SBOX_6_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[167]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_31_reg ( .D(SBOX_6__s0_2_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_23_reg ( .D(SBOX_6_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_6__s0_2_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_31_reg ( .D(SBOX_6__s1_2_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_23_reg ( .D(SBOX_6_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_6__s1_2_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_29_reg ( .D(SBOX_6__s0_2_1), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_22_reg ( .D(SBOX_6_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_6__s0_2_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_29_reg ( .D(SBOX_6__s1_2_1), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_22_reg ( .D(SBOX_6_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_6__s1_2_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_30_reg ( .D(SBOX_6_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_30_reg ( .D(SBOX_6_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_21_reg ( .D(SBOX_6_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_6_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_21_reg ( .D(SBOX_6_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_6_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_28_reg ( .D(SBOX_6_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_28_reg ( .D(SBOX_6_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_20_reg ( .D(SBOX_6_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_6_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_20_reg ( .D(SBOX_6_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_6_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_27_reg ( .D(SBOX_6__s0_2[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_19_reg ( .D(SBOX_6_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_6__s0_2[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_27_reg ( .D(SBOX_6__s1_2[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_19_reg ( .D(SBOX_6_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_6__s1_2[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_26_reg ( .D(SBOX_6__s0_2[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_18_reg ( .D(SBOX_6_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_6__s0_2[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_26_reg ( .D(SBOX_6__s1_2[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_18_reg ( .D(SBOX_6_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_6__s1_2[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_25_reg ( .D(SBOX_6__s0_2[6]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_17_reg ( .D(SBOX_6_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_6__s0_2[6]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_25_reg ( .D(SBOX_6_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_17_reg ( .D(SBOX_6_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_6_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_24_reg ( .D(SBOX_6__s0_2[7]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_16_reg ( .D(SBOX_6_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_6__s0_2[7]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_24_reg ( .D(SBOX_6_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_16_reg ( .D(SBOX_6_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_6_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_21_reg ( .D(SBOX_6__s0_1_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_15_reg ( .D(SBOX_6_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_6__s0_1_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_21_reg ( .D(SBOX_6__s1_1_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_15_reg ( .D(SBOX_6_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_6__s1_1_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_17_reg ( .D(SBOX_6__s0_1_1), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_14_reg ( .D(SBOX_6_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_6__s0_1_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_17_reg ( .D(SBOX_6__s1_1_1), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_14_reg ( .D(SBOX_6_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_6__s1_1_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_16_reg ( .D(SBOX_6_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_16_reg ( .D(SBOX_6_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_13_reg ( .D(SBOX_6_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_6_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_13_reg ( .D(SBOX_6_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_6_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_22_reg ( .D(SBOX_6_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_22_reg ( .D(SBOX_6_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_12_reg ( .D(SBOX_6_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_6_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_12_reg ( .D(SBOX_6_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_6_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_20_reg ( .D(SBOX_6__s0_1[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_11_reg ( .D(SBOX_6_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_6__s0_1[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_20_reg ( .D(SBOX_6__s1_1[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_11_reg ( .D(SBOX_6_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_6__s1_1[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_23_reg ( .D(SBOX_6__s0_1[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_10_reg ( .D(SBOX_6_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_6__s0_1[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_23_reg ( .D(SBOX_6__s1_1[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_10_reg ( .D(SBOX_6_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_6__s1_1[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_19_reg ( .D(SBOX_6__s0_1[6]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_9_reg ( .D(SBOX_6_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_6__s0_1[6]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_19_reg ( .D(SBOX_6_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_9_reg ( .D(SBOX_6_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_6_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_18_reg ( .D(SBOX_6__s0_1[7]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_8_reg ( .D(SBOX_6_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_6__s0_1[7]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_18_reg ( .D(SBOX_6_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_8_reg ( .D(SBOX_6_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_6_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_13_reg ( .D(SBOX_6__s0_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_7_reg ( .D(SBOX_6_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_6__s0_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_13_reg ( .D(SBOX_6__s1_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_7_reg ( .D(SBOX_6_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_6__s1_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_9_reg ( .D(\SBOX_6/_s0_1 ), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_6_reg ( .D(SBOX_6_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_6/_s0_1 ), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_9_reg ( .D(\SBOX_6/_s1_1 ), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_6_reg ( .D(SBOX_6_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_6/_s1_1 ), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_8_reg ( .D(SBOX_6_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_8_reg ( .D(SBOX_6_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_5_reg ( .D(SBOX_6_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_6_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_5_reg ( .D(SBOX_6_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_6_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_14_reg ( .D(SBOX_6_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_14_reg ( .D(SBOX_6_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_4_reg ( .D(SBOX_6_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_6_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_4_reg ( .D(SBOX_6_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_6_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_12_reg ( .D(SBOX_6__s0[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_3_reg ( .D(SBOX_6_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_6__s0[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_12_reg ( .D(SBOX_6__s1[4]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_3_reg ( .D(SBOX_6_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_6__s1[4]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_15_reg ( .D(SBOX_6__s0[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_2_reg ( .D(SBOX_6_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_6__s0[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_15_reg ( .D(SBOX_6__s1[5]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_2_reg ( .D(SBOX_6_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_6__s1[5]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_11_reg ( .D(SBOX_6__s0[6]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_1_reg ( .D(SBOX_6_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_6__s0[6]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_11_reg ( .D(SBOX_6_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_1_reg ( .D(SBOX_6_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_6_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_10_reg ( .D(SBOX_6__s0[7]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_reg ( .D(SBOX_6_reg_0_s0), .CK(CLK), .Q(SBOX_6__s0[7]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_10_reg ( .D(SBOX_6_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_reg ( .D(SBOX_6_reg_0_s1), .CK(CLK), .Q(
        SBOX_6_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_4_reg ( .D(SHARE2_IN[52]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_4_reg ( .D(SHARE1_IN[52]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_5_reg ( .D(SHARE2_IN[48]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_5_reg ( .D(SHARE1_IN[48]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_6_reg ( .D(SHARE2_IN[51]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_6_reg ( .D(SHARE1_IN[51]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_7_reg ( .D(SHARE2_IN[53]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_3_reg ( .D(SHARE1_IN[54]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_7_reg ( .D(SHARE1_IN[53]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_3_reg ( .D(SHARE2_IN[54]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_2_reg ( .D(SHARE1_IN[55]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_2_reg ( .D(SHARE2_IN[55]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_1_reg ( .D(SHARE1_IN[49]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_1_reg ( .D(SHARE2_IN[49]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_reg ( .D(SHARE1_IN[50]), .CK(CLK), .Q(SBOX_6_reg_0_s0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_reg ( .D(SHARE2_IN[50]), .CK(CLK), .Q(SBOX_6_reg_0_s1), .QN() );
  INV_X1 SBOX_6_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[55]), .ZN(
        SBOX_6_not_0_Masked_z_0_) );
  INV_X1 SBOX_6_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[54]), .ZN(
        SBOX_6_not_1_Masked_z_0_) );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[55]), 
        .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[96]), .B(
        SHARE2_IN[54]), .Z(SBOX_6_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[96]), .B(
        SBOX_6_not_1_Masked_z_0_), .Z(SBOX_6_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[97]), .B(
        SBOX_6_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[97]), .B(
        SBOX_6_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_0_Masked_z[0]) );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_0_Masked_z[0]), 
        .B(SBOX_6_xor_0_Masked_x[0]), .Z(SBOX_6_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_0_Masked_z[1]), 
        .B(SBOX_6_xor_0_Masked_x[1]), .Z(SBOX_6_not_6_Masked_z[1]) );
  INV_X1 SBOX_6_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[51]), .ZN(
        SBOX_6_not_2_Masked_z_0_) );
  INV_X1 SBOX_6_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[50]), .ZN(
        SBOX_6_not_3_Masked_z_0_) );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[51]), 
        .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[98]), .B(
        SHARE2_IN[50]), .Z(SBOX_6_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[98]), .B(
        SBOX_6_not_3_Masked_z_0_), .Z(SBOX_6_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[99]), .B(
        SBOX_6_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[99]), .B(
        SBOX_6_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_1_Masked_z[0]) );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_1_Masked_z[0]), 
        .B(SBOX_6_xor_1_Masked_x[0]), .Z(SBOX_6_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_1_Masked_z[1]), 
        .B(SBOX_6_xor_1_Masked_x[1]), .Z(SBOX_6_not_7_Masked_z[1]) );
  INV_X1 SBOX_6_not_4_Masked_not_hpc_U1 ( .A(SBOX_6__s0[7]), .ZN(
        SBOX_6_not_4_Masked_z[0]) );
  INV_X1 SBOX_6_not_5_Masked_not_hpc_U1 ( .A(SBOX_6__s0[6]), .ZN(
        SBOX_6_not_5_Masked_z[0]) );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[100]), .B(
        SBOX_6_not_5_Masked_z[1]), .Z(SBOX_6_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[100]), .B(
        SBOX_6_not_5_Masked_z[0]), .Z(SBOX_6_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[101]), .B(
        SBOX_6_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[101]), .B(
        SBOX_6_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_2_Masked_z[0]) );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_2_Masked_z[0]), 
        .B(SBOX_6_xor_2_Masked_x[0]), .Z(SBOX_6_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_2_Masked_z[1]), 
        .B(SBOX_6_xor_2_Masked_x[1]), .Z(SBOX_6_not_10_Masked_z[1]) );
  INV_X1 SBOX_6_not_6_Masked_not_hpc_U1 ( .A(SBOX_6_xor_0_Masked_z_0_), .ZN(
        SBOX_6_not_6_Masked_z[0]) );
  INV_X1 SBOX_6_not_7_Masked_not_hpc_U1 ( .A(SBOX_6_xor_1_Masked_z_0_), .ZN(
        SBOX_6_not_7_Masked_z[0]) );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[102]), .B(
        SBOX_6_not_7_Masked_z[1]), .Z(SBOX_6_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[102]), .B(
        SBOX_6_not_7_Masked_z[0]), .Z(SBOX_6_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[103]), .B(
        SBOX_6_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[103]), .B(
        SBOX_6_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_3_Masked_z[0]) );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_3_Masked_z[0]), 
        .B(SBOX_6_xor_3_Masked_x[0]), .Z(SBOX_6_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_3_Masked_z[1]), 
        .B(SBOX_6_xor_3_Masked_x[1]), .Z(SBOX_6_not_11_Masked_z[1]) );
  INV_X1 SBOX_6_not_8_Masked_not_hpc_U1 ( .A(SBOX_6__s0_1[7]), .ZN(
        SBOX_6_not_8_Masked_z[0]) );
  INV_X1 SBOX_6_not_9_Masked_not_hpc_U1 ( .A(SBOX_6__s0_1[6]), .ZN(
        SBOX_6_not_9_Masked_z[0]) );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[104]), .B(
        SBOX_6_not_9_Masked_z[1]), .Z(SBOX_6_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_6_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[104]), .B(
        SBOX_6_not_9_Masked_z[0]), .Z(SBOX_6_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[105]), .B(
        SBOX_6_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[105]), .B(
        SBOX_6_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_4_Masked_z[0]) );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_4_Masked_z[0]), 
        .B(SBOX_6_xor_4_Masked_x[0]), .Z(SBOX_6_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_4_Masked_z[1]), 
        .B(SBOX_6_xor_4_Masked_x[1]), .Z(SBOX_6_not_14_Masked_z[1]) );
  INV_X1 SBOX_6_not_10_Masked_not_hpc_U1 ( .A(SBOX_6_xor_2_Masked_z_0_), .ZN(
        SBOX_6_not_10_Masked_z[0]) );
  INV_X1 SBOX_6_not_11_Masked_not_hpc_U1 ( .A(SBOX_6_xor_3_Masked_z_0_), .ZN(
        SBOX_6_not_11_Masked_z[0]) );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[106]), .B(
        SBOX_6_not_11_Masked_z[1]), .Z(SBOX_6_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_6_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[106]), .B(
        SBOX_6_not_11_Masked_z[0]), .Z(SBOX_6_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[107]), .B(
        SBOX_6_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[107]), .B(
        SBOX_6_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_5_Masked_z[0]) );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_5_Masked_z[0]), 
        .B(SBOX_6_xor_5_Masked_x[0]), .Z(SBOX_6_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_5_Masked_z[1]), 
        .B(SBOX_6_xor_5_Masked_x[1]), .Z(SBOX_6_not_15_Masked_z[1]) );
  INV_X1 SBOX_6_not_12_Masked_not_hpc_U1 ( .A(SBOX_6__s0_2[7]), .ZN(
        SBOX_6_not_12_Masked_z[0]) );
  INV_X1 SBOX_6_not_13_Masked_not_hpc_U1 ( .A(SBOX_6__s0_2[6]), .ZN(
        SBOX_6_not_13_Masked_z[0]) );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[108]), .B(
        SBOX_6_not_13_Masked_z[1]), .Z(SBOX_6_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_6_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[108]), .B(
        SBOX_6_not_13_Masked_z[0]), .Z(SBOX_6_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_6_Masked_z[1]) );
  AND2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[109]), .B(
        SBOX_6_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_6_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[109]), .B(
        SBOX_6_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_6_Masked_z[0]), 
        .B(SBOX_6_xor_6_Masked_x[0]), .Z(SHIFTROWS[36]) );
  XOR2_X1 SBOX_6_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_6_Masked_z[1]), 
        .B(SBOX_6_xor_6_Masked_x[1]), .Z(SHIFTROWS[164]) );
  INV_X1 SBOX_6_not_14_Masked_not_hpc_U1 ( .A(SBOX_6_xor_4_Masked_z_0_), .ZN(
        SBOX_6_not_14_Masked_z[0]) );
  INV_X1 SBOX_6_not_15_Masked_not_hpc_U1 ( .A(SBOX_6_xor_5_Masked_z_0_), .ZN(
        SBOX_6_not_15_Masked_z[0]) );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_6_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_6_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_6_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[110]), .B(
        SBOX_6_not_15_Masked_z[1]), .Z(SBOX_6_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_6_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[110]), .B(
        SBOX_6_not_15_Masked_z[0]), .Z(SBOX_6_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_6_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_6_and_7_Masked_z[1]) );
  AND2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[111]), .B(
        SBOX_6_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_6_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_6_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_6_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[111]), .B(
        SBOX_6_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_6_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_6_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_7_Masked_z[0]), 
        .B(SBOX_6_xor_7_Masked_x[0]), .Z(SHIFTROWS[32]) );
  XOR2_X1 SBOX_6_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_7_Masked_z[1]), 
        .B(SBOX_6_xor_7_Masked_x[1]), .Z(SHIFTROWS[160]) );
  DFF_X1 SBOX_7_reg_1_s0_31_reg ( .D(SBOX_7_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_7_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_31_reg ( .D(SBOX_7_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_7_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_30_reg ( .D(SBOX_7_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[57]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_30_reg ( .D(SBOX_7_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[185]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_29_reg ( .D(SBOX_7_reg_0_s0_29), .CK(CLK), .Q(
        SHIFTROWS[42]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_29_reg ( .D(SBOX_7_reg_0_s1_29), .CK(CLK), .Q(
        SHIFTROWS[170]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_28_reg ( .D(SBOX_7_reg_0_s0_28), .CK(CLK), .Q(
        SHIFTROWS[43]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_28_reg ( .D(SBOX_7_reg_0_s1_28), .CK(CLK), .Q(
        SHIFTROWS[171]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_27_reg ( .D(SBOX_7_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_7_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_27_reg ( .D(SBOX_7_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_7_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_26_reg ( .D(SBOX_7_reg_0_s0_26), .CK(CLK), .Q(
        SHIFTROWS[45]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_26_reg ( .D(SBOX_7_reg_0_s1_26), .CK(CLK), .Q(
        SHIFTROWS[173]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_25_reg ( .D(SBOX_7_reg_0_s0_25), .CK(CLK), .Q(
        SHIFTROWS[46]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_25_reg ( .D(SBOX_7_reg_0_s1_25), .CK(CLK), .Q(
        SHIFTROWS[174]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_24_reg ( .D(SBOX_7_reg_0_s0_24), .CK(CLK), .Q(
        SHIFTROWS[47]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_24_reg ( .D(SBOX_7_reg_0_s1_24), .CK(CLK), .Q(
        SHIFTROWS[175]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_31_reg ( .D(SBOX_7__s0_2_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_23_reg ( .D(SBOX_7_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_7__s0_2_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_31_reg ( .D(SBOX_7__s1_2_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_23_reg ( .D(SBOX_7_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_7__s1_2_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_29_reg ( .D(SBOX_7__s0_2_1), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_22_reg ( .D(SBOX_7_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_7__s0_2_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_29_reg ( .D(SBOX_7__s1_2_1), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_22_reg ( .D(SBOX_7_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_7__s1_2_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_30_reg ( .D(SBOX_7_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_30_reg ( .D(SBOX_7_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_21_reg ( .D(SBOX_7_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_7_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_21_reg ( .D(SBOX_7_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_7_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_28_reg ( .D(SBOX_7_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_28_reg ( .D(SBOX_7_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_20_reg ( .D(SBOX_7_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_7_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_20_reg ( .D(SBOX_7_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_7_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_27_reg ( .D(SBOX_7__s0_2[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_19_reg ( .D(SBOX_7_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_7__s0_2[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_27_reg ( .D(SBOX_7__s1_2[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_19_reg ( .D(SBOX_7_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_7__s1_2[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_26_reg ( .D(SBOX_7__s0_2[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_18_reg ( .D(SBOX_7_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_7__s0_2[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_26_reg ( .D(SBOX_7__s1_2[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_18_reg ( .D(SBOX_7_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_7__s1_2[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_25_reg ( .D(SBOX_7__s0_2[6]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_17_reg ( .D(SBOX_7_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_7__s0_2[6]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_25_reg ( .D(SBOX_7_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_17_reg ( .D(SBOX_7_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_7_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_24_reg ( .D(SBOX_7__s0_2[7]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_16_reg ( .D(SBOX_7_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_7__s0_2[7]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_24_reg ( .D(SBOX_7_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_16_reg ( .D(SBOX_7_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_7_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_21_reg ( .D(SBOX_7__s0_1_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_15_reg ( .D(SBOX_7_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_7__s0_1_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_21_reg ( .D(SBOX_7__s1_1_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_15_reg ( .D(SBOX_7_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_7__s1_1_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_17_reg ( .D(SBOX_7__s0_1_1), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_14_reg ( .D(SBOX_7_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_7__s0_1_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_17_reg ( .D(SBOX_7__s1_1_1), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_14_reg ( .D(SBOX_7_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_7__s1_1_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_16_reg ( .D(SBOX_7_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_16_reg ( .D(SBOX_7_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_13_reg ( .D(SBOX_7_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_7_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_13_reg ( .D(SBOX_7_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_7_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_22_reg ( .D(SBOX_7_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_22_reg ( .D(SBOX_7_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_12_reg ( .D(SBOX_7_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_7_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_12_reg ( .D(SBOX_7_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_7_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_20_reg ( .D(SBOX_7__s0_1[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_11_reg ( .D(SBOX_7_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_7__s0_1[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_20_reg ( .D(SBOX_7__s1_1[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_11_reg ( .D(SBOX_7_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_7__s1_1[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_23_reg ( .D(SBOX_7__s0_1[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_10_reg ( .D(SBOX_7_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_7__s0_1[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_23_reg ( .D(SBOX_7__s1_1[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_10_reg ( .D(SBOX_7_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_7__s1_1[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_19_reg ( .D(SBOX_7__s0_1[6]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_9_reg ( .D(SBOX_7_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_7__s0_1[6]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_19_reg ( .D(SBOX_7_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_9_reg ( .D(SBOX_7_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_7_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_18_reg ( .D(SBOX_7__s0_1[7]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_8_reg ( .D(SBOX_7_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_7__s0_1[7]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_18_reg ( .D(SBOX_7_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_8_reg ( .D(SBOX_7_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_7_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_13_reg ( .D(SBOX_7__s0_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_7_reg ( .D(SBOX_7_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_7__s0_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_13_reg ( .D(SBOX_7__s1_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_7_reg ( .D(SBOX_7_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_7__s1_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_9_reg ( .D(\SBOX_7/_s0_1 ), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_6_reg ( .D(SBOX_7_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_7/_s0_1 ), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_9_reg ( .D(\SBOX_7/_s1_1 ), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_6_reg ( .D(SBOX_7_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_7/_s1_1 ), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_8_reg ( .D(SBOX_7_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_8_reg ( .D(SBOX_7_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_5_reg ( .D(SBOX_7_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_7_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_5_reg ( .D(SBOX_7_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_7_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_14_reg ( .D(SBOX_7_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_14_reg ( .D(SBOX_7_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_4_reg ( .D(SBOX_7_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_7_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_4_reg ( .D(SBOX_7_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_7_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_12_reg ( .D(SBOX_7__s0[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_3_reg ( .D(SBOX_7_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_7__s0[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_12_reg ( .D(SBOX_7__s1[4]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_3_reg ( .D(SBOX_7_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_7__s1[4]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_15_reg ( .D(SBOX_7__s0[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_2_reg ( .D(SBOX_7_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_7__s0[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_15_reg ( .D(SBOX_7__s1[5]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_2_reg ( .D(SBOX_7_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_7__s1[5]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_11_reg ( .D(SBOX_7__s0[6]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_1_reg ( .D(SBOX_7_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_7__s0[6]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_11_reg ( .D(SBOX_7_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_1_reg ( .D(SBOX_7_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_7_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_10_reg ( .D(SBOX_7__s0[7]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_reg ( .D(SBOX_7_reg_0_s0), .CK(CLK), .Q(SBOX_7__s0[7]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_10_reg ( .D(SBOX_7_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_reg ( .D(SBOX_7_reg_0_s1), .CK(CLK), .Q(
        SBOX_7_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_4_reg ( .D(SHARE2_IN[60]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_4_reg ( .D(SHARE1_IN[60]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_5_reg ( .D(SHARE2_IN[56]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_5_reg ( .D(SHARE1_IN[56]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_6_reg ( .D(SHARE2_IN[59]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_6_reg ( .D(SHARE1_IN[59]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_7_reg ( .D(SHARE2_IN[61]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_3_reg ( .D(SHARE1_IN[62]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_7_reg ( .D(SHARE1_IN[61]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_3_reg ( .D(SHARE2_IN[62]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_2_reg ( .D(SHARE1_IN[63]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_2_reg ( .D(SHARE2_IN[63]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_1_reg ( .D(SHARE1_IN[57]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_1_reg ( .D(SHARE2_IN[57]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_reg ( .D(SHARE1_IN[58]), .CK(CLK), .Q(SBOX_7_reg_0_s0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_reg ( .D(SHARE2_IN[58]), .CK(CLK), .Q(SBOX_7_reg_0_s1), .QN() );
  INV_X1 SBOX_7_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[63]), .ZN(
        SBOX_7_not_0_Masked_z_0_) );
  INV_X1 SBOX_7_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[62]), .ZN(
        SBOX_7_not_1_Masked_z_0_) );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[63]), 
        .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[112]), .B(
        SHARE2_IN[62]), .Z(SBOX_7_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[112]), .B(
        SBOX_7_not_1_Masked_z_0_), .Z(SBOX_7_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[113]), .B(
        SBOX_7_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[113]), .B(
        SBOX_7_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_0_Masked_z[0]) );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_0_Masked_z[0]), 
        .B(SBOX_7_xor_0_Masked_x[0]), .Z(SBOX_7_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_0_Masked_z[1]), 
        .B(SBOX_7_xor_0_Masked_x[1]), .Z(SBOX_7_not_6_Masked_z[1]) );
  INV_X1 SBOX_7_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[59]), .ZN(
        SBOX_7_not_2_Masked_z_0_) );
  INV_X1 SBOX_7_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[58]), .ZN(
        SBOX_7_not_3_Masked_z_0_) );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[59]), 
        .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[114]), .B(
        SHARE2_IN[58]), .Z(SBOX_7_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[114]), .B(
        SBOX_7_not_3_Masked_z_0_), .Z(SBOX_7_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[115]), .B(
        SBOX_7_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[115]), .B(
        SBOX_7_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_1_Masked_z[0]) );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_1_Masked_z[0]), 
        .B(SBOX_7_xor_1_Masked_x[0]), .Z(SBOX_7_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_1_Masked_z[1]), 
        .B(SBOX_7_xor_1_Masked_x[1]), .Z(SBOX_7_not_7_Masked_z[1]) );
  INV_X1 SBOX_7_not_4_Masked_not_hpc_U1 ( .A(SBOX_7__s0[7]), .ZN(
        SBOX_7_not_4_Masked_z[0]) );
  INV_X1 SBOX_7_not_5_Masked_not_hpc_U1 ( .A(SBOX_7__s0[6]), .ZN(
        SBOX_7_not_5_Masked_z[0]) );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[116]), .B(
        SBOX_7_not_5_Masked_z[1]), .Z(SBOX_7_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[116]), .B(
        SBOX_7_not_5_Masked_z[0]), .Z(SBOX_7_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[117]), .B(
        SBOX_7_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[117]), .B(
        SBOX_7_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_2_Masked_z[0]) );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_2_Masked_z[0]), 
        .B(SBOX_7_xor_2_Masked_x[0]), .Z(SBOX_7_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_2_Masked_z[1]), 
        .B(SBOX_7_xor_2_Masked_x[1]), .Z(SBOX_7_not_10_Masked_z[1]) );
  INV_X1 SBOX_7_not_6_Masked_not_hpc_U1 ( .A(SBOX_7_xor_0_Masked_z_0_), .ZN(
        SBOX_7_not_6_Masked_z[0]) );
  INV_X1 SBOX_7_not_7_Masked_not_hpc_U1 ( .A(SBOX_7_xor_1_Masked_z_0_), .ZN(
        SBOX_7_not_7_Masked_z[0]) );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[118]), .B(
        SBOX_7_not_7_Masked_z[1]), .Z(SBOX_7_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[118]), .B(
        SBOX_7_not_7_Masked_z[0]), .Z(SBOX_7_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[119]), .B(
        SBOX_7_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[119]), .B(
        SBOX_7_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_3_Masked_z[0]) );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_3_Masked_z[0]), 
        .B(SBOX_7_xor_3_Masked_x[0]), .Z(SBOX_7_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_3_Masked_z[1]), 
        .B(SBOX_7_xor_3_Masked_x[1]), .Z(SBOX_7_not_11_Masked_z[1]) );
  INV_X1 SBOX_7_not_8_Masked_not_hpc_U1 ( .A(SBOX_7__s0_1[7]), .ZN(
        SBOX_7_not_8_Masked_z[0]) );
  INV_X1 SBOX_7_not_9_Masked_not_hpc_U1 ( .A(SBOX_7__s0_1[6]), .ZN(
        SBOX_7_not_9_Masked_z[0]) );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[120]), .B(
        SBOX_7_not_9_Masked_z[1]), .Z(SBOX_7_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_7_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[120]), .B(
        SBOX_7_not_9_Masked_z[0]), .Z(SBOX_7_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[121]), .B(
        SBOX_7_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[121]), .B(
        SBOX_7_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_4_Masked_z[0]) );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_4_Masked_z[0]), 
        .B(SBOX_7_xor_4_Masked_x[0]), .Z(SBOX_7_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_4_Masked_z[1]), 
        .B(SBOX_7_xor_4_Masked_x[1]), .Z(SBOX_7_not_14_Masked_z[1]) );
  INV_X1 SBOX_7_not_10_Masked_not_hpc_U1 ( .A(SBOX_7_xor_2_Masked_z_0_), .ZN(
        SBOX_7_not_10_Masked_z[0]) );
  INV_X1 SBOX_7_not_11_Masked_not_hpc_U1 ( .A(SBOX_7_xor_3_Masked_z_0_), .ZN(
        SBOX_7_not_11_Masked_z[0]) );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[122]), .B(
        SBOX_7_not_11_Masked_z[1]), .Z(SBOX_7_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_7_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[122]), .B(
        SBOX_7_not_11_Masked_z[0]), .Z(SBOX_7_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[123]), .B(
        SBOX_7_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[123]), .B(
        SBOX_7_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_5_Masked_z[0]) );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_5_Masked_z[0]), 
        .B(SBOX_7_xor_5_Masked_x[0]), .Z(SBOX_7_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_5_Masked_z[1]), 
        .B(SBOX_7_xor_5_Masked_x[1]), .Z(SBOX_7_not_15_Masked_z[1]) );
  INV_X1 SBOX_7_not_12_Masked_not_hpc_U1 ( .A(SBOX_7__s0_2[7]), .ZN(
        SBOX_7_not_12_Masked_z[0]) );
  INV_X1 SBOX_7_not_13_Masked_not_hpc_U1 ( .A(SBOX_7__s0_2[6]), .ZN(
        SBOX_7_not_13_Masked_z[0]) );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[124]), .B(
        SBOX_7_not_13_Masked_z[1]), .Z(SBOX_7_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_7_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[124]), .B(
        SBOX_7_not_13_Masked_z[0]), .Z(SBOX_7_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_6_Masked_z[1]) );
  AND2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[125]), .B(
        SBOX_7_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_7_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[125]), .B(
        SBOX_7_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_6_Masked_z[0]), 
        .B(SBOX_7_xor_6_Masked_x[0]), .Z(SHIFTROWS[44]) );
  XOR2_X1 SBOX_7_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_6_Masked_z[1]), 
        .B(SBOX_7_xor_6_Masked_x[1]), .Z(SHIFTROWS[172]) );
  INV_X1 SBOX_7_not_14_Masked_not_hpc_U1 ( .A(SBOX_7_xor_4_Masked_z_0_), .ZN(
        SBOX_7_not_14_Masked_z[0]) );
  INV_X1 SBOX_7_not_15_Masked_not_hpc_U1 ( .A(SBOX_7_xor_5_Masked_z_0_), .ZN(
        SBOX_7_not_15_Masked_z[0]) );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_7_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_7_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_7_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[126]), .B(
        SBOX_7_not_15_Masked_z[1]), .Z(SBOX_7_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_7_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[126]), .B(
        SBOX_7_not_15_Masked_z[0]), .Z(SBOX_7_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_7_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_7_and_7_Masked_z[1]) );
  AND2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[127]), .B(
        SBOX_7_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_7_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_7_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_7_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[127]), .B(
        SBOX_7_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_7_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_7_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_7_Masked_z[0]), 
        .B(SBOX_7_xor_7_Masked_x[0]), .Z(SHIFTROWS[40]) );
  XOR2_X1 SBOX_7_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_7_Masked_z[1]), 
        .B(SBOX_7_xor_7_Masked_x[1]), .Z(SHIFTROWS[168]) );
  DFF_X1 SBOX_8_reg_1_s0_31_reg ( .D(SBOX_8_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_8_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_31_reg ( .D(SBOX_8_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_8_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_30_reg ( .D(SBOX_8_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[65]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_30_reg ( .D(SBOX_8_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[193]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_29_reg ( .D(SBOX_8_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[66]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_29_reg ( .D(SBOX_8_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[194]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_28_reg ( .D(SBOX_8_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[67]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_28_reg ( .D(SBOX_8_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[195]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_27_reg ( .D(SBOX_8_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_8_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_27_reg ( .D(SBOX_8_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_8_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_26_reg ( .D(SBOX_8_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[69]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_26_reg ( .D(SBOX_8_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[197]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_25_reg ( .D(SBOX_8_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[70]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_25_reg ( .D(SBOX_8_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[198]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_24_reg ( .D(SBOX_8_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[71]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_24_reg ( .D(SBOX_8_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[199]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_31_reg ( .D(SBOX_8__s0_2_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_23_reg ( .D(SBOX_8_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_8__s0_2_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_31_reg ( .D(SBOX_8__s1_2_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_23_reg ( .D(SBOX_8_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_8__s1_2_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_29_reg ( .D(SBOX_8__s0_2_1), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_22_reg ( .D(SBOX_8_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_8__s0_2_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_29_reg ( .D(SBOX_8__s1_2_1), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_22_reg ( .D(SBOX_8_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_8__s1_2_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_30_reg ( .D(SBOX_8_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_30_reg ( .D(SBOX_8_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_21_reg ( .D(SBOX_8_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_8_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_21_reg ( .D(SBOX_8_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_8_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_28_reg ( .D(SBOX_8_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_28_reg ( .D(SBOX_8_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_20_reg ( .D(SBOX_8_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_8_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_20_reg ( .D(SBOX_8_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_8_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_27_reg ( .D(SBOX_8__s0_2[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_19_reg ( .D(SBOX_8_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_8__s0_2[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_27_reg ( .D(SBOX_8__s1_2[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_19_reg ( .D(SBOX_8_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_8__s1_2[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_26_reg ( .D(SBOX_8__s0_2[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_18_reg ( .D(SBOX_8_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_8__s0_2[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_26_reg ( .D(SBOX_8__s1_2[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_18_reg ( .D(SBOX_8_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_8__s1_2[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_25_reg ( .D(SBOX_8__s0_2[6]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_17_reg ( .D(SBOX_8_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_8__s0_2[6]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_25_reg ( .D(SBOX_8_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_17_reg ( .D(SBOX_8_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_8_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_24_reg ( .D(SBOX_8__s0_2[7]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_16_reg ( .D(SBOX_8_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_8__s0_2[7]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_24_reg ( .D(SBOX_8_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_16_reg ( .D(SBOX_8_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_8_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_21_reg ( .D(SBOX_8__s0_1_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_15_reg ( .D(SBOX_8_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_8__s0_1_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_21_reg ( .D(SBOX_8__s1_1_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_15_reg ( .D(SBOX_8_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_8__s1_1_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_17_reg ( .D(SBOX_8__s0_1_1), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_14_reg ( .D(SBOX_8_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_8__s0_1_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_17_reg ( .D(SBOX_8__s1_1_1), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_14_reg ( .D(SBOX_8_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_8__s1_1_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_16_reg ( .D(SBOX_8_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_16_reg ( .D(SBOX_8_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_13_reg ( .D(SBOX_8_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_8_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_13_reg ( .D(SBOX_8_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_8_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_22_reg ( .D(SBOX_8_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_22_reg ( .D(SBOX_8_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_12_reg ( .D(SBOX_8_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_8_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_12_reg ( .D(SBOX_8_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_8_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_20_reg ( .D(SBOX_8__s0_1[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_11_reg ( .D(SBOX_8_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_8__s0_1[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_20_reg ( .D(SBOX_8__s1_1[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_11_reg ( .D(SBOX_8_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_8__s1_1[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_23_reg ( .D(SBOX_8__s0_1[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_10_reg ( .D(SBOX_8_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_8__s0_1[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_23_reg ( .D(SBOX_8__s1_1[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_10_reg ( .D(SBOX_8_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_8__s1_1[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_19_reg ( .D(SBOX_8__s0_1[6]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_9_reg ( .D(SBOX_8_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_8__s0_1[6]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_19_reg ( .D(SBOX_8_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_9_reg ( .D(SBOX_8_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_8_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_18_reg ( .D(SBOX_8__s0_1[7]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_8_reg ( .D(SBOX_8_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_8__s0_1[7]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_18_reg ( .D(SBOX_8_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_8_reg ( .D(SBOX_8_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_8_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_13_reg ( .D(SBOX_8__s0_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_7_reg ( .D(SBOX_8_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_8__s0_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_13_reg ( .D(SBOX_8__s1_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_7_reg ( .D(SBOX_8_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_8__s1_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_9_reg ( .D(\SBOX_8/_s0_1 ), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_6_reg ( .D(SBOX_8_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_8/_s0_1 ), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_9_reg ( .D(\SBOX_8/_s1_1 ), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_6_reg ( .D(SBOX_8_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_8/_s1_1 ), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_8_reg ( .D(SBOX_8_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_8_reg ( .D(SBOX_8_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_5_reg ( .D(SBOX_8_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_8_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_5_reg ( .D(SBOX_8_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_8_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_14_reg ( .D(SBOX_8_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_14_reg ( .D(SBOX_8_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_4_reg ( .D(SBOX_8_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_8_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_4_reg ( .D(SBOX_8_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_8_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_12_reg ( .D(SBOX_8__s0[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_3_reg ( .D(SBOX_8_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_8__s0[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_12_reg ( .D(SBOX_8__s1[4]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_3_reg ( .D(SBOX_8_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_8__s1[4]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_15_reg ( .D(SBOX_8__s0[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_2_reg ( .D(SBOX_8_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_8__s0[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_15_reg ( .D(SBOX_8__s1[5]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_2_reg ( .D(SBOX_8_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_8__s1[5]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_11_reg ( .D(SBOX_8__s0[6]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_1_reg ( .D(SBOX_8_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_8__s0[6]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_11_reg ( .D(SBOX_8_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_1_reg ( .D(SBOX_8_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_8_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_10_reg ( .D(SBOX_8__s0[7]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_reg ( .D(SBOX_8_reg_0_s0), .CK(CLK), .Q(SBOX_8__s0[7]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_10_reg ( .D(SBOX_8_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_reg ( .D(SBOX_8_reg_0_s1), .CK(CLK), .Q(
        SBOX_8_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_4_reg ( .D(SHARE2_IN[68]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_4_reg ( .D(SHARE1_IN[68]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_5_reg ( .D(SHARE2_IN[64]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_5_reg ( .D(SHARE1_IN[64]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_6_reg ( .D(SHARE2_IN[67]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_6_reg ( .D(SHARE1_IN[67]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_7_reg ( .D(SHARE2_IN[69]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_3_reg ( .D(SHARE1_IN[70]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_7_reg ( .D(SHARE1_IN[69]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_3_reg ( .D(SHARE2_IN[70]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_2_reg ( .D(SHARE1_IN[71]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_2_reg ( .D(SHARE2_IN[71]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_1_reg ( .D(SHARE1_IN[65]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_1_reg ( .D(SHARE2_IN[65]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_reg ( .D(SHARE1_IN[66]), .CK(CLK), .Q(SBOX_8_reg_0_s0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_reg ( .D(SHARE2_IN[66]), .CK(CLK), .Q(SBOX_8_reg_0_s1), .QN() );
  INV_X1 SBOX_8_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[71]), .ZN(
        SBOX_8_not_0_Masked_z_0_) );
  INV_X1 SBOX_8_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[70]), .ZN(
        SBOX_8_not_1_Masked_z_0_) );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[71]), 
        .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[128]), .B(
        SHARE2_IN[70]), .Z(SBOX_8_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[128]), .B(
        SBOX_8_not_1_Masked_z_0_), .Z(SBOX_8_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[129]), .B(
        SBOX_8_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[129]), .B(
        SBOX_8_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_0_Masked_z[0]) );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_0_Masked_z[0]), 
        .B(SBOX_8_xor_0_Masked_x[0]), .Z(SBOX_8_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_0_Masked_z[1]), 
        .B(SBOX_8_xor_0_Masked_x[1]), .Z(SBOX_8_not_6_Masked_z[1]) );
  INV_X1 SBOX_8_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[67]), .ZN(
        SBOX_8_not_2_Masked_z_0_) );
  INV_X1 SBOX_8_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[66]), .ZN(
        SBOX_8_not_3_Masked_z_0_) );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[67]), 
        .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[130]), .B(
        SHARE2_IN[66]), .Z(SBOX_8_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[130]), .B(
        SBOX_8_not_3_Masked_z_0_), .Z(SBOX_8_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[131]), .B(
        SBOX_8_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[131]), .B(
        SBOX_8_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_1_Masked_z[0]) );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_1_Masked_z[0]), 
        .B(SBOX_8_xor_1_Masked_x[0]), .Z(SBOX_8_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_1_Masked_z[1]), 
        .B(SBOX_8_xor_1_Masked_x[1]), .Z(SBOX_8_not_7_Masked_z[1]) );
  INV_X1 SBOX_8_not_4_Masked_not_hpc_U1 ( .A(SBOX_8__s0[7]), .ZN(
        SBOX_8_not_4_Masked_z[0]) );
  INV_X1 SBOX_8_not_5_Masked_not_hpc_U1 ( .A(SBOX_8__s0[6]), .ZN(
        SBOX_8_not_5_Masked_z[0]) );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[132]), .B(
        SBOX_8_not_5_Masked_z[1]), .Z(SBOX_8_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[132]), .B(
        SBOX_8_not_5_Masked_z[0]), .Z(SBOX_8_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[133]), .B(
        SBOX_8_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[133]), .B(
        SBOX_8_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_2_Masked_z[0]) );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_2_Masked_z[0]), 
        .B(SBOX_8_xor_2_Masked_x[0]), .Z(SBOX_8_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_2_Masked_z[1]), 
        .B(SBOX_8_xor_2_Masked_x[1]), .Z(SBOX_8_not_10_Masked_z[1]) );
  INV_X1 SBOX_8_not_6_Masked_not_hpc_U1 ( .A(SBOX_8_xor_0_Masked_z_0_), .ZN(
        SBOX_8_not_6_Masked_z[0]) );
  INV_X1 SBOX_8_not_7_Masked_not_hpc_U1 ( .A(SBOX_8_xor_1_Masked_z_0_), .ZN(
        SBOX_8_not_7_Masked_z[0]) );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[134]), .B(
        SBOX_8_not_7_Masked_z[1]), .Z(SBOX_8_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[134]), .B(
        SBOX_8_not_7_Masked_z[0]), .Z(SBOX_8_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[135]), .B(
        SBOX_8_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[135]), .B(
        SBOX_8_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_3_Masked_z[0]) );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_3_Masked_z[0]), 
        .B(SBOX_8_xor_3_Masked_x[0]), .Z(SBOX_8_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_3_Masked_z[1]), 
        .B(SBOX_8_xor_3_Masked_x[1]), .Z(SBOX_8_not_11_Masked_z[1]) );
  INV_X1 SBOX_8_not_8_Masked_not_hpc_U1 ( .A(SBOX_8__s0_1[7]), .ZN(
        SBOX_8_not_8_Masked_z[0]) );
  INV_X1 SBOX_8_not_9_Masked_not_hpc_U1 ( .A(SBOX_8__s0_1[6]), .ZN(
        SBOX_8_not_9_Masked_z[0]) );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[136]), .B(
        SBOX_8_not_9_Masked_z[1]), .Z(SBOX_8_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_8_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[136]), .B(
        SBOX_8_not_9_Masked_z[0]), .Z(SBOX_8_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[137]), .B(
        SBOX_8_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[137]), .B(
        SBOX_8_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_4_Masked_z[0]) );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_4_Masked_z[0]), 
        .B(SBOX_8_xor_4_Masked_x[0]), .Z(SBOX_8_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_4_Masked_z[1]), 
        .B(SBOX_8_xor_4_Masked_x[1]), .Z(SBOX_8_not_14_Masked_z[1]) );
  INV_X1 SBOX_8_not_10_Masked_not_hpc_U1 ( .A(SBOX_8_xor_2_Masked_z_0_), .ZN(
        SBOX_8_not_10_Masked_z[0]) );
  INV_X1 SBOX_8_not_11_Masked_not_hpc_U1 ( .A(SBOX_8_xor_3_Masked_z_0_), .ZN(
        SBOX_8_not_11_Masked_z[0]) );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[138]), .B(
        SBOX_8_not_11_Masked_z[1]), .Z(SBOX_8_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_8_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[138]), .B(
        SBOX_8_not_11_Masked_z[0]), .Z(SBOX_8_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[139]), .B(
        SBOX_8_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[139]), .B(
        SBOX_8_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_5_Masked_z[0]) );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_5_Masked_z[0]), 
        .B(SBOX_8_xor_5_Masked_x[0]), .Z(SBOX_8_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_5_Masked_z[1]), 
        .B(SBOX_8_xor_5_Masked_x[1]), .Z(SBOX_8_not_15_Masked_z[1]) );
  INV_X1 SBOX_8_not_12_Masked_not_hpc_U1 ( .A(SBOX_8__s0_2[7]), .ZN(
        SBOX_8_not_12_Masked_z[0]) );
  INV_X1 SBOX_8_not_13_Masked_not_hpc_U1 ( .A(SBOX_8__s0_2[6]), .ZN(
        SBOX_8_not_13_Masked_z[0]) );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[140]), .B(
        SBOX_8_not_13_Masked_z[1]), .Z(SBOX_8_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_8_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[140]), .B(
        SBOX_8_not_13_Masked_z[0]), .Z(SBOX_8_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_6_Masked_z[1]) );
  AND2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[141]), .B(
        SBOX_8_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_8_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[141]), .B(
        SBOX_8_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_6_Masked_z[0]), 
        .B(SBOX_8_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[68]) );
  XOR2_X1 SBOX_8_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_6_Masked_z[1]), 
        .B(SBOX_8_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[196]) );
  INV_X1 SBOX_8_not_14_Masked_not_hpc_U1 ( .A(SBOX_8_xor_4_Masked_z_0_), .ZN(
        SBOX_8_not_14_Masked_z[0]) );
  INV_X1 SBOX_8_not_15_Masked_not_hpc_U1 ( .A(SBOX_8_xor_5_Masked_z_0_), .ZN(
        SBOX_8_not_15_Masked_z[0]) );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_8_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_8_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_8_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[142]), .B(
        SBOX_8_not_15_Masked_z[1]), .Z(SBOX_8_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_8_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[142]), .B(
        SBOX_8_not_15_Masked_z[0]), .Z(SBOX_8_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_8_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_8_and_7_Masked_z[1]) );
  AND2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[143]), .B(
        SBOX_8_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_8_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_8_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_8_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[143]), .B(
        SBOX_8_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_8_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_8_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_7_Masked_z[0]), 
        .B(SBOX_8_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[64]) );
  XOR2_X1 SBOX_8_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_7_Masked_z[1]), 
        .B(SBOX_8_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[192]) );
  DFF_X1 SBOX_9_reg_1_s0_31_reg ( .D(SBOX_9_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_9_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_31_reg ( .D(SBOX_9_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_9_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_30_reg ( .D(SBOX_9_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[73]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_30_reg ( .D(SBOX_9_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[201]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_29_reg ( .D(SBOX_9_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[74]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_29_reg ( .D(SBOX_9_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[202]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_28_reg ( .D(SBOX_9_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[75]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_28_reg ( .D(SBOX_9_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[203]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_27_reg ( .D(SBOX_9_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_9_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_27_reg ( .D(SBOX_9_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_9_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_26_reg ( .D(SBOX_9_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[77]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_26_reg ( .D(SBOX_9_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[205]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_25_reg ( .D(SBOX_9_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[78]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_25_reg ( .D(SBOX_9_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[206]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_24_reg ( .D(SBOX_9_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[79]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_24_reg ( .D(SBOX_9_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[207]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_31_reg ( .D(SBOX_9__s0_2_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_23_reg ( .D(SBOX_9_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_9__s0_2_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_31_reg ( .D(SBOX_9__s1_2_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_23_reg ( .D(SBOX_9_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_9__s1_2_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_29_reg ( .D(SBOX_9__s0_2_1), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_22_reg ( .D(SBOX_9_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_9__s0_2_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_29_reg ( .D(SBOX_9__s1_2_1), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_22_reg ( .D(SBOX_9_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_9__s1_2_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_30_reg ( .D(SBOX_9_not_15_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_30_reg ( .D(SBOX_9_xor_5_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_21_reg ( .D(SBOX_9_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_9_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_21_reg ( .D(SBOX_9_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_9_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_28_reg ( .D(SBOX_9_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_28_reg ( .D(SBOX_9_xor_4_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_20_reg ( .D(SBOX_9_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_9_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_20_reg ( .D(SBOX_9_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_9_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_27_reg ( .D(SBOX_9__s0_2[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_19_reg ( .D(SBOX_9_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_9__s0_2[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_27_reg ( .D(SBOX_9__s1_2[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_19_reg ( .D(SBOX_9_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_9__s1_2[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_26_reg ( .D(SBOX_9__s0_2[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_18_reg ( .D(SBOX_9_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_9__s0_2[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_26_reg ( .D(SBOX_9__s1_2[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_18_reg ( .D(SBOX_9_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_9__s1_2[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_25_reg ( .D(SBOX_9__s0_2[6]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_17_reg ( .D(SBOX_9_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_9__s0_2[6]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_25_reg ( .D(SBOX_9_not_13_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_17_reg ( .D(SBOX_9_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_9_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_24_reg ( .D(SBOX_9__s0_2[7]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_16_reg ( .D(SBOX_9_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_9__s0_2[7]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_24_reg ( .D(SBOX_9_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_16_reg ( .D(SBOX_9_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_9_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_21_reg ( .D(SBOX_9__s0_1_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_15_reg ( .D(SBOX_9_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_9__s0_1_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_21_reg ( .D(SBOX_9__s1_1_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_15_reg ( .D(SBOX_9_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_9__s1_1_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_17_reg ( .D(SBOX_9__s0_1_1), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_14_reg ( .D(SBOX_9_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_9__s0_1_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_17_reg ( .D(SBOX_9__s1_1_1), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_14_reg ( .D(SBOX_9_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_9__s1_1_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_16_reg ( .D(SBOX_9_not_11_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_16_reg ( .D(SBOX_9_xor_3_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_13_reg ( .D(SBOX_9_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_9_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_13_reg ( .D(SBOX_9_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_9_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_22_reg ( .D(SBOX_9_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_22_reg ( .D(SBOX_9_xor_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_12_reg ( .D(SBOX_9_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_9_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_12_reg ( .D(SBOX_9_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_9_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_20_reg ( .D(SBOX_9__s0_1[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_11_reg ( .D(SBOX_9_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_9__s0_1[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_20_reg ( .D(SBOX_9__s1_1[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_11_reg ( .D(SBOX_9_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_9__s1_1[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_23_reg ( .D(SBOX_9__s0_1[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_10_reg ( .D(SBOX_9_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_9__s0_1[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_23_reg ( .D(SBOX_9__s1_1[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_10_reg ( .D(SBOX_9_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_9__s1_1[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_19_reg ( .D(SBOX_9__s0_1[6]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_9_reg ( .D(SBOX_9_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_9__s0_1[6]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_19_reg ( .D(SBOX_9_not_9_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_9_reg ( .D(SBOX_9_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_9_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_18_reg ( .D(SBOX_9__s0_1[7]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_8_reg ( .D(SBOX_9_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_9__s0_1[7]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_18_reg ( .D(SBOX_9_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_8_reg ( .D(SBOX_9_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_9_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_13_reg ( .D(SBOX_9__s0_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_7_reg ( .D(SBOX_9_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_9__s0_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_13_reg ( .D(SBOX_9__s1_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_7_reg ( .D(SBOX_9_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_9__s1_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_9_reg ( .D(\SBOX_9/_s0_1 ), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_6_reg ( .D(SBOX_9_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_9/_s0_1 ), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_9_reg ( .D(\SBOX_9/_s1_1 ), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_6_reg ( .D(SBOX_9_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_9/_s1_1 ), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_8_reg ( .D(SBOX_9_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_8_reg ( .D(SBOX_9_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_5_reg ( .D(SBOX_9_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_9_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_5_reg ( .D(SBOX_9_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_9_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_14_reg ( .D(SBOX_9_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_14_reg ( .D(SBOX_9_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_4_reg ( .D(SBOX_9_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_9_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_4_reg ( .D(SBOX_9_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_9_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_12_reg ( .D(SBOX_9__s0[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_3_reg ( .D(SBOX_9_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_9__s0[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_12_reg ( .D(SBOX_9__s1[4]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_3_reg ( .D(SBOX_9_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_9__s1[4]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_15_reg ( .D(SBOX_9__s0[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_2_reg ( .D(SBOX_9_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_9__s0[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_15_reg ( .D(SBOX_9__s1[5]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_2_reg ( .D(SBOX_9_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_9__s1[5]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_11_reg ( .D(SBOX_9__s0[6]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_1_reg ( .D(SBOX_9_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_9__s0[6]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_11_reg ( .D(SBOX_9_not_5_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_1_reg ( .D(SBOX_9_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_9_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_10_reg ( .D(SBOX_9__s0[7]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_reg ( .D(SBOX_9_reg_0_s0), .CK(CLK), .Q(SBOX_9__s0[7]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_10_reg ( .D(SBOX_9_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_reg ( .D(SBOX_9_reg_0_s1), .CK(CLK), .Q(
        SBOX_9_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_4_reg ( .D(SHARE2_IN[76]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_4_reg ( .D(SHARE1_IN[76]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_5_reg ( .D(SHARE2_IN[72]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_5_reg ( .D(SHARE1_IN[72]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_6_reg ( .D(SHARE2_IN[75]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_6_reg ( .D(SHARE1_IN[75]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_7_reg ( .D(SHARE2_IN[77]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_3_reg ( .D(SHARE1_IN[78]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_7_reg ( .D(SHARE1_IN[77]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_3_reg ( .D(SHARE2_IN[78]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_2_reg ( .D(SHARE1_IN[79]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_2_reg ( .D(SHARE2_IN[79]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_1_reg ( .D(SHARE1_IN[73]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_1_reg ( .D(SHARE2_IN[73]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_reg ( .D(SHARE1_IN[74]), .CK(CLK), .Q(SBOX_9_reg_0_s0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_reg ( .D(SHARE2_IN[74]), .CK(CLK), .Q(SBOX_9_reg_0_s1), .QN() );
  INV_X1 SBOX_9_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[79]), .ZN(
        SBOX_9_not_0_Masked_z_0_) );
  INV_X1 SBOX_9_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[78]), .ZN(
        SBOX_9_not_1_Masked_z_0_) );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[79]), 
        .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[144]), .B(
        SHARE2_IN[78]), .Z(SBOX_9_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[144]), .B(
        SBOX_9_not_1_Masked_z_0_), .Z(SBOX_9_and_0_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[145]), .B(
        SBOX_9_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[145]), .B(
        SBOX_9_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_0_Masked_z[0]) );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_0_Masked_z[0]), 
        .B(SBOX_9_xor_0_Masked_x[0]), .Z(SBOX_9_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_0_Masked_z[1]), 
        .B(SBOX_9_xor_0_Masked_x[1]), .Z(SBOX_9_not_6_Masked_z[1]) );
  INV_X1 SBOX_9_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[75]), .ZN(
        SBOX_9_not_2_Masked_z_0_) );
  INV_X1 SBOX_9_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[74]), .ZN(
        SBOX_9_not_3_Masked_z_0_) );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[75]), 
        .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[146]), .B(
        SHARE2_IN[74]), .Z(SBOX_9_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[146]), .B(
        SBOX_9_not_3_Masked_z_0_), .Z(SBOX_9_and_1_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[147]), .B(
        SBOX_9_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[147]), .B(
        SBOX_9_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_1_Masked_z[0]) );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_1_Masked_z[0]), 
        .B(SBOX_9_xor_1_Masked_x[0]), .Z(SBOX_9_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_1_Masked_z[1]), 
        .B(SBOX_9_xor_1_Masked_x[1]), .Z(SBOX_9_not_7_Masked_z[1]) );
  INV_X1 SBOX_9_not_4_Masked_not_hpc_U1 ( .A(SBOX_9__s0[7]), .ZN(
        SBOX_9_not_4_Masked_z[0]) );
  INV_X1 SBOX_9_not_5_Masked_not_hpc_U1 ( .A(SBOX_9__s0[6]), .ZN(
        SBOX_9_not_5_Masked_z[0]) );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[148]), .B(
        SBOX_9_not_5_Masked_z[1]), .Z(SBOX_9_and_2_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[148]), .B(
        SBOX_9_not_5_Masked_z[0]), .Z(SBOX_9_and_2_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[149]), .B(
        SBOX_9_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[149]), .B(
        SBOX_9_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_2_Masked_z[0]) );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_2_Masked_z[0]), 
        .B(SBOX_9_xor_2_Masked_x[0]), .Z(SBOX_9_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_2_Masked_z[1]), 
        .B(SBOX_9_xor_2_Masked_x[1]), .Z(SBOX_9_not_10_Masked_z[1]) );
  INV_X1 SBOX_9_not_6_Masked_not_hpc_U1 ( .A(SBOX_9_xor_0_Masked_z_0_), .ZN(
        SBOX_9_not_6_Masked_z[0]) );
  INV_X1 SBOX_9_not_7_Masked_not_hpc_U1 ( .A(SBOX_9_xor_1_Masked_z_0_), .ZN(
        SBOX_9_not_7_Masked_z[0]) );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[150]), .B(
        SBOX_9_not_7_Masked_z[1]), .Z(SBOX_9_and_3_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[150]), .B(
        SBOX_9_not_7_Masked_z[0]), .Z(SBOX_9_and_3_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[151]), .B(
        SBOX_9_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[151]), .B(
        SBOX_9_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_3_Masked_z[0]) );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_3_Masked_z[0]), 
        .B(SBOX_9_xor_3_Masked_x[0]), .Z(SBOX_9_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_3_Masked_z[1]), 
        .B(SBOX_9_xor_3_Masked_x[1]), .Z(SBOX_9_not_11_Masked_z[1]) );
  INV_X1 SBOX_9_not_8_Masked_not_hpc_U1 ( .A(SBOX_9__s0_1[7]), .ZN(
        SBOX_9_not_8_Masked_z[0]) );
  INV_X1 SBOX_9_not_9_Masked_not_hpc_U1 ( .A(SBOX_9__s0_1[6]), .ZN(
        SBOX_9_not_9_Masked_z[0]) );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[152]), .B(
        SBOX_9_not_9_Masked_z[1]), .Z(SBOX_9_and_4_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_9_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[152]), .B(
        SBOX_9_not_9_Masked_z[0]), .Z(SBOX_9_and_4_Masked_and_hpc_rfrsh_N1) );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[153]), .B(
        SBOX_9_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[153]), .B(
        SBOX_9_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_4_Masked_z[0]) );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_4_Masked_z[0]), 
        .B(SBOX_9_xor_4_Masked_x[0]), .Z(SBOX_9_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_4_Masked_z[1]), 
        .B(SBOX_9_xor_4_Masked_x[1]), .Z(SBOX_9_not_14_Masked_z[1]) );
  INV_X1 SBOX_9_not_10_Masked_not_hpc_U1 ( .A(SBOX_9_xor_2_Masked_z_0_), .ZN(
        SBOX_9_not_10_Masked_z[0]) );
  INV_X1 SBOX_9_not_11_Masked_not_hpc_U1 ( .A(SBOX_9_xor_3_Masked_z_0_), .ZN(
        SBOX_9_not_11_Masked_z[0]) );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[154]), .B(
        SBOX_9_not_11_Masked_z[1]), .Z(SBOX_9_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_9_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[154]), .B(
        SBOX_9_not_11_Masked_z[0]), .Z(SBOX_9_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[155]), .B(
        SBOX_9_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[155]), .B(
        SBOX_9_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  XOR2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_5_Masked_z[0]) );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_5_Masked_z[0]), 
        .B(SBOX_9_xor_5_Masked_x[0]), .Z(SBOX_9_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_5_Masked_z[1]), 
        .B(SBOX_9_xor_5_Masked_x[1]), .Z(SBOX_9_not_15_Masked_z[1]) );
  INV_X1 SBOX_9_not_12_Masked_not_hpc_U1 ( .A(SBOX_9__s0_2[7]), .ZN(
        SBOX_9_not_12_Masked_z[0]) );
  INV_X1 SBOX_9_not_13_Masked_not_hpc_U1 ( .A(SBOX_9__s0_2[6]), .ZN(
        SBOX_9_not_13_Masked_z[0]) );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[156]), .B(
        SBOX_9_not_13_Masked_z[1]), .Z(SBOX_9_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_9_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[156]), .B(
        SBOX_9_not_13_Masked_z[0]), .Z(SBOX_9_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_6_Masked_z[1]) );
  AND2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[157]), .B(
        SBOX_9_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_9_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[157]), .B(
        SBOX_9_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_6_Masked_z[0]), 
        .B(SBOX_9_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[76]) );
  XOR2_X1 SBOX_9_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_6_Masked_z[1]), 
        .B(SBOX_9_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[204]) );
  INV_X1 SBOX_9_not_14_Masked_not_hpc_U1 ( .A(SBOX_9_xor_4_Masked_z_0_), .ZN(
        SBOX_9_not_14_Masked_z[0]) );
  INV_X1 SBOX_9_not_15_Masked_not_hpc_U1 ( .A(SBOX_9_xor_5_Masked_z_0_), .ZN(
        SBOX_9_not_15_Masked_z[0]) );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_9_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_9_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_9_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[158]), .B(
        SBOX_9_not_15_Masked_z[1]), .Z(SBOX_9_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_9_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[158]), .B(
        SBOX_9_not_15_Masked_z[0]), .Z(SBOX_9_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_9_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_9_and_7_Masked_z[1]) );
  AND2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[159]), .B(
        SBOX_9_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire) );
  NAND2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_9_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_9_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_9_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[159]), .B(
        SBOX_9_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire) );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), 
        .QN() );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_9_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), 
        .QN() );
  XOR2_X1 SBOX_9_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_7_Masked_z[0]), 
        .B(SBOX_9_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[72]) );
  XOR2_X1 SBOX_9_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_7_Masked_z[1]), 
        .B(SBOX_9_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[200]) );
  DFF_X1 SBOX_10_reg_1_s0_31_reg ( .D(SBOX_10_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_10_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_31_reg ( .D(SBOX_10_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_10_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_30_reg ( .D(SBOX_10_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[81]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_30_reg ( .D(SBOX_10_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[209]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_29_reg ( .D(SBOX_10_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[82]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_29_reg ( .D(SBOX_10_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[210]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_28_reg ( .D(SBOX_10_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[83]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_28_reg ( .D(SBOX_10_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[211]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_27_reg ( .D(SBOX_10_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_10_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_27_reg ( .D(SBOX_10_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_10_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_26_reg ( .D(SBOX_10_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[85]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_26_reg ( .D(SBOX_10_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[213]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_25_reg ( .D(SBOX_10_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[86]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_25_reg ( .D(SBOX_10_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[214]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_24_reg ( .D(SBOX_10_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[87]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_24_reg ( .D(SBOX_10_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[215]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_31_reg ( .D(SBOX_10__s0_2_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_23_reg ( .D(SBOX_10_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_10__s0_2_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_31_reg ( .D(SBOX_10__s1_2_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_23_reg ( .D(SBOX_10_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_10__s1_2_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_29_reg ( .D(SBOX_10__s0_2_1), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_22_reg ( .D(SBOX_10_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_10__s0_2_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_29_reg ( .D(SBOX_10__s1_2_1), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_22_reg ( .D(SBOX_10_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_10__s1_2_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_30_reg ( .D(SBOX_10_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_30_reg ( .D(SBOX_10_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_10_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_21_reg ( .D(SBOX_10_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_10_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_21_reg ( .D(SBOX_10_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_10_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_28_reg ( .D(SBOX_10_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_28_reg ( .D(SBOX_10_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_10_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_20_reg ( .D(SBOX_10_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_10_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_20_reg ( .D(SBOX_10_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_10_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_27_reg ( .D(SBOX_10__s0_2[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_19_reg ( .D(SBOX_10_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_10__s0_2[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_27_reg ( .D(SBOX_10__s1_2[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_19_reg ( .D(SBOX_10_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_10__s1_2[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_26_reg ( .D(SBOX_10__s0_2[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_18_reg ( .D(SBOX_10_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_10__s0_2[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_26_reg ( .D(SBOX_10__s1_2[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_18_reg ( .D(SBOX_10_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_10__s1_2[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_25_reg ( .D(SBOX_10__s0_2[6]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_17_reg ( .D(SBOX_10_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_10__s0_2[6]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_25_reg ( .D(SBOX_10_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_17_reg ( .D(SBOX_10_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_10_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_24_reg ( .D(SBOX_10__s0_2[7]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_16_reg ( .D(SBOX_10_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_10__s0_2[7]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_24_reg ( .D(SBOX_10_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_16_reg ( .D(SBOX_10_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_10_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_21_reg ( .D(SBOX_10__s0_1_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_15_reg ( .D(SBOX_10_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_10__s0_1_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_21_reg ( .D(SBOX_10__s1_1_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_15_reg ( .D(SBOX_10_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_10__s1_1_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_17_reg ( .D(SBOX_10__s0_1_1), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_14_reg ( .D(SBOX_10_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_10__s0_1_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_17_reg ( .D(SBOX_10__s1_1_1), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_14_reg ( .D(SBOX_10_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_10__s1_1_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_16_reg ( .D(SBOX_10_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_16_reg ( .D(SBOX_10_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_10_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_13_reg ( .D(SBOX_10_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_10_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_13_reg ( .D(SBOX_10_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_10_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_22_reg ( .D(SBOX_10_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_22_reg ( .D(SBOX_10_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_10_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_12_reg ( .D(SBOX_10_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_10_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_12_reg ( .D(SBOX_10_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_10_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_20_reg ( .D(SBOX_10__s0_1[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_11_reg ( .D(SBOX_10_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_10__s0_1[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_20_reg ( .D(SBOX_10__s1_1[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_11_reg ( .D(SBOX_10_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_10__s1_1[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_23_reg ( .D(SBOX_10__s0_1[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_10_reg ( .D(SBOX_10_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_10__s0_1[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_23_reg ( .D(SBOX_10__s1_1[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_10_reg ( .D(SBOX_10_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_10__s1_1[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_19_reg ( .D(SBOX_10__s0_1[6]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_9_reg ( .D(SBOX_10_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_10__s0_1[6]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_19_reg ( .D(SBOX_10_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_9_reg ( .D(SBOX_10_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_10_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_18_reg ( .D(SBOX_10__s0_1[7]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_8_reg ( .D(SBOX_10_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_10__s0_1[7]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_18_reg ( .D(SBOX_10_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_8_reg ( .D(SBOX_10_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_10_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_13_reg ( .D(SBOX_10__s0_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_7_reg ( .D(SBOX_10_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_10__s0_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_13_reg ( .D(SBOX_10__s1_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_7_reg ( .D(SBOX_10_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_10__s1_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_9_reg ( .D(\SBOX_10/_s0_1 ), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_6_reg ( .D(SBOX_10_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_10/_s0_1 ), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_9_reg ( .D(\SBOX_10/_s1_1 ), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_6_reg ( .D(SBOX_10_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_10/_s1_1 ), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_8_reg ( .D(SBOX_10_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_8_reg ( .D(SBOX_10_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_5_reg ( .D(SBOX_10_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_10_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_5_reg ( .D(SBOX_10_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_10_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_14_reg ( .D(SBOX_10_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_14_reg ( .D(SBOX_10_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_10_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_4_reg ( .D(SBOX_10_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_10_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_4_reg ( .D(SBOX_10_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_10_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_12_reg ( .D(SBOX_10__s0[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_3_reg ( .D(SBOX_10_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_10__s0[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_12_reg ( .D(SBOX_10__s1[4]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_3_reg ( .D(SBOX_10_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_10__s1[4]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_15_reg ( .D(SBOX_10__s0[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_2_reg ( .D(SBOX_10_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_10__s0[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_15_reg ( .D(SBOX_10__s1[5]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_2_reg ( .D(SBOX_10_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_10__s1[5]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_11_reg ( .D(SBOX_10__s0[6]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_1_reg ( .D(SBOX_10_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_10__s0[6]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_11_reg ( .D(SBOX_10_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_1_reg ( .D(SBOX_10_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_10_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_10_reg ( .D(SBOX_10__s0[7]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_reg ( .D(SBOX_10_reg_0_s0), .CK(CLK), .Q(
        SBOX_10__s0[7]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_10_reg ( .D(SBOX_10_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_10_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_reg ( .D(SBOX_10_reg_0_s1), .CK(CLK), .Q(
        SBOX_10_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_4_reg ( .D(SHARE2_IN[84]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_4_reg ( .D(SHARE1_IN[84]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_5_reg ( .D(SHARE2_IN[80]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_5_reg ( .D(SHARE1_IN[80]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_6_reg ( .D(SHARE2_IN[83]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_6_reg ( .D(SHARE1_IN[83]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_7_reg ( .D(SHARE2_IN[85]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_3_reg ( .D(SHARE1_IN[86]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_7_reg ( .D(SHARE1_IN[85]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_3_reg ( .D(SHARE2_IN[86]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_2_reg ( .D(SHARE1_IN[87]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_2_reg ( .D(SHARE2_IN[87]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_1_reg ( .D(SHARE1_IN[81]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_1_reg ( .D(SHARE2_IN[81]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_reg ( .D(SHARE1_IN[82]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_reg ( .D(SHARE2_IN[82]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1), .QN() );
  INV_X1 SBOX_10_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[87]), .ZN(
        SBOX_10_not_0_Masked_z_0_) );
  INV_X1 SBOX_10_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[86]), .ZN(
        SBOX_10_not_1_Masked_z_0_) );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[87]), 
        .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[160]), .B(
        SHARE2_IN[86]), .Z(SBOX_10_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[160]), .B(
        SBOX_10_not_1_Masked_z_0_), .Z(SBOX_10_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[161]), .B(
        SBOX_10_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[161]), .B(
        SBOX_10_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_0_Masked_z[0]) );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_0_Masked_z[0]), .B(SBOX_10_xor_0_Masked_x[0]), .Z(SBOX_10_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_0_Masked_z[1]), .B(SBOX_10_xor_0_Masked_x[1]), .Z(SBOX_10_not_6_Masked_z[1]) );
  INV_X1 SBOX_10_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[83]), .ZN(
        SBOX_10_not_2_Masked_z_0_) );
  INV_X1 SBOX_10_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[82]), .ZN(
        SBOX_10_not_3_Masked_z_0_) );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[83]), 
        .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[162]), .B(
        SHARE2_IN[82]), .Z(SBOX_10_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[162]), .B(
        SBOX_10_not_3_Masked_z_0_), .Z(SBOX_10_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[163]), .B(
        SBOX_10_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[163]), .B(
        SBOX_10_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_1_Masked_z[0]) );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_1_Masked_z[0]), .B(SBOX_10_xor_1_Masked_x[0]), .Z(SBOX_10_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_1_Masked_z[1]), .B(SBOX_10_xor_1_Masked_x[1]), .Z(SBOX_10_not_7_Masked_z[1]) );
  INV_X1 SBOX_10_not_4_Masked_not_hpc_U1 ( .A(SBOX_10__s0[7]), .ZN(
        SBOX_10_not_4_Masked_z[0]) );
  INV_X1 SBOX_10_not_5_Masked_not_hpc_U1 ( .A(SBOX_10__s0[6]), .ZN(
        SBOX_10_not_5_Masked_z[0]) );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[164]), .B(
        SBOX_10_not_5_Masked_z[1]), .Z(SBOX_10_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[164]), .B(
        SBOX_10_not_5_Masked_z[0]), .Z(SBOX_10_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[165]), .B(
        SBOX_10_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[165]), .B(
        SBOX_10_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_2_Masked_z[0]) );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_2_Masked_z[0]), .B(SBOX_10_xor_2_Masked_x[0]), .Z(SBOX_10_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_2_Masked_z[1]), .B(SBOX_10_xor_2_Masked_x[1]), .Z(SBOX_10_not_10_Masked_z[1]) );
  INV_X1 SBOX_10_not_6_Masked_not_hpc_U1 ( .A(SBOX_10_xor_0_Masked_z_0_), .ZN(
        SBOX_10_not_6_Masked_z[0]) );
  INV_X1 SBOX_10_not_7_Masked_not_hpc_U1 ( .A(SBOX_10_xor_1_Masked_z_0_), .ZN(
        SBOX_10_not_7_Masked_z[0]) );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[166]), .B(
        SBOX_10_not_7_Masked_z[1]), .Z(SBOX_10_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[166]), .B(
        SBOX_10_not_7_Masked_z[0]), .Z(SBOX_10_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[167]), .B(
        SBOX_10_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[167]), .B(
        SBOX_10_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_3_Masked_z[0]) );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_3_Masked_z[0]), .B(SBOX_10_xor_3_Masked_x[0]), .Z(SBOX_10_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_3_Masked_z[1]), .B(SBOX_10_xor_3_Masked_x[1]), .Z(SBOX_10_not_11_Masked_z[1]) );
  INV_X1 SBOX_10_not_8_Masked_not_hpc_U1 ( .A(SBOX_10__s0_1[7]), .ZN(
        SBOX_10_not_8_Masked_z[0]) );
  INV_X1 SBOX_10_not_9_Masked_not_hpc_U1 ( .A(SBOX_10__s0_1[6]), .ZN(
        SBOX_10_not_9_Masked_z[0]) );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[168]), .B(
        SBOX_10_not_9_Masked_z[1]), .Z(SBOX_10_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[168]), .B(
        SBOX_10_not_9_Masked_z[0]), .Z(SBOX_10_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[169]), .B(
        SBOX_10_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[169]), .B(
        SBOX_10_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_4_Masked_z[0]) );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_4_Masked_z[0]), .B(SBOX_10_xor_4_Masked_x[0]), .Z(SBOX_10_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_4_Masked_z[1]), .B(SBOX_10_xor_4_Masked_x[1]), .Z(SBOX_10_not_14_Masked_z[1]) );
  INV_X1 SBOX_10_not_10_Masked_not_hpc_U1 ( .A(SBOX_10_xor_2_Masked_z_0_), 
        .ZN(SBOX_10_not_10_Masked_z[0]) );
  INV_X1 SBOX_10_not_11_Masked_not_hpc_U1 ( .A(SBOX_10_xor_3_Masked_z_0_), 
        .ZN(SBOX_10_not_11_Masked_z[0]) );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[170]), .B(
        SBOX_10_not_11_Masked_z[1]), .Z(SBOX_10_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[170]), .B(
        SBOX_10_not_11_Masked_z[0]), .Z(SBOX_10_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[171]), .B(
        SBOX_10_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[171]), .B(
        SBOX_10_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_5_Masked_z[0]) );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_5_Masked_z[0]), .B(SBOX_10_xor_5_Masked_x[0]), .Z(SBOX_10_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_5_Masked_z[1]), .B(SBOX_10_xor_5_Masked_x[1]), .Z(SBOX_10_not_15_Masked_z[1]) );
  INV_X1 SBOX_10_not_12_Masked_not_hpc_U1 ( .A(SBOX_10__s0_2[7]), .ZN(
        SBOX_10_not_12_Masked_z[0]) );
  INV_X1 SBOX_10_not_13_Masked_not_hpc_U1 ( .A(SBOX_10__s0_2[6]), .ZN(
        SBOX_10_not_13_Masked_z[0]) );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[172]), .B(
        SBOX_10_not_13_Masked_z[1]), .Z(SBOX_10_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[172]), .B(
        SBOX_10_not_13_Masked_z[0]), .Z(SBOX_10_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_6_Masked_z[1]) );
  AND2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[173]), .B(
        SBOX_10_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_10_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[173]), .B(
        SBOX_10_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_6_Masked_z[0]), .B(SBOX_10_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[84]) );
  XOR2_X1 SBOX_10_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_6_Masked_z[1]), .B(SBOX_10_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[212]) );
  INV_X1 SBOX_10_not_14_Masked_not_hpc_U1 ( .A(SBOX_10_xor_4_Masked_z_0_), 
        .ZN(SBOX_10_not_14_Masked_z[0]) );
  INV_X1 SBOX_10_not_15_Masked_not_hpc_U1 ( .A(SBOX_10_xor_5_Masked_z_0_), 
        .ZN(SBOX_10_not_15_Masked_z[0]) );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_10_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_10_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_10_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[174]), .B(
        SBOX_10_not_15_Masked_z[1]), .Z(SBOX_10_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_10_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[174]), .B(
        SBOX_10_not_15_Masked_z[0]), .Z(SBOX_10_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_10_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_10_and_7_Masked_z[1]) );
  AND2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[175]), .B(
        SBOX_10_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_10_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_10_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_10_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[175]), .B(
        SBOX_10_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_10_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_10_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_7_Masked_z[0]), .B(SBOX_10_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[80]) );
  XOR2_X1 SBOX_10_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_7_Masked_z[1]), .B(SBOX_10_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[208]) );
  DFF_X1 SBOX_11_reg_1_s0_31_reg ( .D(SBOX_11_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_11_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_31_reg ( .D(SBOX_11_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_11_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_30_reg ( .D(SBOX_11_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[89]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_30_reg ( .D(SBOX_11_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[217]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_29_reg ( .D(SBOX_11_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[90]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_29_reg ( .D(SBOX_11_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[218]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_28_reg ( .D(SBOX_11_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[91]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_28_reg ( .D(SBOX_11_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[219]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_27_reg ( .D(SBOX_11_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_11_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_27_reg ( .D(SBOX_11_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_11_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_26_reg ( .D(SBOX_11_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[93]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_26_reg ( .D(SBOX_11_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[221]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_25_reg ( .D(SBOX_11_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[94]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_25_reg ( .D(SBOX_11_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[222]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_24_reg ( .D(SBOX_11_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[95]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_24_reg ( .D(SBOX_11_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[223]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_31_reg ( .D(SBOX_11__s0_2_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_23_reg ( .D(SBOX_11_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_11__s0_2_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_31_reg ( .D(SBOX_11__s1_2_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_23_reg ( .D(SBOX_11_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_11__s1_2_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_29_reg ( .D(SBOX_11__s0_2_1), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_22_reg ( .D(SBOX_11_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_11__s0_2_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_29_reg ( .D(SBOX_11__s1_2_1), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_22_reg ( .D(SBOX_11_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_11__s1_2_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_30_reg ( .D(SBOX_11_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_30_reg ( .D(SBOX_11_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_11_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_21_reg ( .D(SBOX_11_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_11_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_21_reg ( .D(SBOX_11_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_11_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_28_reg ( .D(SBOX_11_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_28_reg ( .D(SBOX_11_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_11_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_20_reg ( .D(SBOX_11_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_11_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_20_reg ( .D(SBOX_11_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_11_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_27_reg ( .D(SBOX_11__s0_2[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_19_reg ( .D(SBOX_11_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_11__s0_2[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_27_reg ( .D(SBOX_11__s1_2[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_19_reg ( .D(SBOX_11_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_11__s1_2[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_26_reg ( .D(SBOX_11__s0_2[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_18_reg ( .D(SBOX_11_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_11__s0_2[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_26_reg ( .D(SBOX_11__s1_2[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_18_reg ( .D(SBOX_11_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_11__s1_2[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_25_reg ( .D(SBOX_11__s0_2[6]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_17_reg ( .D(SBOX_11_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_11__s0_2[6]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_25_reg ( .D(SBOX_11_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_17_reg ( .D(SBOX_11_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_11_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_24_reg ( .D(SBOX_11__s0_2[7]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_16_reg ( .D(SBOX_11_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_11__s0_2[7]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_24_reg ( .D(SBOX_11_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_16_reg ( .D(SBOX_11_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_11_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_21_reg ( .D(SBOX_11__s0_1_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_15_reg ( .D(SBOX_11_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_11__s0_1_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_21_reg ( .D(SBOX_11__s1_1_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_15_reg ( .D(SBOX_11_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_11__s1_1_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_17_reg ( .D(SBOX_11__s0_1_1), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_14_reg ( .D(SBOX_11_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_11__s0_1_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_17_reg ( .D(SBOX_11__s1_1_1), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_14_reg ( .D(SBOX_11_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_11__s1_1_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_16_reg ( .D(SBOX_11_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_16_reg ( .D(SBOX_11_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_11_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_13_reg ( .D(SBOX_11_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_11_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_13_reg ( .D(SBOX_11_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_11_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_22_reg ( .D(SBOX_11_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_22_reg ( .D(SBOX_11_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_11_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_12_reg ( .D(SBOX_11_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_11_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_12_reg ( .D(SBOX_11_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_11_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_20_reg ( .D(SBOX_11__s0_1[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_11_reg ( .D(SBOX_11_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_11__s0_1[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_20_reg ( .D(SBOX_11__s1_1[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_11_reg ( .D(SBOX_11_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_11__s1_1[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_23_reg ( .D(SBOX_11__s0_1[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_10_reg ( .D(SBOX_11_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_11__s0_1[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_23_reg ( .D(SBOX_11__s1_1[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_10_reg ( .D(SBOX_11_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_11__s1_1[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_19_reg ( .D(SBOX_11__s0_1[6]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_9_reg ( .D(SBOX_11_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_11__s0_1[6]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_19_reg ( .D(SBOX_11_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_9_reg ( .D(SBOX_11_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_11_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_18_reg ( .D(SBOX_11__s0_1[7]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_8_reg ( .D(SBOX_11_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_11__s0_1[7]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_18_reg ( .D(SBOX_11_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_8_reg ( .D(SBOX_11_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_11_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_13_reg ( .D(SBOX_11__s0_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_7_reg ( .D(SBOX_11_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_11__s0_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_13_reg ( .D(SBOX_11__s1_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_7_reg ( .D(SBOX_11_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_11__s1_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_9_reg ( .D(\SBOX_11/_s0_1 ), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_6_reg ( .D(SBOX_11_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_11/_s0_1 ), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_9_reg ( .D(\SBOX_11/_s1_1 ), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_6_reg ( .D(SBOX_11_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_11/_s1_1 ), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_8_reg ( .D(SBOX_11_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_8_reg ( .D(SBOX_11_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_5_reg ( .D(SBOX_11_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_11_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_5_reg ( .D(SBOX_11_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_11_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_14_reg ( .D(SBOX_11_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_14_reg ( .D(SBOX_11_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_11_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_4_reg ( .D(SBOX_11_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_11_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_4_reg ( .D(SBOX_11_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_11_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_12_reg ( .D(SBOX_11__s0[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_3_reg ( .D(SBOX_11_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_11__s0[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_12_reg ( .D(SBOX_11__s1[4]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_3_reg ( .D(SBOX_11_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_11__s1[4]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_15_reg ( .D(SBOX_11__s0[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_2_reg ( .D(SBOX_11_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_11__s0[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_15_reg ( .D(SBOX_11__s1[5]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_2_reg ( .D(SBOX_11_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_11__s1[5]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_11_reg ( .D(SBOX_11__s0[6]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_1_reg ( .D(SBOX_11_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_11__s0[6]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_11_reg ( .D(SBOX_11_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_1_reg ( .D(SBOX_11_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_11_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_10_reg ( .D(SBOX_11__s0[7]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_reg ( .D(SBOX_11_reg_0_s0), .CK(CLK), .Q(
        SBOX_11__s0[7]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_10_reg ( .D(SBOX_11_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_11_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_reg ( .D(SBOX_11_reg_0_s1), .CK(CLK), .Q(
        SBOX_11_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_4_reg ( .D(SHARE2_IN[92]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_4_reg ( .D(SHARE1_IN[92]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_5_reg ( .D(SHARE2_IN[88]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_5_reg ( .D(SHARE1_IN[88]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_6_reg ( .D(SHARE2_IN[91]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_6_reg ( .D(SHARE1_IN[91]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_7_reg ( .D(SHARE2_IN[93]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_3_reg ( .D(SHARE1_IN[94]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_7_reg ( .D(SHARE1_IN[93]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_3_reg ( .D(SHARE2_IN[94]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_2_reg ( .D(SHARE1_IN[95]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_2_reg ( .D(SHARE2_IN[95]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_1_reg ( .D(SHARE1_IN[89]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_1_reg ( .D(SHARE2_IN[89]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_reg ( .D(SHARE1_IN[90]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_reg ( .D(SHARE2_IN[90]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1), .QN() );
  INV_X1 SBOX_11_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[95]), .ZN(
        SBOX_11_not_0_Masked_z_0_) );
  INV_X1 SBOX_11_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[94]), .ZN(
        SBOX_11_not_1_Masked_z_0_) );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[95]), 
        .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[176]), .B(
        SHARE2_IN[94]), .Z(SBOX_11_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[176]), .B(
        SBOX_11_not_1_Masked_z_0_), .Z(SBOX_11_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[177]), .B(
        SBOX_11_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[177]), .B(
        SBOX_11_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_0_Masked_z[0]) );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_0_Masked_z[0]), .B(SBOX_11_xor_0_Masked_x[0]), .Z(SBOX_11_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_0_Masked_z[1]), .B(SBOX_11_xor_0_Masked_x[1]), .Z(SBOX_11_not_6_Masked_z[1]) );
  INV_X1 SBOX_11_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[91]), .ZN(
        SBOX_11_not_2_Masked_z_0_) );
  INV_X1 SBOX_11_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[90]), .ZN(
        SBOX_11_not_3_Masked_z_0_) );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[91]), 
        .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[178]), .B(
        SHARE2_IN[90]), .Z(SBOX_11_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[178]), .B(
        SBOX_11_not_3_Masked_z_0_), .Z(SBOX_11_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[179]), .B(
        SBOX_11_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[179]), .B(
        SBOX_11_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_1_Masked_z[0]) );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_1_Masked_z[0]), .B(SBOX_11_xor_1_Masked_x[0]), .Z(SBOX_11_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_1_Masked_z[1]), .B(SBOX_11_xor_1_Masked_x[1]), .Z(SBOX_11_not_7_Masked_z[1]) );
  INV_X1 SBOX_11_not_4_Masked_not_hpc_U1 ( .A(SBOX_11__s0[7]), .ZN(
        SBOX_11_not_4_Masked_z[0]) );
  INV_X1 SBOX_11_not_5_Masked_not_hpc_U1 ( .A(SBOX_11__s0[6]), .ZN(
        SBOX_11_not_5_Masked_z[0]) );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[180]), .B(
        SBOX_11_not_5_Masked_z[1]), .Z(SBOX_11_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[180]), .B(
        SBOX_11_not_5_Masked_z[0]), .Z(SBOX_11_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[181]), .B(
        SBOX_11_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[181]), .B(
        SBOX_11_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_2_Masked_z[0]) );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_2_Masked_z[0]), .B(SBOX_11_xor_2_Masked_x[0]), .Z(SBOX_11_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_2_Masked_z[1]), .B(SBOX_11_xor_2_Masked_x[1]), .Z(SBOX_11_not_10_Masked_z[1]) );
  INV_X1 SBOX_11_not_6_Masked_not_hpc_U1 ( .A(SBOX_11_xor_0_Masked_z_0_), .ZN(
        SBOX_11_not_6_Masked_z[0]) );
  INV_X1 SBOX_11_not_7_Masked_not_hpc_U1 ( .A(SBOX_11_xor_1_Masked_z_0_), .ZN(
        SBOX_11_not_7_Masked_z[0]) );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[182]), .B(
        SBOX_11_not_7_Masked_z[1]), .Z(SBOX_11_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[182]), .B(
        SBOX_11_not_7_Masked_z[0]), .Z(SBOX_11_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[183]), .B(
        SBOX_11_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[183]), .B(
        SBOX_11_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_3_Masked_z[0]) );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_3_Masked_z[0]), .B(SBOX_11_xor_3_Masked_x[0]), .Z(SBOX_11_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_3_Masked_z[1]), .B(SBOX_11_xor_3_Masked_x[1]), .Z(SBOX_11_not_11_Masked_z[1]) );
  INV_X1 SBOX_11_not_8_Masked_not_hpc_U1 ( .A(SBOX_11__s0_1[7]), .ZN(
        SBOX_11_not_8_Masked_z[0]) );
  INV_X1 SBOX_11_not_9_Masked_not_hpc_U1 ( .A(SBOX_11__s0_1[6]), .ZN(
        SBOX_11_not_9_Masked_z[0]) );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[184]), .B(
        SBOX_11_not_9_Masked_z[1]), .Z(SBOX_11_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[184]), .B(
        SBOX_11_not_9_Masked_z[0]), .Z(SBOX_11_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[185]), .B(
        SBOX_11_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[185]), .B(
        SBOX_11_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_4_Masked_z[0]) );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_4_Masked_z[0]), .B(SBOX_11_xor_4_Masked_x[0]), .Z(SBOX_11_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_4_Masked_z[1]), .B(SBOX_11_xor_4_Masked_x[1]), .Z(SBOX_11_not_14_Masked_z[1]) );
  INV_X1 SBOX_11_not_10_Masked_not_hpc_U1 ( .A(SBOX_11_xor_2_Masked_z_0_), 
        .ZN(SBOX_11_not_10_Masked_z[0]) );
  INV_X1 SBOX_11_not_11_Masked_not_hpc_U1 ( .A(SBOX_11_xor_3_Masked_z_0_), 
        .ZN(SBOX_11_not_11_Masked_z[0]) );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[186]), .B(
        SBOX_11_not_11_Masked_z[1]), .Z(SBOX_11_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[186]), .B(
        SBOX_11_not_11_Masked_z[0]), .Z(SBOX_11_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[187]), .B(
        SBOX_11_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[187]), .B(
        SBOX_11_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_5_Masked_z[0]) );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_5_Masked_z[0]), .B(SBOX_11_xor_5_Masked_x[0]), .Z(SBOX_11_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_5_Masked_z[1]), .B(SBOX_11_xor_5_Masked_x[1]), .Z(SBOX_11_not_15_Masked_z[1]) );
  INV_X1 SBOX_11_not_12_Masked_not_hpc_U1 ( .A(SBOX_11__s0_2[7]), .ZN(
        SBOX_11_not_12_Masked_z[0]) );
  INV_X1 SBOX_11_not_13_Masked_not_hpc_U1 ( .A(SBOX_11__s0_2[6]), .ZN(
        SBOX_11_not_13_Masked_z[0]) );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[188]), .B(
        SBOX_11_not_13_Masked_z[1]), .Z(SBOX_11_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[188]), .B(
        SBOX_11_not_13_Masked_z[0]), .Z(SBOX_11_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_6_Masked_z[1]) );
  AND2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[189]), .B(
        SBOX_11_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_11_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[189]), .B(
        SBOX_11_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_6_Masked_z[0]), .B(SBOX_11_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[92]) );
  XOR2_X1 SBOX_11_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_6_Masked_z[1]), .B(SBOX_11_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[220]) );
  INV_X1 SBOX_11_not_14_Masked_not_hpc_U1 ( .A(SBOX_11_xor_4_Masked_z_0_), 
        .ZN(SBOX_11_not_14_Masked_z[0]) );
  INV_X1 SBOX_11_not_15_Masked_not_hpc_U1 ( .A(SBOX_11_xor_5_Masked_z_0_), 
        .ZN(SBOX_11_not_15_Masked_z[0]) );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_11_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_11_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_11_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[190]), .B(
        SBOX_11_not_15_Masked_z[1]), .Z(SBOX_11_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_11_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[190]), .B(
        SBOX_11_not_15_Masked_z[0]), .Z(SBOX_11_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_11_and_7_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_11_and_7_Masked_z[0]) );
  AND2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[191]), .B(
        SBOX_11_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_11_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_11_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_11_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[191]), .B(
        SBOX_11_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_11_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_11_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_7_Masked_z[0]), .B(SBOX_11_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[88]) );
  XOR2_X1 SBOX_11_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_7_Masked_z[1]), .B(SBOX_11_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[216]) );
  DFF_X1 SBOX_12_reg_1_s0_31_reg ( .D(SBOX_12_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_12_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_31_reg ( .D(SBOX_12_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_12_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_30_reg ( .D(SBOX_12_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[97]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_30_reg ( .D(SBOX_12_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[225]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_29_reg ( .D(SBOX_12_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[98]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_29_reg ( .D(SBOX_12_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[226]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_28_reg ( .D(SBOX_12_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[99]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_28_reg ( .D(SBOX_12_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[227]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_27_reg ( .D(SBOX_12_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_12_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_27_reg ( .D(SBOX_12_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_12_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_26_reg ( .D(SBOX_12_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[101]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_26_reg ( .D(SBOX_12_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[229]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_25_reg ( .D(SBOX_12_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[102]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_25_reg ( .D(SBOX_12_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[230]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_24_reg ( .D(SBOX_12_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[103]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_24_reg ( .D(SBOX_12_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[231]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_31_reg ( .D(SBOX_12__s0_2_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_23_reg ( .D(SBOX_12_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_12__s0_2_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_31_reg ( .D(SBOX_12__s1_2_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_23_reg ( .D(SBOX_12_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_12__s1_2_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_29_reg ( .D(SBOX_12__s0_2_1), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_22_reg ( .D(SBOX_12_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_12__s0_2_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_29_reg ( .D(SBOX_12__s1_2_1), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_22_reg ( .D(SBOX_12_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_12__s1_2_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_30_reg ( .D(SBOX_12_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_30_reg ( .D(SBOX_12_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_12_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_21_reg ( .D(SBOX_12_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_12_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_21_reg ( .D(SBOX_12_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_12_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_28_reg ( .D(SBOX_12_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_28_reg ( .D(SBOX_12_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_12_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_20_reg ( .D(SBOX_12_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_12_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_20_reg ( .D(SBOX_12_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_12_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_27_reg ( .D(SBOX_12__s0_2[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_19_reg ( .D(SBOX_12_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_12__s0_2[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_27_reg ( .D(SBOX_12__s1_2[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_19_reg ( .D(SBOX_12_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_12__s1_2[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_26_reg ( .D(SBOX_12__s0_2[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_18_reg ( .D(SBOX_12_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_12__s0_2[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_26_reg ( .D(SBOX_12__s1_2[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_18_reg ( .D(SBOX_12_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_12__s1_2[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_25_reg ( .D(SBOX_12__s0_2[6]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_17_reg ( .D(SBOX_12_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_12__s0_2[6]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_25_reg ( .D(SBOX_12_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_17_reg ( .D(SBOX_12_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_12_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_24_reg ( .D(SBOX_12__s0_2[7]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_16_reg ( .D(SBOX_12_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_12__s0_2[7]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_24_reg ( .D(SBOX_12_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_16_reg ( .D(SBOX_12_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_12_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_21_reg ( .D(SBOX_12__s0_1_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_15_reg ( .D(SBOX_12_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_12__s0_1_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_21_reg ( .D(SBOX_12__s1_1_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_15_reg ( .D(SBOX_12_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_12__s1_1_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_17_reg ( .D(SBOX_12__s0_1_1), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_14_reg ( .D(SBOX_12_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_12__s0_1_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_17_reg ( .D(SBOX_12__s1_1_1), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_14_reg ( .D(SBOX_12_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_12__s1_1_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_16_reg ( .D(SBOX_12_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_16_reg ( .D(SBOX_12_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_12_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_13_reg ( .D(SBOX_12_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_12_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_13_reg ( .D(SBOX_12_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_12_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_22_reg ( .D(SBOX_12_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_22_reg ( .D(SBOX_12_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_12_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_12_reg ( .D(SBOX_12_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_12_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_12_reg ( .D(SBOX_12_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_12_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_20_reg ( .D(SBOX_12__s0_1[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_11_reg ( .D(SBOX_12_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_12__s0_1[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_20_reg ( .D(SBOX_12__s1_1[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_11_reg ( .D(SBOX_12_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_12__s1_1[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_23_reg ( .D(SBOX_12__s0_1[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_10_reg ( .D(SBOX_12_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_12__s0_1[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_23_reg ( .D(SBOX_12__s1_1[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_10_reg ( .D(SBOX_12_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_12__s1_1[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_19_reg ( .D(SBOX_12__s0_1[6]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_9_reg ( .D(SBOX_12_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_12__s0_1[6]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_19_reg ( .D(SBOX_12_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_9_reg ( .D(SBOX_12_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_12_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_18_reg ( .D(SBOX_12__s0_1[7]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_8_reg ( .D(SBOX_12_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_12__s0_1[7]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_18_reg ( .D(SBOX_12_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_8_reg ( .D(SBOX_12_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_12_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_13_reg ( .D(SBOX_12__s0_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_7_reg ( .D(SBOX_12_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_12__s0_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_13_reg ( .D(SBOX_12__s1_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_7_reg ( .D(SBOX_12_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_12__s1_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_9_reg ( .D(\SBOX_12/_s0_1 ), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_6_reg ( .D(SBOX_12_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_12/_s0_1 ), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_9_reg ( .D(\SBOX_12/_s1_1 ), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_6_reg ( .D(SBOX_12_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_12/_s1_1 ), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_8_reg ( .D(SBOX_12_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_8_reg ( .D(SBOX_12_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_5_reg ( .D(SBOX_12_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_12_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_5_reg ( .D(SBOX_12_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_12_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_14_reg ( .D(SBOX_12_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_14_reg ( .D(SBOX_12_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_12_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_4_reg ( .D(SBOX_12_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_12_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_4_reg ( .D(SBOX_12_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_12_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_12_reg ( .D(SBOX_12__s0[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_3_reg ( .D(SBOX_12_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_12__s0[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_12_reg ( .D(SBOX_12__s1[4]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_3_reg ( .D(SBOX_12_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_12__s1[4]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_15_reg ( .D(SBOX_12__s0[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_2_reg ( .D(SBOX_12_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_12__s0[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_15_reg ( .D(SBOX_12__s1[5]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_2_reg ( .D(SBOX_12_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_12__s1[5]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_11_reg ( .D(SBOX_12__s0[6]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_1_reg ( .D(SBOX_12_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_12__s0[6]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_11_reg ( .D(SBOX_12_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_1_reg ( .D(SBOX_12_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_12_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_10_reg ( .D(SBOX_12__s0[7]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_reg ( .D(SBOX_12_reg_0_s0), .CK(CLK), .Q(
        SBOX_12__s0[7]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_10_reg ( .D(SBOX_12_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_12_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_reg ( .D(SBOX_12_reg_0_s1), .CK(CLK), .Q(
        SBOX_12_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_4_reg ( .D(SHARE2_IN[100]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_4_reg ( .D(SHARE1_IN[100]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_5_reg ( .D(SHARE2_IN[96]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_5_reg ( .D(SHARE1_IN[96]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_6_reg ( .D(SHARE2_IN[99]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_6_reg ( .D(SHARE1_IN[99]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_7_reg ( .D(SHARE2_IN[101]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_3_reg ( .D(SHARE1_IN[102]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_7_reg ( .D(SHARE1_IN[101]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_3_reg ( .D(SHARE2_IN[102]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_2_reg ( .D(SHARE1_IN[103]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_2_reg ( .D(SHARE2_IN[103]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_1_reg ( .D(SHARE1_IN[97]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_1_reg ( .D(SHARE2_IN[97]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_reg ( .D(SHARE1_IN[98]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_reg ( .D(SHARE2_IN[98]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1), .QN() );
  INV_X1 SBOX_12_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[103]), .ZN(
        SBOX_12_not_0_Masked_z_0_) );
  INV_X1 SBOX_12_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[102]), .ZN(
        SBOX_12_not_1_Masked_z_0_) );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[103]), 
        .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[192]), .B(
        SHARE2_IN[102]), .Z(SBOX_12_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[192]), .B(
        SBOX_12_not_1_Masked_z_0_), .Z(SBOX_12_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[193]), .B(
        SBOX_12_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[193]), .B(
        SBOX_12_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_0_Masked_z[0]) );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_0_Masked_z[0]), .B(SBOX_12_xor_0_Masked_x[0]), .Z(SBOX_12_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_0_Masked_z[1]), .B(SBOX_12_xor_0_Masked_x[1]), .Z(SBOX_12_not_6_Masked_z[1]) );
  INV_X1 SBOX_12_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[99]), .ZN(
        SBOX_12_not_2_Masked_z_0_) );
  INV_X1 SBOX_12_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[98]), .ZN(
        SBOX_12_not_3_Masked_z_0_) );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[99]), 
        .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[194]), .B(
        SHARE2_IN[98]), .Z(SBOX_12_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[194]), .B(
        SBOX_12_not_3_Masked_z_0_), .Z(SBOX_12_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[195]), .B(
        SBOX_12_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[195]), .B(
        SBOX_12_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_1_Masked_z[0]) );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_1_Masked_z[0]), .B(SBOX_12_xor_1_Masked_x[0]), .Z(SBOX_12_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_1_Masked_z[1]), .B(SBOX_12_xor_1_Masked_x[1]), .Z(SBOX_12_not_7_Masked_z[1]) );
  INV_X1 SBOX_12_not_4_Masked_not_hpc_U1 ( .A(SBOX_12__s0[7]), .ZN(
        SBOX_12_not_4_Masked_z[0]) );
  INV_X1 SBOX_12_not_5_Masked_not_hpc_U1 ( .A(SBOX_12__s0[6]), .ZN(
        SBOX_12_not_5_Masked_z[0]) );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[196]), .B(
        SBOX_12_not_5_Masked_z[1]), .Z(SBOX_12_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[196]), .B(
        SBOX_12_not_5_Masked_z[0]), .Z(SBOX_12_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[197]), .B(
        SBOX_12_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[197]), .B(
        SBOX_12_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_2_Masked_z[0]) );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_2_Masked_z[0]), .B(SBOX_12_xor_2_Masked_x[0]), .Z(SBOX_12_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_2_Masked_z[1]), .B(SBOX_12_xor_2_Masked_x[1]), .Z(SBOX_12_not_10_Masked_z[1]) );
  INV_X1 SBOX_12_not_6_Masked_not_hpc_U1 ( .A(SBOX_12_xor_0_Masked_z_0_), .ZN(
        SBOX_12_not_6_Masked_z[0]) );
  INV_X1 SBOX_12_not_7_Masked_not_hpc_U1 ( .A(SBOX_12_xor_1_Masked_z_0_), .ZN(
        SBOX_12_not_7_Masked_z[0]) );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[198]), .B(
        SBOX_12_not_7_Masked_z[1]), .Z(SBOX_12_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[198]), .B(
        SBOX_12_not_7_Masked_z[0]), .Z(SBOX_12_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[199]), .B(
        SBOX_12_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[199]), .B(
        SBOX_12_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_3_Masked_z[0]) );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_3_Masked_z[0]), .B(SBOX_12_xor_3_Masked_x[0]), .Z(SBOX_12_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_3_Masked_z[1]), .B(SBOX_12_xor_3_Masked_x[1]), .Z(SBOX_12_not_11_Masked_z[1]) );
  INV_X1 SBOX_12_not_8_Masked_not_hpc_U1 ( .A(SBOX_12__s0_1[7]), .ZN(
        SBOX_12_not_8_Masked_z[0]) );
  INV_X1 SBOX_12_not_9_Masked_not_hpc_U1 ( .A(SBOX_12__s0_1[6]), .ZN(
        SBOX_12_not_9_Masked_z[0]) );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[200]), .B(
        SBOX_12_not_9_Masked_z[1]), .Z(SBOX_12_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[200]), .B(
        SBOX_12_not_9_Masked_z[0]), .Z(SBOX_12_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[201]), .B(
        SBOX_12_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[201]), .B(
        SBOX_12_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_4_Masked_z[0]) );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_4_Masked_z[0]), .B(SBOX_12_xor_4_Masked_x[0]), .Z(SBOX_12_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_4_Masked_z[1]), .B(SBOX_12_xor_4_Masked_x[1]), .Z(SBOX_12_not_14_Masked_z[1]) );
  INV_X1 SBOX_12_not_10_Masked_not_hpc_U1 ( .A(SBOX_12_xor_2_Masked_z_0_), 
        .ZN(SBOX_12_not_10_Masked_z[0]) );
  INV_X1 SBOX_12_not_11_Masked_not_hpc_U1 ( .A(SBOX_12_xor_3_Masked_z_0_), 
        .ZN(SBOX_12_not_11_Masked_z[0]) );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[202]), .B(
        SBOX_12_not_11_Masked_z[1]), .Z(SBOX_12_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[202]), .B(
        SBOX_12_not_11_Masked_z[0]), .Z(SBOX_12_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[203]), .B(
        SBOX_12_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[203]), .B(
        SBOX_12_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_5_Masked_z[0]) );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_5_Masked_z[0]), .B(SBOX_12_xor_5_Masked_x[0]), .Z(SBOX_12_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_5_Masked_z[1]), .B(SBOX_12_xor_5_Masked_x[1]), .Z(SBOX_12_not_15_Masked_z[1]) );
  INV_X1 SBOX_12_not_12_Masked_not_hpc_U1 ( .A(SBOX_12__s0_2[7]), .ZN(
        SBOX_12_not_12_Masked_z[0]) );
  INV_X1 SBOX_12_not_13_Masked_not_hpc_U1 ( .A(SBOX_12__s0_2[6]), .ZN(
        SBOX_12_not_13_Masked_z[0]) );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[204]), .B(
        SBOX_12_not_13_Masked_z[1]), .Z(SBOX_12_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[204]), .B(
        SBOX_12_not_13_Masked_z[0]), .Z(SBOX_12_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_6_Masked_z[1]) );
  AND2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[205]), .B(
        SBOX_12_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_12_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[205]), .B(
        SBOX_12_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_6_Masked_z[0]), .B(SBOX_12_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[100]) );
  XOR2_X1 SBOX_12_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_6_Masked_z[1]), .B(SBOX_12_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[228]) );
  INV_X1 SBOX_12_not_14_Masked_not_hpc_U1 ( .A(SBOX_12_xor_4_Masked_z_0_), 
        .ZN(SBOX_12_not_14_Masked_z[0]) );
  INV_X1 SBOX_12_not_15_Masked_not_hpc_U1 ( .A(SBOX_12_xor_5_Masked_z_0_), 
        .ZN(SBOX_12_not_15_Masked_z[0]) );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_12_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_12_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_12_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[206]), .B(
        SBOX_12_not_15_Masked_z[1]), .Z(SBOX_12_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_12_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[206]), .B(
        SBOX_12_not_15_Masked_z[0]), .Z(SBOX_12_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_12_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_12_and_7_Masked_z[1]) );
  AND2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[207]), .B(
        SBOX_12_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_12_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_12_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_12_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[207]), .B(
        SBOX_12_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_12_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_12_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_7_Masked_z[0]), .B(SBOX_12_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[96]) );
  XOR2_X1 SBOX_12_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_7_Masked_z[1]), .B(SBOX_12_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[224]) );
  DFF_X1 SBOX_13_reg_1_s0_31_reg ( .D(SBOX_13_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_13_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_31_reg ( .D(SBOX_13_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_13_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_30_reg ( .D(SBOX_13_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[105]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_30_reg ( .D(SBOX_13_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[233]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_29_reg ( .D(SBOX_13_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[106]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_29_reg ( .D(SBOX_13_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[234]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_28_reg ( .D(SBOX_13_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[107]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_28_reg ( .D(SBOX_13_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[235]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_27_reg ( .D(SBOX_13_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_13_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_27_reg ( .D(SBOX_13_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_13_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_26_reg ( .D(SBOX_13_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[109]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_26_reg ( .D(SBOX_13_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[237]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_25_reg ( .D(SBOX_13_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[110]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_25_reg ( .D(SBOX_13_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[238]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_24_reg ( .D(SBOX_13_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[111]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_24_reg ( .D(SBOX_13_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[239]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_31_reg ( .D(SBOX_13__s0_2_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_23_reg ( .D(SBOX_13_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_13__s0_2_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_31_reg ( .D(SBOX_13__s1_2_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_23_reg ( .D(SBOX_13_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_13__s1_2_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_29_reg ( .D(SBOX_13__s0_2_1), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_22_reg ( .D(SBOX_13_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_13__s0_2_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_29_reg ( .D(SBOX_13__s1_2_1), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_22_reg ( .D(SBOX_13_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_13__s1_2_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_30_reg ( .D(SBOX_13_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_30_reg ( .D(SBOX_13_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_13_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_21_reg ( .D(SBOX_13_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_13_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_21_reg ( .D(SBOX_13_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_13_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_28_reg ( .D(SBOX_13_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_28_reg ( .D(SBOX_13_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_13_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_20_reg ( .D(SBOX_13_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_13_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_20_reg ( .D(SBOX_13_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_13_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_27_reg ( .D(SBOX_13__s0_2[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_19_reg ( .D(SBOX_13_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_13__s0_2[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_27_reg ( .D(SBOX_13__s1_2[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_19_reg ( .D(SBOX_13_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_13__s1_2[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_26_reg ( .D(SBOX_13__s0_2[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_18_reg ( .D(SBOX_13_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_13__s0_2[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_26_reg ( .D(SBOX_13__s1_2[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_18_reg ( .D(SBOX_13_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_13__s1_2[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_25_reg ( .D(SBOX_13__s0_2[6]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_17_reg ( .D(SBOX_13_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_13__s0_2[6]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_25_reg ( .D(SBOX_13_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_17_reg ( .D(SBOX_13_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_13_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_24_reg ( .D(SBOX_13__s0_2[7]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_16_reg ( .D(SBOX_13_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_13__s0_2[7]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_24_reg ( .D(SBOX_13_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_16_reg ( .D(SBOX_13_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_13_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_21_reg ( .D(SBOX_13__s0_1_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_15_reg ( .D(SBOX_13_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_13__s0_1_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_21_reg ( .D(SBOX_13__s1_1_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_15_reg ( .D(SBOX_13_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_13__s1_1_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_17_reg ( .D(SBOX_13__s0_1_1), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_14_reg ( .D(SBOX_13_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_13__s0_1_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_17_reg ( .D(SBOX_13__s1_1_1), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_14_reg ( .D(SBOX_13_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_13__s1_1_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_16_reg ( .D(SBOX_13_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_16_reg ( .D(SBOX_13_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_13_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_13_reg ( .D(SBOX_13_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_13_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_13_reg ( .D(SBOX_13_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_13_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_22_reg ( .D(SBOX_13_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_22_reg ( .D(SBOX_13_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_13_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_12_reg ( .D(SBOX_13_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_13_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_12_reg ( .D(SBOX_13_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_13_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_20_reg ( .D(SBOX_13__s0_1[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_11_reg ( .D(SBOX_13_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_13__s0_1[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_20_reg ( .D(SBOX_13__s1_1[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_11_reg ( .D(SBOX_13_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_13__s1_1[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_23_reg ( .D(SBOX_13__s0_1[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_10_reg ( .D(SBOX_13_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_13__s0_1[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_23_reg ( .D(SBOX_13__s1_1[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_10_reg ( .D(SBOX_13_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_13__s1_1[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_19_reg ( .D(SBOX_13__s0_1[6]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_9_reg ( .D(SBOX_13_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_13__s0_1[6]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_19_reg ( .D(SBOX_13_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_9_reg ( .D(SBOX_13_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_13_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_18_reg ( .D(SBOX_13__s0_1[7]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_8_reg ( .D(SBOX_13_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_13__s0_1[7]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_18_reg ( .D(SBOX_13_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_8_reg ( .D(SBOX_13_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_13_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_13_reg ( .D(SBOX_13__s0_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_7_reg ( .D(SBOX_13_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_13__s0_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_13_reg ( .D(SBOX_13__s1_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_7_reg ( .D(SBOX_13_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_13__s1_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_9_reg ( .D(\SBOX_13/_s0_1 ), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_6_reg ( .D(SBOX_13_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_13/_s0_1 ), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_9_reg ( .D(\SBOX_13/_s1_1 ), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_6_reg ( .D(SBOX_13_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_13/_s1_1 ), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_8_reg ( .D(SBOX_13_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_8_reg ( .D(SBOX_13_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_5_reg ( .D(SBOX_13_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_13_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_5_reg ( .D(SBOX_13_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_13_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_14_reg ( .D(SBOX_13_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_14_reg ( .D(SBOX_13_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_13_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_4_reg ( .D(SBOX_13_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_13_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_4_reg ( .D(SBOX_13_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_13_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_12_reg ( .D(SBOX_13__s0[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_3_reg ( .D(SBOX_13_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_13__s0[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_12_reg ( .D(SBOX_13__s1[4]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_3_reg ( .D(SBOX_13_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_13__s1[4]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_15_reg ( .D(SBOX_13__s0[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_2_reg ( .D(SBOX_13_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_13__s0[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_15_reg ( .D(SBOX_13__s1[5]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_2_reg ( .D(SBOX_13_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_13__s1[5]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_11_reg ( .D(SBOX_13__s0[6]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_1_reg ( .D(SBOX_13_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_13__s0[6]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_11_reg ( .D(SBOX_13_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_1_reg ( .D(SBOX_13_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_13_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_10_reg ( .D(SBOX_13__s0[7]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_reg ( .D(SBOX_13_reg_0_s0), .CK(CLK), .Q(
        SBOX_13__s0[7]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_10_reg ( .D(SBOX_13_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_13_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_reg ( .D(SBOX_13_reg_0_s1), .CK(CLK), .Q(
        SBOX_13_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_4_reg ( .D(SHARE2_IN[108]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_4_reg ( .D(SHARE1_IN[108]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_5_reg ( .D(SHARE2_IN[104]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_5_reg ( .D(SHARE1_IN[104]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_6_reg ( .D(SHARE2_IN[107]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_6_reg ( .D(SHARE1_IN[107]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_7_reg ( .D(SHARE2_IN[109]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_3_reg ( .D(SHARE1_IN[110]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_7_reg ( .D(SHARE1_IN[109]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_3_reg ( .D(SHARE2_IN[110]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_2_reg ( .D(SHARE1_IN[111]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_2_reg ( .D(SHARE2_IN[111]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_1_reg ( .D(SHARE1_IN[105]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_1_reg ( .D(SHARE2_IN[105]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_reg ( .D(SHARE1_IN[106]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_reg ( .D(SHARE2_IN[106]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1), .QN() );
  INV_X1 SBOX_13_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[111]), .ZN(
        SBOX_13_not_0_Masked_z_0_) );
  INV_X1 SBOX_13_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[110]), .ZN(
        SBOX_13_not_1_Masked_z_0_) );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[111]), 
        .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[208]), .B(
        SHARE2_IN[110]), .Z(SBOX_13_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[208]), .B(
        SBOX_13_not_1_Masked_z_0_), .Z(SBOX_13_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[209]), .B(
        SBOX_13_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[209]), .B(
        SBOX_13_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_0_Masked_z[0]) );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_0_Masked_z[0]), .B(SBOX_13_xor_0_Masked_x[0]), .Z(SBOX_13_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_0_Masked_z[1]), .B(SBOX_13_xor_0_Masked_x[1]), .Z(SBOX_13_not_6_Masked_z[1]) );
  INV_X1 SBOX_13_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[107]), .ZN(
        SBOX_13_not_2_Masked_z_0_) );
  INV_X1 SBOX_13_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[106]), .ZN(
        SBOX_13_not_3_Masked_z_0_) );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[107]), 
        .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[210]), .B(
        SHARE2_IN[106]), .Z(SBOX_13_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[210]), .B(
        SBOX_13_not_3_Masked_z_0_), .Z(SBOX_13_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[211]), .B(
        SBOX_13_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[211]), .B(
        SBOX_13_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_1_Masked_z[0]) );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_1_Masked_z[0]), .B(SBOX_13_xor_1_Masked_x[0]), .Z(SBOX_13_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_1_Masked_z[1]), .B(SBOX_13_xor_1_Masked_x[1]), .Z(SBOX_13_not_7_Masked_z[1]) );
  INV_X1 SBOX_13_not_4_Masked_not_hpc_U1 ( .A(SBOX_13__s0[7]), .ZN(
        SBOX_13_not_4_Masked_z[0]) );
  INV_X1 SBOX_13_not_5_Masked_not_hpc_U1 ( .A(SBOX_13__s0[6]), .ZN(
        SBOX_13_not_5_Masked_z[0]) );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[212]), .B(
        SBOX_13_not_5_Masked_z[1]), .Z(SBOX_13_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[212]), .B(
        SBOX_13_not_5_Masked_z[0]), .Z(SBOX_13_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[213]), .B(
        SBOX_13_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[213]), .B(
        SBOX_13_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_2_Masked_z[0]) );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_2_Masked_z[0]), .B(SBOX_13_xor_2_Masked_x[0]), .Z(SBOX_13_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_2_Masked_z[1]), .B(SBOX_13_xor_2_Masked_x[1]), .Z(SBOX_13_not_10_Masked_z[1]) );
  INV_X1 SBOX_13_not_6_Masked_not_hpc_U1 ( .A(SBOX_13_xor_0_Masked_z_0_), .ZN(
        SBOX_13_not_6_Masked_z[0]) );
  INV_X1 SBOX_13_not_7_Masked_not_hpc_U1 ( .A(SBOX_13_xor_1_Masked_z_0_), .ZN(
        SBOX_13_not_7_Masked_z[0]) );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[214]), .B(
        SBOX_13_not_7_Masked_z[1]), .Z(SBOX_13_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[214]), .B(
        SBOX_13_not_7_Masked_z[0]), .Z(SBOX_13_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[215]), .B(
        SBOX_13_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[215]), .B(
        SBOX_13_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_3_Masked_z[0]) );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_3_Masked_z[0]), .B(SBOX_13_xor_3_Masked_x[0]), .Z(SBOX_13_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_3_Masked_z[1]), .B(SBOX_13_xor_3_Masked_x[1]), .Z(SBOX_13_not_11_Masked_z[1]) );
  INV_X1 SBOX_13_not_8_Masked_not_hpc_U1 ( .A(SBOX_13__s0_1[7]), .ZN(
        SBOX_13_not_8_Masked_z[0]) );
  INV_X1 SBOX_13_not_9_Masked_not_hpc_U1 ( .A(SBOX_13__s0_1[6]), .ZN(
        SBOX_13_not_9_Masked_z[0]) );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[216]), .B(
        SBOX_13_not_9_Masked_z[1]), .Z(SBOX_13_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[216]), .B(
        SBOX_13_not_9_Masked_z[0]), .Z(SBOX_13_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[217]), .B(
        SBOX_13_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[217]), .B(
        SBOX_13_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_4_Masked_z[0]) );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_4_Masked_z[0]), .B(SBOX_13_xor_4_Masked_x[0]), .Z(SBOX_13_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_4_Masked_z[1]), .B(SBOX_13_xor_4_Masked_x[1]), .Z(SBOX_13_not_14_Masked_z[1]) );
  INV_X1 SBOX_13_not_10_Masked_not_hpc_U1 ( .A(SBOX_13_xor_2_Masked_z_0_), 
        .ZN(SBOX_13_not_10_Masked_z[0]) );
  INV_X1 SBOX_13_not_11_Masked_not_hpc_U1 ( .A(SBOX_13_xor_3_Masked_z_0_), 
        .ZN(SBOX_13_not_11_Masked_z[0]) );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[218]), .B(
        SBOX_13_not_11_Masked_z[1]), .Z(SBOX_13_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[218]), .B(
        SBOX_13_not_11_Masked_z[0]), .Z(SBOX_13_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[219]), .B(
        SBOX_13_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[219]), .B(
        SBOX_13_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_5_Masked_z[0]) );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_5_Masked_z[0]), .B(SBOX_13_xor_5_Masked_x[0]), .Z(SBOX_13_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_5_Masked_z[1]), .B(SBOX_13_xor_5_Masked_x[1]), .Z(SBOX_13_not_15_Masked_z[1]) );
  INV_X1 SBOX_13_not_12_Masked_not_hpc_U1 ( .A(SBOX_13__s0_2[7]), .ZN(
        SBOX_13_not_12_Masked_z[0]) );
  INV_X1 SBOX_13_not_13_Masked_not_hpc_U1 ( .A(SBOX_13__s0_2[6]), .ZN(
        SBOX_13_not_13_Masked_z[0]) );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[220]), .B(
        SBOX_13_not_13_Masked_z[1]), .Z(SBOX_13_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[220]), .B(
        SBOX_13_not_13_Masked_z[0]), .Z(SBOX_13_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_6_Masked_z[1]) );
  AND2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[221]), .B(
        SBOX_13_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_13_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[221]), .B(
        SBOX_13_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_6_Masked_z[0]), .B(SBOX_13_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[108]) );
  XOR2_X1 SBOX_13_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_6_Masked_z[1]), .B(SBOX_13_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[236]) );
  INV_X1 SBOX_13_not_14_Masked_not_hpc_U1 ( .A(SBOX_13_xor_4_Masked_z_0_), 
        .ZN(SBOX_13_not_14_Masked_z[0]) );
  INV_X1 SBOX_13_not_15_Masked_not_hpc_U1 ( .A(SBOX_13_xor_5_Masked_z_0_), 
        .ZN(SBOX_13_not_15_Masked_z[0]) );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_13_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_13_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_13_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[222]), .B(
        SBOX_13_not_15_Masked_z[1]), .Z(SBOX_13_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_13_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[222]), .B(
        SBOX_13_not_15_Masked_z[0]), .Z(SBOX_13_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_13_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_13_and_7_Masked_z[1]) );
  AND2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[223]), .B(
        SBOX_13_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_13_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_13_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_13_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[223]), .B(
        SBOX_13_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_13_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_13_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_7_Masked_z[0]), .B(SBOX_13_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[104]) );
  XOR2_X1 SBOX_13_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_7_Masked_z[1]), .B(SBOX_13_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[232]) );
  DFF_X1 SBOX_14_reg_1_s0_31_reg ( .D(SBOX_14_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_14_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_31_reg ( .D(SBOX_14_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_14_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_30_reg ( .D(SBOX_14_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[113]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_30_reg ( .D(SBOX_14_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[241]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_29_reg ( .D(SBOX_14_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[114]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_29_reg ( .D(SBOX_14_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[242]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_28_reg ( .D(SBOX_14_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[115]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_28_reg ( .D(SBOX_14_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[243]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_27_reg ( .D(SBOX_14_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_14_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_27_reg ( .D(SBOX_14_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_14_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_26_reg ( .D(SBOX_14_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[117]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_26_reg ( .D(SBOX_14_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[245]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_25_reg ( .D(SBOX_14_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[118]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_25_reg ( .D(SBOX_14_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[246]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_24_reg ( .D(SBOX_14_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[119]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_24_reg ( .D(SBOX_14_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[247]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_31_reg ( .D(SBOX_14__s0_2_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_23_reg ( .D(SBOX_14_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_14__s0_2_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_31_reg ( .D(SBOX_14__s1_2_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_23_reg ( .D(SBOX_14_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_14__s1_2_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_29_reg ( .D(SBOX_14__s0_2_1), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_22_reg ( .D(SBOX_14_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_14__s0_2_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_29_reg ( .D(SBOX_14__s1_2_1), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_22_reg ( .D(SBOX_14_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_14__s1_2_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_30_reg ( .D(SBOX_14_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_30_reg ( .D(SBOX_14_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_14_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_21_reg ( .D(SBOX_14_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_14_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_21_reg ( .D(SBOX_14_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_14_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_28_reg ( .D(SBOX_14_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_28_reg ( .D(SBOX_14_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_14_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_20_reg ( .D(SBOX_14_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_14_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_20_reg ( .D(SBOX_14_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_14_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_27_reg ( .D(SBOX_14__s0_2[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_19_reg ( .D(SBOX_14_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_14__s0_2[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_27_reg ( .D(SBOX_14__s1_2[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_19_reg ( .D(SBOX_14_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_14__s1_2[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_26_reg ( .D(SBOX_14__s0_2[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_18_reg ( .D(SBOX_14_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_14__s0_2[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_26_reg ( .D(SBOX_14__s1_2[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_18_reg ( .D(SBOX_14_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_14__s1_2[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_25_reg ( .D(SBOX_14__s0_2[6]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_17_reg ( .D(SBOX_14_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_14__s0_2[6]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_25_reg ( .D(SBOX_14_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_17_reg ( .D(SBOX_14_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_14_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_24_reg ( .D(SBOX_14__s0_2[7]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_16_reg ( .D(SBOX_14_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_14__s0_2[7]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_24_reg ( .D(SBOX_14_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_16_reg ( .D(SBOX_14_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_14_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_21_reg ( .D(SBOX_14__s0_1_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_15_reg ( .D(SBOX_14_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_14__s0_1_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_21_reg ( .D(SBOX_14__s1_1_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_15_reg ( .D(SBOX_14_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_14__s1_1_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_17_reg ( .D(SBOX_14__s0_1_1), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_14_reg ( .D(SBOX_14_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_14__s0_1_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_17_reg ( .D(SBOX_14__s1_1_1), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_14_reg ( .D(SBOX_14_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_14__s1_1_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_16_reg ( .D(SBOX_14_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_16_reg ( .D(SBOX_14_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_14_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_13_reg ( .D(SBOX_14_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_14_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_13_reg ( .D(SBOX_14_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_14_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_22_reg ( .D(SBOX_14_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_22_reg ( .D(SBOX_14_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_14_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_12_reg ( .D(SBOX_14_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_14_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_12_reg ( .D(SBOX_14_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_14_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_20_reg ( .D(SBOX_14__s0_1[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_11_reg ( .D(SBOX_14_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_14__s0_1[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_20_reg ( .D(SBOX_14__s1_1[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_11_reg ( .D(SBOX_14_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_14__s1_1[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_23_reg ( .D(SBOX_14__s0_1[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_10_reg ( .D(SBOX_14_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_14__s0_1[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_23_reg ( .D(SBOX_14__s1_1[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_10_reg ( .D(SBOX_14_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_14__s1_1[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_19_reg ( .D(SBOX_14__s0_1[6]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_9_reg ( .D(SBOX_14_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_14__s0_1[6]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_19_reg ( .D(SBOX_14_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_9_reg ( .D(SBOX_14_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_14_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_18_reg ( .D(SBOX_14__s0_1[7]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_8_reg ( .D(SBOX_14_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_14__s0_1[7]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_18_reg ( .D(SBOX_14_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_8_reg ( .D(SBOX_14_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_14_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_13_reg ( .D(SBOX_14__s0_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_7_reg ( .D(SBOX_14_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_14__s0_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_13_reg ( .D(SBOX_14__s1_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_7_reg ( .D(SBOX_14_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_14__s1_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_9_reg ( .D(\SBOX_14/_s0_1 ), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_6_reg ( .D(SBOX_14_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_14/_s0_1 ), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_9_reg ( .D(\SBOX_14/_s1_1 ), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_6_reg ( .D(SBOX_14_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_14/_s1_1 ), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_8_reg ( .D(SBOX_14_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_8_reg ( .D(SBOX_14_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_5_reg ( .D(SBOX_14_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_14_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_5_reg ( .D(SBOX_14_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_14_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_14_reg ( .D(SBOX_14_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_14_reg ( .D(SBOX_14_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_14_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_4_reg ( .D(SBOX_14_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_14_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_4_reg ( .D(SBOX_14_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_14_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_12_reg ( .D(SBOX_14__s0[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_3_reg ( .D(SBOX_14_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_14__s0[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_12_reg ( .D(SBOX_14__s1[4]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_3_reg ( .D(SBOX_14_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_14__s1[4]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_15_reg ( .D(SBOX_14__s0[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_2_reg ( .D(SBOX_14_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_14__s0[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_15_reg ( .D(SBOX_14__s1[5]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_2_reg ( .D(SBOX_14_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_14__s1[5]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_11_reg ( .D(SBOX_14__s0[6]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_1_reg ( .D(SBOX_14_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_14__s0[6]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_11_reg ( .D(SBOX_14_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_1_reg ( .D(SBOX_14_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_14_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_10_reg ( .D(SBOX_14__s0[7]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_reg ( .D(SBOX_14_reg_0_s0), .CK(CLK), .Q(
        SBOX_14__s0[7]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_10_reg ( .D(SBOX_14_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_14_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_reg ( .D(SBOX_14_reg_0_s1), .CK(CLK), .Q(
        SBOX_14_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_4_reg ( .D(SHARE2_IN[116]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_4_reg ( .D(SHARE1_IN[116]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_5_reg ( .D(SHARE2_IN[112]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_5_reg ( .D(SHARE1_IN[112]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_6_reg ( .D(SHARE2_IN[115]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_6_reg ( .D(SHARE1_IN[115]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_7_reg ( .D(SHARE2_IN[117]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_3_reg ( .D(SHARE1_IN[118]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_7_reg ( .D(SHARE1_IN[117]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_3_reg ( .D(SHARE2_IN[118]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_2_reg ( .D(SHARE1_IN[119]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_2_reg ( .D(SHARE2_IN[119]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_1_reg ( .D(SHARE1_IN[113]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_1_reg ( .D(SHARE2_IN[113]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_reg ( .D(SHARE1_IN[114]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_reg ( .D(SHARE2_IN[114]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1), .QN() );
  INV_X1 SBOX_14_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[119]), .ZN(
        SBOX_14_not_0_Masked_z_0_) );
  INV_X1 SBOX_14_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[118]), .ZN(
        SBOX_14_not_1_Masked_z_0_) );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[119]), 
        .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[224]), .B(
        SHARE2_IN[118]), .Z(SBOX_14_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[224]), .B(
        SBOX_14_not_1_Masked_z_0_), .Z(SBOX_14_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[225]), .B(
        SBOX_14_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[225]), .B(
        SBOX_14_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_0_Masked_z[0]) );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_0_Masked_z[0]), .B(SBOX_14_xor_0_Masked_x[0]), .Z(SBOX_14_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_0_Masked_z[1]), .B(SBOX_14_xor_0_Masked_x[1]), .Z(SBOX_14_not_6_Masked_z[1]) );
  INV_X1 SBOX_14_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[115]), .ZN(
        SBOX_14_not_2_Masked_z_0_) );
  INV_X1 SBOX_14_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[114]), .ZN(
        SBOX_14_not_3_Masked_z_0_) );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[115]), 
        .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[226]), .B(
        SHARE2_IN[114]), .Z(SBOX_14_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[226]), .B(
        SBOX_14_not_3_Masked_z_0_), .Z(SBOX_14_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[227]), .B(
        SBOX_14_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[227]), .B(
        SBOX_14_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_1_Masked_z[0]) );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_1_Masked_z[0]), .B(SBOX_14_xor_1_Masked_x[0]), .Z(SBOX_14_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_1_Masked_z[1]), .B(SBOX_14_xor_1_Masked_x[1]), .Z(SBOX_14_not_7_Masked_z[1]) );
  INV_X1 SBOX_14_not_4_Masked_not_hpc_U1 ( .A(SBOX_14__s0[7]), .ZN(
        SBOX_14_not_4_Masked_z[0]) );
  INV_X1 SBOX_14_not_5_Masked_not_hpc_U1 ( .A(SBOX_14__s0[6]), .ZN(
        SBOX_14_not_5_Masked_z[0]) );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[228]), .B(
        SBOX_14_not_5_Masked_z[1]), .Z(SBOX_14_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[228]), .B(
        SBOX_14_not_5_Masked_z[0]), .Z(SBOX_14_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[229]), .B(
        SBOX_14_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[229]), .B(
        SBOX_14_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_2_Masked_z[0]) );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_2_Masked_z[0]), .B(SBOX_14_xor_2_Masked_x[0]), .Z(SBOX_14_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_2_Masked_z[1]), .B(SBOX_14_xor_2_Masked_x[1]), .Z(SBOX_14_not_10_Masked_z[1]) );
  INV_X1 SBOX_14_not_6_Masked_not_hpc_U1 ( .A(SBOX_14_xor_0_Masked_z_0_), .ZN(
        SBOX_14_not_6_Masked_z[0]) );
  INV_X1 SBOX_14_not_7_Masked_not_hpc_U1 ( .A(SBOX_14_xor_1_Masked_z_0_), .ZN(
        SBOX_14_not_7_Masked_z[0]) );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[230]), .B(
        SBOX_14_not_7_Masked_z[1]), .Z(SBOX_14_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[230]), .B(
        SBOX_14_not_7_Masked_z[0]), .Z(SBOX_14_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[231]), .B(
        SBOX_14_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[231]), .B(
        SBOX_14_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_3_Masked_z[0]) );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_3_Masked_z[0]), .B(SBOX_14_xor_3_Masked_x[0]), .Z(SBOX_14_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_3_Masked_z[1]), .B(SBOX_14_xor_3_Masked_x[1]), .Z(SBOX_14_not_11_Masked_z[1]) );
  INV_X1 SBOX_14_not_8_Masked_not_hpc_U1 ( .A(SBOX_14__s0_1[7]), .ZN(
        SBOX_14_not_8_Masked_z[0]) );
  INV_X1 SBOX_14_not_9_Masked_not_hpc_U1 ( .A(SBOX_14__s0_1[6]), .ZN(
        SBOX_14_not_9_Masked_z[0]) );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[232]), .B(
        SBOX_14_not_9_Masked_z[1]), .Z(SBOX_14_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[232]), .B(
        SBOX_14_not_9_Masked_z[0]), .Z(SBOX_14_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[233]), .B(
        SBOX_14_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[233]), .B(
        SBOX_14_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_4_Masked_z[0]) );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_4_Masked_z[0]), .B(SBOX_14_xor_4_Masked_x[0]), .Z(SBOX_14_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_4_Masked_z[1]), .B(SBOX_14_xor_4_Masked_x[1]), .Z(SBOX_14_not_14_Masked_z[1]) );
  INV_X1 SBOX_14_not_10_Masked_not_hpc_U1 ( .A(SBOX_14_xor_2_Masked_z_0_), 
        .ZN(SBOX_14_not_10_Masked_z[0]) );
  INV_X1 SBOX_14_not_11_Masked_not_hpc_U1 ( .A(SBOX_14_xor_3_Masked_z_0_), 
        .ZN(SBOX_14_not_11_Masked_z[0]) );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[234]), .B(
        SBOX_14_not_11_Masked_z[1]), .Z(SBOX_14_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[234]), .B(
        SBOX_14_not_11_Masked_z[0]), .Z(SBOX_14_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[235]), .B(
        SBOX_14_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[235]), .B(
        SBOX_14_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_5_Masked_z[0]) );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_5_Masked_z[0]), .B(SBOX_14_xor_5_Masked_x[0]), .Z(SBOX_14_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_5_Masked_z[1]), .B(SBOX_14_xor_5_Masked_x[1]), .Z(SBOX_14_not_15_Masked_z[1]) );
  INV_X1 SBOX_14_not_12_Masked_not_hpc_U1 ( .A(SBOX_14__s0_2[7]), .ZN(
        SBOX_14_not_12_Masked_z[0]) );
  INV_X1 SBOX_14_not_13_Masked_not_hpc_U1 ( .A(SBOX_14__s0_2[6]), .ZN(
        SBOX_14_not_13_Masked_z[0]) );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[236]), .B(
        SBOX_14_not_13_Masked_z[1]), .Z(SBOX_14_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[236]), .B(
        SBOX_14_not_13_Masked_z[0]), .Z(SBOX_14_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_6_Masked_z[1]) );
  AND2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[237]), .B(
        SBOX_14_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_14_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[237]), .B(
        SBOX_14_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_6_Masked_z[0]), .B(SBOX_14_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[116]) );
  XOR2_X1 SBOX_14_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_6_Masked_z[1]), .B(SBOX_14_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[244]) );
  INV_X1 SBOX_14_not_14_Masked_not_hpc_U1 ( .A(SBOX_14_xor_4_Masked_z_0_), 
        .ZN(SBOX_14_not_14_Masked_z[0]) );
  INV_X1 SBOX_14_not_15_Masked_not_hpc_U1 ( .A(SBOX_14_xor_5_Masked_z_0_), 
        .ZN(SBOX_14_not_15_Masked_z[0]) );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_14_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_14_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_14_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[238]), .B(
        SBOX_14_not_15_Masked_z[1]), .Z(SBOX_14_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_14_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[238]), .B(
        SBOX_14_not_15_Masked_z[0]), .Z(SBOX_14_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_14_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_14_and_7_Masked_z[1]) );
  AND2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[239]), .B(
        SBOX_14_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_14_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_14_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_14_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[239]), .B(
        SBOX_14_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_14_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_14_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_7_Masked_z[0]), .B(SBOX_14_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[112]) );
  XOR2_X1 SBOX_14_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_7_Masked_z[1]), .B(SBOX_14_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[240]) );
  DFF_X1 SBOX_15_reg_1_s0_31_reg ( .D(SBOX_15_reg_0_s0_31), .CK(CLK), .Q(
        SBOX_15_xor_7_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_31_reg ( .D(SBOX_15_reg_0_s1_31), .CK(CLK), .Q(
        SBOX_15_xor_7_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_30_reg ( .D(SBOX_15_reg_0_s0_30), .CK(CLK), .Q(
        SUBSTITUTE2[121]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_30_reg ( .D(SBOX_15_reg_0_s1_30), .CK(CLK), .Q(
        SUBSTITUTE2[249]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_29_reg ( .D(SBOX_15_reg_0_s0_29), .CK(CLK), .Q(
        SUBSTITUTE2[122]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_29_reg ( .D(SBOX_15_reg_0_s1_29), .CK(CLK), .Q(
        SUBSTITUTE2[250]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_28_reg ( .D(SBOX_15_reg_0_s0_28), .CK(CLK), .Q(
        SUBSTITUTE2[123]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_28_reg ( .D(SBOX_15_reg_0_s1_28), .CK(CLK), .Q(
        SUBSTITUTE2[251]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_27_reg ( .D(SBOX_15_reg_0_s0_27), .CK(CLK), .Q(
        SBOX_15_xor_6_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_27_reg ( .D(SBOX_15_reg_0_s1_27), .CK(CLK), .Q(
        SBOX_15_xor_6_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_26_reg ( .D(SBOX_15_reg_0_s0_26), .CK(CLK), .Q(
        SUBSTITUTE2[125]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_26_reg ( .D(SBOX_15_reg_0_s1_26), .CK(CLK), .Q(
        SUBSTITUTE2[253]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_25_reg ( .D(SBOX_15_reg_0_s0_25), .CK(CLK), .Q(
        SUBSTITUTE2[126]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_25_reg ( .D(SBOX_15_reg_0_s1_25), .CK(CLK), .Q(
        SUBSTITUTE2[254]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_24_reg ( .D(SBOX_15_reg_0_s0_24), .CK(CLK), .Q(
        SUBSTITUTE2[127]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_24_reg ( .D(SBOX_15_reg_0_s1_24), .CK(CLK), .Q(
        SUBSTITUTE2[255]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_31_reg ( .D(SBOX_15__s0_2_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_31), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_23_reg ( .D(SBOX_15_reg_0_s0_23), .CK(CLK), .Q(
        SBOX_15__s0_2_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_31_reg ( .D(SBOX_15__s1_2_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_31), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_23_reg ( .D(SBOX_15_reg_0_s1_23), .CK(CLK), .Q(
        SBOX_15__s1_2_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_29_reg ( .D(SBOX_15__s0_2_1), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_29), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_22_reg ( .D(SBOX_15_reg_0_s0_22), .CK(CLK), .Q(
        SBOX_15__s0_2_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_29_reg ( .D(SBOX_15__s1_2_1), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_29), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_22_reg ( .D(SBOX_15_reg_0_s1_22), .CK(CLK), .Q(
        SBOX_15__s1_2_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_30_reg ( .D(SBOX_15_not_15_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_30), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_30_reg ( .D(SBOX_15_xor_5_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_15_reg_0_s0_30), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_21_reg ( .D(SBOX_15_reg_0_s0_21), .CK(CLK), .Q(
        SBOX_15_xor_5_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_21_reg ( .D(SBOX_15_reg_0_s1_21), .CK(CLK), .Q(
        SBOX_15_xor_5_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_28_reg ( .D(SBOX_15_not_14_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_28), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_28_reg ( .D(SBOX_15_xor_4_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_15_reg_0_s0_28), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_20_reg ( .D(SBOX_15_reg_0_s0_20), .CK(CLK), .Q(
        SBOX_15_xor_4_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_20_reg ( .D(SBOX_15_reg_0_s1_20), .CK(CLK), .Q(
        SBOX_15_xor_4_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_27_reg ( .D(SBOX_15__s0_2[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_27), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_19_reg ( .D(SBOX_15_reg_0_s0_19), .CK(CLK), .Q(
        SBOX_15__s0_2[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_27_reg ( .D(SBOX_15__s1_2[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_27), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_19_reg ( .D(SBOX_15_reg_0_s1_19), .CK(CLK), .Q(
        SBOX_15__s1_2[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_26_reg ( .D(SBOX_15__s0_2[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_26), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_18_reg ( .D(SBOX_15_reg_0_s0_18), .CK(CLK), .Q(
        SBOX_15__s0_2[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_26_reg ( .D(SBOX_15__s1_2[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_26), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_18_reg ( .D(SBOX_15_reg_0_s1_18), .CK(CLK), .Q(
        SBOX_15__s1_2[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_25_reg ( .D(SBOX_15__s0_2[6]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_25), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_17_reg ( .D(SBOX_15_reg_0_s0_17), .CK(CLK), .Q(
        SBOX_15__s0_2[6]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_25_reg ( .D(SBOX_15_not_13_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_25), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_17_reg ( .D(SBOX_15_reg_0_s1_17), .CK(CLK), .Q(
        SBOX_15_not_13_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_24_reg ( .D(SBOX_15__s0_2[7]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_24), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_16_reg ( .D(SBOX_15_reg_0_s0_16), .CK(CLK), .Q(
        SBOX_15__s0_2[7]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_24_reg ( .D(SBOX_15_not_12_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_24), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_16_reg ( .D(SBOX_15_reg_0_s1_16), .CK(CLK), .Q(
        SBOX_15_not_12_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_21_reg ( .D(SBOX_15__s0_1_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_21), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_15_reg ( .D(SBOX_15_reg_0_s0_15), .CK(CLK), .Q(
        SBOX_15__s0_1_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_21_reg ( .D(SBOX_15__s1_1_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_21), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_15_reg ( .D(SBOX_15_reg_0_s1_15), .CK(CLK), .Q(
        SBOX_15__s1_1_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_17_reg ( .D(SBOX_15__s0_1_1), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_17), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_14_reg ( .D(SBOX_15_reg_0_s0_14), .CK(CLK), .Q(
        SBOX_15__s0_1_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_17_reg ( .D(SBOX_15__s1_1_1), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_17), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_14_reg ( .D(SBOX_15_reg_0_s1_14), .CK(CLK), .Q(
        SBOX_15__s1_1_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_16_reg ( .D(SBOX_15_not_11_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_16), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_16_reg ( .D(SBOX_15_xor_3_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_15_reg_0_s0_16), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_13_reg ( .D(SBOX_15_reg_0_s0_13), .CK(CLK), .Q(
        SBOX_15_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_13_reg ( .D(SBOX_15_reg_0_s1_13), .CK(CLK), .Q(
        SBOX_15_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_22_reg ( .D(SBOX_15_not_10_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_22), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_22_reg ( .D(SBOX_15_xor_2_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_15_reg_0_s0_22), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_12_reg ( .D(SBOX_15_reg_0_s0_12), .CK(CLK), .Q(
        SBOX_15_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_12_reg ( .D(SBOX_15_reg_0_s1_12), .CK(CLK), .Q(
        SBOX_15_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_20_reg ( .D(SBOX_15__s0_1[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_20), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_11_reg ( .D(SBOX_15_reg_0_s0_11), .CK(CLK), .Q(
        SBOX_15__s0_1[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_20_reg ( .D(SBOX_15__s1_1[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_20), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_11_reg ( .D(SBOX_15_reg_0_s1_11), .CK(CLK), .Q(
        SBOX_15__s1_1[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_23_reg ( .D(SBOX_15__s0_1[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_23), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_10_reg ( .D(SBOX_15_reg_0_s0_10), .CK(CLK), .Q(
        SBOX_15__s0_1[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_23_reg ( .D(SBOX_15__s1_1[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_23), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_10_reg ( .D(SBOX_15_reg_0_s1_10), .CK(CLK), .Q(
        SBOX_15__s1_1[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_19_reg ( .D(SBOX_15__s0_1[6]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_19), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_9_reg ( .D(SBOX_15_reg_0_s0_9), .CK(CLK), .Q(
        SBOX_15__s0_1[6]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_19_reg ( .D(SBOX_15_not_9_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_19), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_9_reg ( .D(SBOX_15_reg_0_s1_9), .CK(CLK), .Q(
        SBOX_15_not_9_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_18_reg ( .D(SBOX_15__s0_1[7]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_18), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_8_reg ( .D(SBOX_15_reg_0_s0_8), .CK(CLK), .Q(
        SBOX_15__s0_1[7]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_18_reg ( .D(SBOX_15_not_8_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_18), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_8_reg ( .D(SBOX_15_reg_0_s1_8), .CK(CLK), .Q(
        SBOX_15_not_8_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_13_reg ( .D(SBOX_15__s0_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_13), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_7_reg ( .D(SBOX_15_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_15__s0_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_13_reg ( .D(SBOX_15__s1_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_13), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_7_reg ( .D(SBOX_15_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_15__s1_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_9_reg ( .D(\SBOX_15/_s0_1 ), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_9), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_6_reg ( .D(SBOX_15_reg_0_s0_6), .CK(CLK), .Q(
        \SBOX_15/_s0_1 ), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_9_reg ( .D(\SBOX_15/_s1_1 ), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_9), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_6_reg ( .D(SBOX_15_reg_0_s1_6), .CK(CLK), .Q(
        \SBOX_15/_s1_1 ), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_8_reg ( .D(SBOX_15_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_8), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_8_reg ( .D(SBOX_15_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_8), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_5_reg ( .D(SBOX_15_reg_0_s0_5), .CK(CLK), .Q(
        SBOX_15_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_5_reg ( .D(SBOX_15_reg_0_s1_5), .CK(CLK), .Q(
        SBOX_15_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_14_reg ( .D(SBOX_15_not_6_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_14), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_14_reg ( .D(SBOX_15_xor_0_Masked_z_0_), .CK(CLK), 
        .Q(SBOX_15_reg_0_s0_14), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_4_reg ( .D(SBOX_15_reg_0_s0_4), .CK(CLK), .Q(
        SBOX_15_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_4_reg ( .D(SBOX_15_reg_0_s1_4), .CK(CLK), .Q(
        SBOX_15_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_12_reg ( .D(SBOX_15__s0[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_12), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_3_reg ( .D(SBOX_15_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_15__s0[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_12_reg ( .D(SBOX_15__s1[4]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_12), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_3_reg ( .D(SBOX_15_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_15__s1[4]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_15_reg ( .D(SBOX_15__s0[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_15), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_2_reg ( .D(SBOX_15_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_15__s0[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_15_reg ( .D(SBOX_15__s1[5]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_15), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_2_reg ( .D(SBOX_15_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_15__s1[5]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_11_reg ( .D(SBOX_15__s0[6]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_11), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_1_reg ( .D(SBOX_15_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_15__s0[6]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_11_reg ( .D(SBOX_15_not_5_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_11), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_1_reg ( .D(SBOX_15_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_15_not_5_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_10_reg ( .D(SBOX_15__s0[7]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_10), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_reg ( .D(SBOX_15_reg_0_s0), .CK(CLK), .Q(
        SBOX_15__s0[7]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_10_reg ( .D(SBOX_15_not_4_Masked_z[1]), .CK(CLK), 
        .Q(SBOX_15_reg_0_s1_10), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_reg ( .D(SBOX_15_reg_0_s1), .CK(CLK), .Q(
        SBOX_15_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_4_reg ( .D(SHARE2_IN[124]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_4_reg ( .D(SHARE1_IN[124]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_5_reg ( .D(SHARE2_IN[120]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_5_reg ( .D(SHARE1_IN[120]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_6_reg ( .D(SHARE2_IN[123]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_6_reg ( .D(SHARE1_IN[123]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_7_reg ( .D(SHARE2_IN[125]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_3_reg ( .D(SHARE1_IN[126]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_7_reg ( .D(SHARE1_IN[125]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_3_reg ( .D(SHARE2_IN[126]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_2_reg ( .D(SHARE1_IN[127]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_2_reg ( .D(SHARE2_IN[127]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_1_reg ( .D(SHARE1_IN[121]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_1_reg ( .D(SHARE2_IN[121]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_reg ( .D(SHARE1_IN[122]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_reg ( .D(SHARE2_IN[122]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1), .QN() );
  INV_X1 SBOX_15_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[127]), .ZN(
        SBOX_15_not_0_Masked_z_0_) );
  INV_X1 SBOX_15_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[126]), .ZN(
        SBOX_15_not_1_Masked_z_0_) );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[127]), 
        .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_rfrsh_U4 ( .A(RAND[240]), .B(
        SHARE2_IN[126]), .Z(SBOX_15_and_0_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_rfrsh_U3 ( .A(RAND[240]), .B(
        SBOX_15_not_1_Masked_z_0_), .Z(SBOX_15_and_0_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_0_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U7 ( .A(RAND[241]), .B(
        SBOX_15_and_0_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_0_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U5 ( .A(RAND[241]), .B(
        SBOX_15_and_0_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_0_Masked_z[0]) );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_0_Masked_z[0]), .B(SBOX_15_xor_0_Masked_x[0]), .Z(SBOX_15_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_0_Masked_z[1]), .B(SBOX_15_xor_0_Masked_x[1]), .Z(SBOX_15_not_6_Masked_z[1]) );
  INV_X1 SBOX_15_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[123]), .ZN(
        SBOX_15_not_2_Masked_z_0_) );
  INV_X1 SBOX_15_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[122]), .ZN(
        SBOX_15_not_3_Masked_z_0_) );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_ina_delay_reg_1_ ( .D(SHARE2_IN[123]), 
        .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_rfrsh_U4 ( .A(RAND[242]), .B(
        SHARE2_IN[122]), .Z(SBOX_15_and_1_Masked_and_hpc_rfrsh_N0) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_rfrsh_U3 ( .A(RAND[242]), .B(
        SBOX_15_not_3_Masked_z_0_), .Z(SBOX_15_and_1_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_1_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U7 ( .A(RAND[243]), .B(
        SBOX_15_and_1_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_1_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U5 ( .A(RAND[243]), .B(
        SBOX_15_and_1_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_1_Masked_z[0]) );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_1_Masked_z[0]), .B(SBOX_15_xor_1_Masked_x[0]), .Z(SBOX_15_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_1_Masked_z[1]), .B(SBOX_15_xor_1_Masked_x[1]), .Z(SBOX_15_not_7_Masked_z[1]) );
  INV_X1 SBOX_15_not_4_Masked_not_hpc_U1 ( .A(SBOX_15__s0[7]), .ZN(
        SBOX_15_not_4_Masked_z[0]) );
  INV_X1 SBOX_15_not_5_Masked_not_hpc_U1 ( .A(SBOX_15__s0[6]), .ZN(
        SBOX_15_not_5_Masked_z[0]) );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_rfrsh_U4 ( .A(RAND[244]), .B(
        SBOX_15_not_5_Masked_z[1]), .Z(SBOX_15_and_2_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_rfrsh_U3 ( .A(RAND[244]), .B(
        SBOX_15_not_5_Masked_z[0]), .Z(SBOX_15_and_2_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U7 ( .A(RAND[245]), .B(
        SBOX_15_and_2_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_2_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U5 ( .A(RAND[245]), .B(
        SBOX_15_and_2_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_2_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_2_Masked_z[0]) );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_2_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_2_Masked_z[0]), .B(SBOX_15_xor_2_Masked_x[0]), .Z(SBOX_15_xor_2_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_2_Masked_z[1]), .B(SBOX_15_xor_2_Masked_x[1]), .Z(SBOX_15_not_10_Masked_z[1]) );
  INV_X1 SBOX_15_not_6_Masked_not_hpc_U1 ( .A(SBOX_15_xor_0_Masked_z_0_), .ZN(
        SBOX_15_not_6_Masked_z[0]) );
  INV_X1 SBOX_15_not_7_Masked_not_hpc_U1 ( .A(SBOX_15_xor_1_Masked_z_0_), .ZN(
        SBOX_15_not_7_Masked_z[0]) );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_rfrsh_U4 ( .A(RAND[246]), .B(
        SBOX_15_not_7_Masked_z[1]), .Z(SBOX_15_and_3_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_rfrsh_U3 ( .A(RAND[246]), .B(
        SBOX_15_not_7_Masked_z[0]), .Z(SBOX_15_and_3_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U7 ( .A(RAND[247]), .B(
        SBOX_15_and_3_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_3_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U5 ( .A(RAND[247]), .B(
        SBOX_15_and_3_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_3_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_3_Masked_z[0]) );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_3_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_3_Masked_z[0]), .B(SBOX_15_xor_3_Masked_x[0]), .Z(SBOX_15_xor_3_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_3_Masked_z[1]), .B(SBOX_15_xor_3_Masked_x[1]), .Z(SBOX_15_not_11_Masked_z[1]) );
  INV_X1 SBOX_15_not_8_Masked_not_hpc_U1 ( .A(SBOX_15__s0_1[7]), .ZN(
        SBOX_15_not_8_Masked_z[0]) );
  INV_X1 SBOX_15_not_9_Masked_not_hpc_U1 ( .A(SBOX_15__s0_1[6]), .ZN(
        SBOX_15_not_9_Masked_z[0]) );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_8_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_8_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_4_Masked_and_hpc_rfrsh_U4 ( .A(RAND[248]), .B(
        SBOX_15_not_9_Masked_z[1]), .Z(SBOX_15_and_4_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_4_Masked_and_hpc_rfrsh_U3 ( .A(RAND[248]), .B(
        SBOX_15_not_9_Masked_z[0]), .Z(SBOX_15_and_4_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U7 ( .A(RAND[249]), .B(
        SBOX_15_and_4_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_4_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_4_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U5 ( .A(RAND[249]), .B(
        SBOX_15_and_4_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_4_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_4_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_4_Masked_z[0]) );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_4_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_4_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_4_Masked_z[0]), .B(SBOX_15_xor_4_Masked_x[0]), .Z(SBOX_15_xor_4_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_4_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_4_Masked_z[1]), .B(SBOX_15_xor_4_Masked_x[1]), .Z(SBOX_15_not_14_Masked_z[1]) );
  INV_X1 SBOX_15_not_10_Masked_not_hpc_U1 ( .A(SBOX_15_xor_2_Masked_z_0_), 
        .ZN(SBOX_15_not_10_Masked_z[0]) );
  INV_X1 SBOX_15_not_11_Masked_not_hpc_U1 ( .A(SBOX_15_xor_3_Masked_z_0_), 
        .ZN(SBOX_15_not_11_Masked_z[0]) );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_10_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_10_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_5_Masked_and_hpc_rfrsh_U4 ( .A(RAND[250]), .B(
        SBOX_15_not_11_Masked_z[1]), .Z(SBOX_15_and_5_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_5_Masked_and_hpc_rfrsh_U3 ( .A(RAND[250]), .B(
        SBOX_15_not_11_Masked_z[0]), .Z(SBOX_15_and_5_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[1]), .QN() );
  AND2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U10 ( .A1(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U9 ( .A1(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U7 ( .A(RAND[251]), .B(
        SBOX_15_and_5_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_5_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_5_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U5 ( .A(RAND[251]), .B(
        SBOX_15_and_5_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  XOR2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U4 ( .A(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_5_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_5_Masked_and_hpc_mul_U3 ( .A(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_5_Masked_z[0]) );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_5_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_5_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_5_Masked_z[0]), .B(SBOX_15_xor_5_Masked_x[0]), .Z(SBOX_15_xor_5_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_5_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_5_Masked_z[1]), .B(SBOX_15_xor_5_Masked_x[1]), .Z(SBOX_15_not_15_Masked_z[1]) );
  INV_X1 SBOX_15_not_12_Masked_not_hpc_U1 ( .A(SBOX_15__s0_2[7]), .ZN(
        SBOX_15_not_12_Masked_z[0]) );
  INV_X1 SBOX_15_not_13_Masked_not_hpc_U1 ( .A(SBOX_15__s0_2[6]), .ZN(
        SBOX_15_not_13_Masked_z[0]) );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_12_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_12_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_6_Masked_and_hpc_rfrsh_U4 ( .A(RAND[252]), .B(
        SBOX_15_not_13_Masked_z[1]), .Z(SBOX_15_and_6_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_6_Masked_and_hpc_rfrsh_U3 ( .A(RAND[252]), .B(
        SBOX_15_not_13_Masked_z[0]), .Z(SBOX_15_and_6_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U10 ( .A(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_6_Masked_z[0]) );
  XOR2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U9 ( .A(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_6_Masked_z[1]) );
  AND2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U5 ( .A(RAND[253]), .B(
        SBOX_15_and_6_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_15_and_6_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_6_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_6_Masked_and_hpc_mul_U3 ( .A(RAND[253]), .B(
        SBOX_15_and_6_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_6_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_6_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_6_Masked_z[0]), .B(SBOX_15_xor_6_Masked_x[0]), .Z(SUBSTITUTE2[124]) );
  XOR2_X1 SBOX_15_xor_6_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_6_Masked_z[1]), .B(SBOX_15_xor_6_Masked_x[1]), .Z(SUBSTITUTE2[252]) );
  INV_X1 SBOX_15_not_14_Masked_not_hpc_U1 ( .A(SBOX_15_xor_4_Masked_z_0_), 
        .ZN(SBOX_15_not_14_Masked_z[0]) );
  INV_X1 SBOX_15_not_15_Masked_not_hpc_U1 ( .A(SBOX_15_xor_5_Masked_z_0_), 
        .ZN(SBOX_15_not_15_Masked_z[0]) );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_ina_delay_reg_0_ ( .D(
        SBOX_15_not_14_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[0]), .QN() );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_ina_delay_reg_1_ ( .D(
        SBOX_15_not_14_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[1]), .QN() );
  XOR2_X1 SBOX_15_and_7_Masked_and_hpc_rfrsh_U4 ( .A(RAND[254]), .B(
        SBOX_15_not_15_Masked_z[1]), .Z(SBOX_15_and_7_Masked_and_hpc_rfrsh_N0)
         );
  XOR2_X1 SBOX_15_and_7_Masked_and_hpc_rfrsh_U3 ( .A(RAND[254]), .B(
        SBOX_15_not_15_Masked_z[0]), .Z(SBOX_15_and_7_Masked_and_hpc_rfrsh_N1)
         );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_rfrsh_out_reg_0_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_rfrsh_N1), .CK(CLK), .Q(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[0]), .QN() );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_rfrsh_out_reg_1_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_rfrsh_N0), .CK(CLK), .Q(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[1]), .QN() );
  XOR2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U10 ( .A(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .B(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .Z(
        SBOX_15_and_7_Masked_z[0]) );
  XOR2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U9 ( .A(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .B(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .Z(
        SBOX_15_and_7_Masked_z[1]) );
  AND2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U8 ( .A1(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[0]), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire) );
  AND2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U7 ( .A1(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[1]), .A2(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire) );
  NAND2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U6 ( .A1(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[0]), .A2(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[1]), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_n3) );
  XNOR2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U5 ( .A(RAND[255]), .B(
        SBOX_15_and_7_Masked_and_hpc_mul_n3), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire)
         );
  NAND2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U4 ( .A1(
        SBOX_15_and_7_Masked_and_hpc_inb_ref[0]), .A2(
        SBOX_15_and_7_Masked_and_hpc_ina_delay[1]), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_n4) );
  XNOR2_X1 SBOX_15_and_7_Masked_and_hpc_mul_U3 ( .A(RAND[255]), .B(
        SBOX_15_and_7_Masked_and_hpc_mul_n4), .ZN(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire)
         );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_1__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__ParProdJ_0__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_1__rfrsh_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_1_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_1__rfrsh_wire), 
        .CK(CLK), .Q(SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg_reg_0_ ( .D(
        SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__ParProdJ_0__mult_wire), 
        .CK(CLK), .Q(SBOX_15_and_7_Masked_and_hpc_mul_ParProdI_0__rfrsh_reg[0]), .QN() );
  XOR2_X1 SBOX_15_xor_7_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_7_Masked_z[0]), .B(SBOX_15_xor_7_Masked_x[0]), .Z(SUBSTITUTE2[120]) );
  XOR2_X1 SBOX_15_xor_7_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_7_Masked_z[1]), .B(SBOX_15_xor_7_Masked_x[1]), .Z(SUBSTITUTE2[248]) );
  XOR2_X1 KA1_U71 ( .A(ROUND_KEY1[81]), .B(SUBSTITUTE2[81]), .Z(SHIFTROWS[73])
         );
  XOR2_X1 KA1_U70 ( .A(ROUND_KEY1[71]), .B(SUBSTITUTE2[71]), .Z(SHIFTROWS[95])
         );
  XOR2_X1 KA1_U69 ( .A(ROUND_KEY1[70]), .B(SUBSTITUTE2[70]), .Z(SHIFTROWS[94])
         );
  XOR2_X1 KA1_U68 ( .A(ROUND_KEY1[69]), .B(SUBSTITUTE2[69]), .Z(SHIFTROWS[93])
         );
  XOR2_X1 KA1_U67 ( .A(ROUND_KEY1[67]), .B(SUBSTITUTE2[67]), .Z(SHIFTROWS[91])
         );
  XOR2_X1 KA1_U66 ( .A(ROUND_KEY1[66]), .B(SUBSTITUTE2[66]), .Z(SHIFTROWS[90])
         );
  XOR2_X1 KA1_U65 ( .A(ROUND_KEY1[65]), .B(SUBSTITUTE2[65]), .Z(SHIFTROWS[89])
         );
  XOR2_X1 KA1_U64 ( .A(ROUND_KEY1[95]), .B(SUBSTITUTE2[95]), .Z(SHIFTROWS[87])
         );
  XOR2_X1 KA1_U63 ( .A(ROUND_KEY1[94]), .B(SUBSTITUTE2[94]), .Z(SHIFTROWS[86])
         );
  XOR2_X1 KA1_U62 ( .A(ROUND_KEY1[93]), .B(SUBSTITUTE2[93]), .Z(SHIFTROWS[85])
         );
  XOR2_X1 KA1_U61 ( .A(ROUND_KEY1[91]), .B(SUBSTITUTE2[91]), .Z(SHIFTROWS[83])
         );
  XOR2_X1 KA1_U60 ( .A(ROUND_KEY1[90]), .B(SUBSTITUTE2[90]), .Z(SHIFTROWS[82])
         );
  XOR2_X1 KA1_U59 ( .A(ROUND_KEY1[89]), .B(SUBSTITUTE2[89]), .Z(KA1_n2) );
  XOR2_X1 KA1_U58 ( .A(ROUND_CST[5]), .B(KA1_n2), .Z(SHIFTROWS[81]) );
  XOR2_X1 KA1_U57 ( .A(ROUND_KEY1[87]), .B(SUBSTITUTE2[87]), .Z(SHIFTROWS[79])
         );
  XOR2_X1 KA1_U56 ( .A(ROUND_KEY1[86]), .B(SUBSTITUTE2[86]), .Z(SHIFTROWS[78])
         );
  XOR2_X1 KA1_U55 ( .A(ROUND_KEY1[85]), .B(SUBSTITUTE2[85]), .Z(SHIFTROWS[77])
         );
  XOR2_X1 KA1_U54 ( .A(ROUND_KEY1[83]), .B(SUBSTITUTE2[83]), .Z(SHIFTROWS[75])
         );
  XOR2_X1 KA1_U53 ( .A(ROUND_KEY1[82]), .B(SUBSTITUTE2[82]), .Z(SHIFTROWS[74])
         );
  XOR2_X1 KA1_U52 ( .A(ROUND_KEY1[79]), .B(SUBSTITUTE2[79]), .Z(SHIFTROWS[71])
         );
  XOR2_X1 KA1_U51 ( .A(ROUND_KEY1[78]), .B(SUBSTITUTE2[78]), .Z(SHIFTROWS[70])
         );
  XOR2_X1 KA1_U50 ( .A(ROUND_KEY1[77]), .B(SUBSTITUTE2[77]), .Z(SHIFTROWS[69])
         );
  XOR2_X1 KA1_U49 ( .A(ROUND_KEY1[75]), .B(SUBSTITUTE2[75]), .Z(SHIFTROWS[67])
         );
  XOR2_X1 KA1_U48 ( .A(ROUND_KEY1[74]), .B(SUBSTITUTE2[74]), .Z(SHIFTROWS[66])
         );
  XOR2_X1 KA1_U47 ( .A(ROUND_KEY1[73]), .B(SUBSTITUTE2[73]), .Z(SHIFTROWS[65])
         );
  XOR2_X1 KA1_U46 ( .A(ROUND_KEY1[68]), .B(SUBSTITUTE2[68]), .Z(SHIFTROWS[92])
         );
  XOR2_X1 KA1_U45 ( .A(ROUND_KEY1[64]), .B(SUBSTITUTE2[64]), .Z(SHIFTROWS[88])
         );
  XOR2_X1 KA1_U44 ( .A(ROUND_KEY1[92]), .B(SUBSTITUTE2[92]), .Z(SHIFTROWS[84])
         );
  XOR2_X1 KA1_U43 ( .A(ROUND_KEY1[88]), .B(SUBSTITUTE2[88]), .Z(KA1_n3) );
  XOR2_X1 KA1_U42 ( .A(ROUND_CST[4]), .B(KA1_n3), .Z(SHIFTROWS[80]) );
  XOR2_X1 KA1_U41 ( .A(ROUND_KEY1[84]), .B(SUBSTITUTE2[84]), .Z(SHIFTROWS[76])
         );
  XOR2_X1 KA1_U40 ( .A(ROUND_KEY1[80]), .B(SUBSTITUTE2[80]), .Z(SHIFTROWS[72])
         );
  XOR2_X1 KA1_U39 ( .A(ROUND_KEY1[76]), .B(SUBSTITUTE2[76]), .Z(SHIFTROWS[68])
         );
  XOR2_X1 KA1_U38 ( .A(ROUND_KEY1[72]), .B(SUBSTITUTE2[72]), .Z(SHIFTROWS[64])
         );
  INV_X1 KA1_U37 ( .A(SUBSTITUTE2[57]), .ZN(SHIFTROWS[41]) );
  XOR2_X1 KA1_U36 ( .A(ROUND_KEY1[127]), .B(SUBSTITUTE2[127]), .Z(
        SHARE1_OUT[95]) );
  XOR2_X1 KA1_U35 ( .A(ROUND_KEY1[126]), .B(SUBSTITUTE2[126]), .Z(
        SHARE1_OUT[94]) );
  XOR2_X1 KA1_U34 ( .A(ROUND_KEY1[125]), .B(SUBSTITUTE2[125]), .Z(
        SHARE1_OUT[93]) );
  XOR2_X1 KA1_U33 ( .A(ROUND_KEY1[124]), .B(SUBSTITUTE2[124]), .Z(
        SHARE1_OUT[92]) );
  XOR2_X1 KA1_U32 ( .A(ROUND_KEY1[123]), .B(SUBSTITUTE2[123]), .Z(KA1_n4) );
  XOR2_X1 KA1_U31 ( .A(ROUND_CST[3]), .B(KA1_n4), .Z(SHARE1_OUT[91]) );
  XOR2_X1 KA1_U30 ( .A(ROUND_KEY1[122]), .B(SUBSTITUTE2[122]), .Z(KA1_n5) );
  XOR2_X1 KA1_U29 ( .A(ROUND_CST[2]), .B(KA1_n5), .Z(SHARE1_OUT[90]) );
  XOR2_X1 KA1_U28 ( .A(ROUND_KEY1[121]), .B(SUBSTITUTE2[121]), .Z(KA1_n6) );
  XOR2_X1 KA1_U27 ( .A(ROUND_CST[1]), .B(KA1_n6), .Z(SHARE1_OUT[89]) );
  XOR2_X1 KA1_U26 ( .A(ROUND_KEY1[120]), .B(SUBSTITUTE2[120]), .Z(KA1_n7) );
  XOR2_X1 KA1_U25 ( .A(ROUND_CST[0]), .B(KA1_n7), .Z(SHARE1_OUT[88]) );
  XOR2_X1 KA1_U24 ( .A(ROUND_KEY1[119]), .B(SUBSTITUTE2[119]), .Z(
        SHARE1_OUT[87]) );
  XOR2_X1 KA1_U23 ( .A(ROUND_KEY1[118]), .B(SUBSTITUTE2[118]), .Z(
        SHARE1_OUT[86]) );
  XOR2_X1 KA1_U22 ( .A(ROUND_KEY1[117]), .B(SUBSTITUTE2[117]), .Z(
        SHARE1_OUT[85]) );
  XOR2_X1 KA1_U21 ( .A(ROUND_KEY1[116]), .B(SUBSTITUTE2[116]), .Z(
        SHARE1_OUT[84]) );
  XOR2_X1 KA1_U20 ( .A(ROUND_KEY1[115]), .B(SUBSTITUTE2[115]), .Z(
        SHARE1_OUT[83]) );
  XOR2_X1 KA1_U19 ( .A(ROUND_KEY1[114]), .B(SUBSTITUTE2[114]), .Z(
        SHARE1_OUT[82]) );
  XOR2_X1 KA1_U18 ( .A(ROUND_KEY1[113]), .B(SUBSTITUTE2[113]), .Z(
        SHARE1_OUT[81]) );
  XOR2_X1 KA1_U17 ( .A(ROUND_KEY1[112]), .B(SUBSTITUTE2[112]), .Z(
        SHARE1_OUT[80]) );
  XOR2_X1 KA1_U16 ( .A(ROUND_KEY1[111]), .B(SUBSTITUTE2[111]), .Z(
        SHARE1_OUT[79]) );
  XOR2_X1 KA1_U15 ( .A(ROUND_KEY1[110]), .B(SUBSTITUTE2[110]), .Z(
        SHARE1_OUT[78]) );
  XOR2_X1 KA1_U14 ( .A(ROUND_KEY1[109]), .B(SUBSTITUTE2[109]), .Z(
        SHARE1_OUT[77]) );
  XOR2_X1 KA1_U13 ( .A(ROUND_KEY1[108]), .B(SUBSTITUTE2[108]), .Z(
        SHARE1_OUT[76]) );
  XOR2_X1 KA1_U12 ( .A(ROUND_KEY1[107]), .B(SUBSTITUTE2[107]), .Z(
        SHARE1_OUT[75]) );
  XOR2_X1 KA1_U11 ( .A(ROUND_KEY1[106]), .B(SUBSTITUTE2[106]), .Z(
        SHARE1_OUT[74]) );
  XOR2_X1 KA1_U10 ( .A(ROUND_KEY1[105]), .B(SUBSTITUTE2[105]), .Z(
        SHARE1_OUT[73]) );
  XOR2_X1 KA1_U9 ( .A(ROUND_KEY1[104]), .B(SUBSTITUTE2[104]), .Z(
        SHARE1_OUT[72]) );
  XOR2_X1 KA1_U8 ( .A(ROUND_KEY1[103]), .B(SUBSTITUTE2[103]), .Z(
        SHARE1_OUT[71]) );
  XOR2_X1 KA1_U7 ( .A(ROUND_KEY1[102]), .B(SUBSTITUTE2[102]), .Z(
        SHARE1_OUT[70]) );
  XOR2_X1 KA1_U6 ( .A(ROUND_KEY1[101]), .B(SUBSTITUTE2[101]), .Z(
        SHARE1_OUT[69]) );
  XOR2_X1 KA1_U5 ( .A(ROUND_KEY1[100]), .B(SUBSTITUTE2[100]), .Z(
        SHARE1_OUT[68]) );
  XOR2_X1 KA1_U4 ( .A(ROUND_KEY1[99]), .B(SUBSTITUTE2[99]), .Z(SHARE1_OUT[67])
         );
  XOR2_X1 KA1_U3 ( .A(ROUND_KEY1[98]), .B(SUBSTITUTE2[98]), .Z(SHARE1_OUT[66])
         );
  XOR2_X1 KA1_U2 ( .A(ROUND_KEY1[97]), .B(SUBSTITUTE2[97]), .Z(SHARE1_OUT[65])
         );
  XOR2_X1 KA1_U1 ( .A(ROUND_KEY1[96]), .B(SUBSTITUTE2[96]), .Z(SHARE1_OUT[64])
         );
  XOR2_X1 KA2_U65 ( .A(ROUND_KEY2[81]), .B(SUBSTITUTE2[209]), .Z(
        SHIFTROWS[201]) );
  XOR2_X1 KA2_U64 ( .A(ROUND_KEY2[71]), .B(SUBSTITUTE2[199]), .Z(
        SHIFTROWS[223]) );
  XOR2_X1 KA2_U63 ( .A(ROUND_KEY2[70]), .B(SUBSTITUTE2[198]), .Z(
        SHIFTROWS[222]) );
  XOR2_X1 KA2_U62 ( .A(ROUND_KEY2[69]), .B(SUBSTITUTE2[197]), .Z(
        SHIFTROWS[221]) );
  XOR2_X1 KA2_U61 ( .A(ROUND_KEY2[67]), .B(SUBSTITUTE2[195]), .Z(
        SHIFTROWS[219]) );
  XOR2_X1 KA2_U60 ( .A(ROUND_KEY2[66]), .B(SUBSTITUTE2[194]), .Z(
        SHIFTROWS[218]) );
  XOR2_X1 KA2_U59 ( .A(ROUND_KEY2[65]), .B(SUBSTITUTE2[193]), .Z(
        SHIFTROWS[217]) );
  XOR2_X1 KA2_U58 ( .A(ROUND_KEY2[95]), .B(SUBSTITUTE2[223]), .Z(
        SHIFTROWS[215]) );
  XOR2_X1 KA2_U57 ( .A(ROUND_KEY2[94]), .B(SUBSTITUTE2[222]), .Z(
        SHIFTROWS[214]) );
  XOR2_X1 KA2_U56 ( .A(ROUND_KEY2[93]), .B(SUBSTITUTE2[221]), .Z(
        SHIFTROWS[213]) );
  XOR2_X1 KA2_U55 ( .A(ROUND_KEY2[91]), .B(SUBSTITUTE2[219]), .Z(
        SHIFTROWS[211]) );
  XOR2_X1 KA2_U54 ( .A(ROUND_KEY2[90]), .B(SUBSTITUTE2[218]), .Z(
        SHIFTROWS[210]) );
  XOR2_X1 KA2_U53 ( .A(ROUND_KEY2[89]), .B(SUBSTITUTE2[217]), .Z(
        SHIFTROWS[209]) );
  XOR2_X1 KA2_U52 ( .A(ROUND_KEY2[87]), .B(SUBSTITUTE2[215]), .Z(
        SHIFTROWS[207]) );
  XOR2_X1 KA2_U51 ( .A(ROUND_KEY2[86]), .B(SUBSTITUTE2[214]), .Z(
        SHIFTROWS[206]) );
  XOR2_X1 KA2_U50 ( .A(ROUND_KEY2[85]), .B(SUBSTITUTE2[213]), .Z(
        SHIFTROWS[205]) );
  XOR2_X1 KA2_U49 ( .A(ROUND_KEY2[83]), .B(SUBSTITUTE2[211]), .Z(
        SHIFTROWS[203]) );
  XOR2_X1 KA2_U48 ( .A(ROUND_KEY2[82]), .B(SUBSTITUTE2[210]), .Z(
        SHIFTROWS[202]) );
  XOR2_X1 KA2_U47 ( .A(ROUND_KEY2[79]), .B(SUBSTITUTE2[207]), .Z(
        SHIFTROWS[199]) );
  XOR2_X1 KA2_U46 ( .A(ROUND_KEY2[78]), .B(SUBSTITUTE2[206]), .Z(
        SHIFTROWS[198]) );
  XOR2_X1 KA2_U45 ( .A(ROUND_KEY2[77]), .B(SUBSTITUTE2[205]), .Z(
        SHIFTROWS[197]) );
  XOR2_X1 KA2_U44 ( .A(ROUND_KEY2[75]), .B(SUBSTITUTE2[203]), .Z(
        SHIFTROWS[195]) );
  XOR2_X1 KA2_U43 ( .A(ROUND_KEY2[74]), .B(SUBSTITUTE2[202]), .Z(
        SHIFTROWS[194]) );
  XOR2_X1 KA2_U42 ( .A(ROUND_KEY2[73]), .B(SUBSTITUTE2[201]), .Z(
        SHIFTROWS[193]) );
  XOR2_X1 KA2_U41 ( .A(ROUND_KEY2[68]), .B(SUBSTITUTE2[196]), .Z(
        SHIFTROWS[220]) );
  XOR2_X1 KA2_U40 ( .A(ROUND_KEY2[64]), .B(SUBSTITUTE2[192]), .Z(
        SHIFTROWS[216]) );
  XOR2_X1 KA2_U39 ( .A(ROUND_KEY2[92]), .B(SUBSTITUTE2[220]), .Z(
        SHIFTROWS[212]) );
  XOR2_X1 KA2_U38 ( .A(ROUND_KEY2[88]), .B(SUBSTITUTE2[216]), .Z(
        SHIFTROWS[208]) );
  XOR2_X1 KA2_U37 ( .A(ROUND_KEY2[84]), .B(SUBSTITUTE2[212]), .Z(
        SHIFTROWS[204]) );
  XOR2_X1 KA2_U36 ( .A(ROUND_KEY2[80]), .B(SUBSTITUTE2[208]), .Z(
        SHIFTROWS[200]) );
  XOR2_X1 KA2_U35 ( .A(ROUND_KEY2[76]), .B(SUBSTITUTE2[204]), .Z(
        SHIFTROWS[196]) );
  XOR2_X1 KA2_U34 ( .A(ROUND_KEY2[72]), .B(SUBSTITUTE2[200]), .Z(
        SHIFTROWS[192]) );
  INV_X1 KA2_U33 ( .A(SUBSTITUTE2[185]), .ZN(SHIFTROWS[169]) );
  XOR2_X1 KA2_U32 ( .A(ROUND_KEY2[127]), .B(SUBSTITUTE2[255]), .Z(
        SHARE2_OUT[95]) );
  XOR2_X1 KA2_U31 ( .A(ROUND_KEY2[126]), .B(SUBSTITUTE2[254]), .Z(
        SHARE2_OUT[94]) );
  XOR2_X1 KA2_U30 ( .A(ROUND_KEY2[125]), .B(SUBSTITUTE2[253]), .Z(
        SHARE2_OUT[93]) );
  XOR2_X1 KA2_U29 ( .A(ROUND_KEY2[124]), .B(SUBSTITUTE2[252]), .Z(
        SHARE2_OUT[92]) );
  XOR2_X1 KA2_U28 ( .A(ROUND_KEY2[123]), .B(SUBSTITUTE2[251]), .Z(
        SHARE2_OUT[91]) );
  XOR2_X1 KA2_U27 ( .A(ROUND_KEY2[122]), .B(SUBSTITUTE2[250]), .Z(
        SHARE2_OUT[90]) );
  XOR2_X1 KA2_U26 ( .A(ROUND_KEY2[121]), .B(SUBSTITUTE2[249]), .Z(
        SHARE2_OUT[89]) );
  XOR2_X1 KA2_U25 ( .A(ROUND_KEY2[120]), .B(SUBSTITUTE2[248]), .Z(
        SHARE2_OUT[88]) );
  XOR2_X1 KA2_U24 ( .A(ROUND_KEY2[119]), .B(SUBSTITUTE2[247]), .Z(
        SHARE2_OUT[87]) );
  XOR2_X1 KA2_U23 ( .A(ROUND_KEY2[118]), .B(SUBSTITUTE2[246]), .Z(
        SHARE2_OUT[86]) );
  XOR2_X1 KA2_U22 ( .A(ROUND_KEY2[117]), .B(SUBSTITUTE2[245]), .Z(
        SHARE2_OUT[85]) );
  XOR2_X1 KA2_U21 ( .A(ROUND_KEY2[116]), .B(SUBSTITUTE2[244]), .Z(
        SHARE2_OUT[84]) );
  XOR2_X1 KA2_U20 ( .A(ROUND_KEY2[115]), .B(SUBSTITUTE2[243]), .Z(
        SHARE2_OUT[83]) );
  XOR2_X1 KA2_U19 ( .A(ROUND_KEY2[114]), .B(SUBSTITUTE2[242]), .Z(
        SHARE2_OUT[82]) );
  XOR2_X1 KA2_U18 ( .A(ROUND_KEY2[113]), .B(SUBSTITUTE2[241]), .Z(
        SHARE2_OUT[81]) );
  XOR2_X1 KA2_U17 ( .A(ROUND_KEY2[112]), .B(SUBSTITUTE2[240]), .Z(
        SHARE2_OUT[80]) );
  XOR2_X1 KA2_U16 ( .A(ROUND_KEY2[111]), .B(SUBSTITUTE2[239]), .Z(
        SHARE2_OUT[79]) );
  XOR2_X1 KA2_U15 ( .A(ROUND_KEY2[110]), .B(SUBSTITUTE2[238]), .Z(
        SHARE2_OUT[78]) );
  XOR2_X1 KA2_U14 ( .A(ROUND_KEY2[109]), .B(SUBSTITUTE2[237]), .Z(
        SHARE2_OUT[77]) );
  XOR2_X1 KA2_U13 ( .A(ROUND_KEY2[108]), .B(SUBSTITUTE2[236]), .Z(
        SHARE2_OUT[76]) );
  XOR2_X1 KA2_U12 ( .A(ROUND_KEY2[107]), .B(SUBSTITUTE2[235]), .Z(
        SHARE2_OUT[75]) );
  XOR2_X1 KA2_U11 ( .A(ROUND_KEY2[106]), .B(SUBSTITUTE2[234]), .Z(
        SHARE2_OUT[74]) );
  XOR2_X1 KA2_U10 ( .A(ROUND_KEY2[105]), .B(SUBSTITUTE2[233]), .Z(
        SHARE2_OUT[73]) );
  XOR2_X1 KA2_U9 ( .A(ROUND_KEY2[104]), .B(SUBSTITUTE2[232]), .Z(
        SHARE2_OUT[72]) );
  XOR2_X1 KA2_U8 ( .A(ROUND_KEY2[103]), .B(SUBSTITUTE2[231]), .Z(
        SHARE2_OUT[71]) );
  XOR2_X1 KA2_U7 ( .A(ROUND_KEY2[102]), .B(SUBSTITUTE2[230]), .Z(
        SHARE2_OUT[70]) );
  XOR2_X1 KA2_U6 ( .A(ROUND_KEY2[101]), .B(SUBSTITUTE2[229]), .Z(
        SHARE2_OUT[69]) );
  XOR2_X1 KA2_U5 ( .A(ROUND_KEY2[100]), .B(SUBSTITUTE2[228]), .Z(
        SHARE2_OUT[68]) );
  XOR2_X1 KA2_U4 ( .A(ROUND_KEY2[99]), .B(SUBSTITUTE2[227]), .Z(SHARE2_OUT[67]) );
  XOR2_X1 KA2_U3 ( .A(ROUND_KEY2[98]), .B(SUBSTITUTE2[226]), .Z(SHARE2_OUT[66]) );
  XOR2_X1 KA2_U2 ( .A(ROUND_KEY2[97]), .B(SUBSTITUTE2[225]), .Z(SHARE2_OUT[65]) );
  XOR2_X1 KA2_U1 ( .A(ROUND_KEY2[96]), .B(SUBSTITUTE2[224]), .Z(SHARE2_OUT[64]) );
  XOR2_X1 MC1_U96 ( .A(SHIFTROWS[73]), .B(SHIFTROWS[41]), .Z(SHARE1_OUT[41])
         );
  XOR2_X1 MC1_U95 ( .A(SHIFTROWS[31]), .B(SHARE1_OUT[31]), .Z(SHARE1_OUT[127])
         );
  XOR2_X1 MC1_U94 ( .A(SHIFTROWS[30]), .B(SHARE1_OUT[30]), .Z(SHARE1_OUT[126])
         );
  XOR2_X1 MC1_U93 ( .A(SHIFTROWS[29]), .B(SHARE1_OUT[29]), .Z(SHARE1_OUT[125])
         );
  XOR2_X1 MC1_U92 ( .A(SHIFTROWS[27]), .B(SHARE1_OUT[27]), .Z(SHARE1_OUT[123])
         );
  XOR2_X1 MC1_U91 ( .A(SHIFTROWS[26]), .B(SHARE1_OUT[26]), .Z(SHARE1_OUT[122])
         );
  XOR2_X1 MC1_U90 ( .A(SHIFTROWS[25]), .B(SHARE1_OUT[25]), .Z(SHARE1_OUT[121])
         );
  XOR2_X1 MC1_U89 ( .A(SHIFTROWS[23]), .B(SHARE1_OUT[23]), .Z(SHARE1_OUT[119])
         );
  XOR2_X1 MC1_U88 ( .A(SHIFTROWS[22]), .B(SHARE1_OUT[22]), .Z(SHARE1_OUT[118])
         );
  XOR2_X1 MC1_U87 ( .A(SHIFTROWS[21]), .B(SHARE1_OUT[21]), .Z(SHARE1_OUT[117])
         );
  XOR2_X1 MC1_U86 ( .A(SHIFTROWS[19]), .B(SHARE1_OUT[19]), .Z(SHARE1_OUT[115])
         );
  XOR2_X1 MC1_U85 ( .A(SHIFTROWS[18]), .B(SHARE1_OUT[18]), .Z(SHARE1_OUT[114])
         );
  XOR2_X1 MC1_U84 ( .A(SHIFTROWS[17]), .B(SHARE1_OUT[17]), .Z(SHARE1_OUT[113])
         );
  XOR2_X1 MC1_U83 ( .A(SHIFTROWS[15]), .B(SHARE1_OUT[15]), .Z(SHARE1_OUT[111])
         );
  XOR2_X1 MC1_U82 ( .A(SHIFTROWS[14]), .B(SHARE1_OUT[14]), .Z(SHARE1_OUT[110])
         );
  XOR2_X1 MC1_U81 ( .A(SHIFTROWS[13]), .B(SHARE1_OUT[13]), .Z(SHARE1_OUT[109])
         );
  XOR2_X1 MC1_U80 ( .A(SHIFTROWS[11]), .B(SHARE1_OUT[11]), .Z(SHARE1_OUT[107])
         );
  XOR2_X1 MC1_U79 ( .A(SHIFTROWS[10]), .B(SHARE1_OUT[10]), .Z(SHARE1_OUT[106])
         );
  XOR2_X1 MC1_U78 ( .A(SHIFTROWS[9]), .B(SHARE1_OUT[9]), .Z(SHARE1_OUT[105])
         );
  XOR2_X1 MC1_U77 ( .A(SHIFTROWS[7]), .B(SHARE1_OUT[7]), .Z(SHARE1_OUT[103])
         );
  XOR2_X1 MC1_U76 ( .A(SHIFTROWS[6]), .B(SHARE1_OUT[6]), .Z(SHARE1_OUT[102])
         );
  XOR2_X1 MC1_U75 ( .A(SHIFTROWS[5]), .B(SHARE1_OUT[5]), .Z(SHARE1_OUT[101])
         );
  XOR2_X1 MC1_U74 ( .A(SHIFTROWS[3]), .B(SHARE1_OUT[3]), .Z(SHARE1_OUT[99]) );
  XOR2_X1 MC1_U73 ( .A(SHIFTROWS[2]), .B(SHARE1_OUT[2]), .Z(SHARE1_OUT[98]) );
  XOR2_X1 MC1_U72 ( .A(SHIFTROWS[1]), .B(SHARE1_OUT[1]), .Z(SHARE1_OUT[97]) );
  XOR2_X1 MC1_U71 ( .A(SHIFTROWS[28]), .B(SHARE1_OUT[28]), .Z(SHARE1_OUT[124])
         );
  XOR2_X1 MC1_U70 ( .A(SHIFTROWS[24]), .B(SHARE1_OUT[24]), .Z(SHARE1_OUT[120])
         );
  XOR2_X1 MC1_U69 ( .A(SHIFTROWS[20]), .B(SHARE1_OUT[20]), .Z(SHARE1_OUT[116])
         );
  XOR2_X1 MC1_U68 ( .A(SHIFTROWS[16]), .B(SHARE1_OUT[16]), .Z(SHARE1_OUT[112])
         );
  XOR2_X1 MC1_U67 ( .A(SHIFTROWS[12]), .B(SHARE1_OUT[12]), .Z(SHARE1_OUT[108])
         );
  XOR2_X1 MC1_U66 ( .A(SHIFTROWS[8]), .B(SHARE1_OUT[8]), .Z(SHARE1_OUT[104])
         );
  XOR2_X1 MC1_U65 ( .A(SHIFTROWS[4]), .B(SHARE1_OUT[4]), .Z(SHARE1_OUT[100])
         );
  XOR2_X1 MC1_U64 ( .A(SHIFTROWS[0]), .B(SHARE1_OUT[0]), .Z(SHARE1_OUT[96]) );
  XOR2_X1 MC1_U63 ( .A(SHIFTROWS[95]), .B(SHIFTROWS[63]), .Z(SHARE1_OUT[63])
         );
  XOR2_X1 MC1_U62 ( .A(SHIFTROWS[94]), .B(SHIFTROWS[62]), .Z(SHARE1_OUT[62])
         );
  XOR2_X1 MC1_U61 ( .A(SHIFTROWS[93]), .B(SHIFTROWS[61]), .Z(SHARE1_OUT[61])
         );
  XOR2_X1 MC1_U60 ( .A(SHIFTROWS[91]), .B(SHIFTROWS[59]), .Z(SHARE1_OUT[59])
         );
  XOR2_X1 MC1_U59 ( .A(SHIFTROWS[90]), .B(SHIFTROWS[58]), .Z(SHARE1_OUT[58])
         );
  XOR2_X1 MC1_U58 ( .A(SHIFTROWS[89]), .B(SHIFTROWS[57]), .Z(SHARE1_OUT[57])
         );
  XOR2_X1 MC1_U57 ( .A(SHIFTROWS[87]), .B(SHIFTROWS[55]), .Z(SHARE1_OUT[55])
         );
  XOR2_X1 MC1_U56 ( .A(SHIFTROWS[86]), .B(SHIFTROWS[54]), .Z(SHARE1_OUT[54])
         );
  XOR2_X1 MC1_U55 ( .A(SHIFTROWS[85]), .B(SHIFTROWS[53]), .Z(SHARE1_OUT[53])
         );
  XOR2_X1 MC1_U54 ( .A(SHIFTROWS[83]), .B(SHIFTROWS[51]), .Z(SHARE1_OUT[51])
         );
  XOR2_X1 MC1_U53 ( .A(SHIFTROWS[82]), .B(SHIFTROWS[50]), .Z(SHARE1_OUT[50])
         );
  XOR2_X1 MC1_U52 ( .A(SHIFTROWS[81]), .B(SHIFTROWS[49]), .Z(SHARE1_OUT[49])
         );
  XOR2_X1 MC1_U51 ( .A(SHIFTROWS[79]), .B(SHIFTROWS[47]), .Z(SHARE1_OUT[47])
         );
  XOR2_X1 MC1_U50 ( .A(SHIFTROWS[78]), .B(SHIFTROWS[46]), .Z(SHARE1_OUT[46])
         );
  XOR2_X1 MC1_U49 ( .A(SHIFTROWS[77]), .B(SHIFTROWS[45]), .Z(SHARE1_OUT[45])
         );
  XOR2_X1 MC1_U48 ( .A(SHIFTROWS[75]), .B(SHIFTROWS[43]), .Z(SHARE1_OUT[43])
         );
  XOR2_X1 MC1_U47 ( .A(SHIFTROWS[74]), .B(SHIFTROWS[42]), .Z(SHARE1_OUT[42])
         );
  XOR2_X1 MC1_U46 ( .A(SHIFTROWS[71]), .B(SHIFTROWS[39]), .Z(SHARE1_OUT[39])
         );
  XOR2_X1 MC1_U45 ( .A(SHIFTROWS[70]), .B(SHIFTROWS[38]), .Z(SHARE1_OUT[38])
         );
  XOR2_X1 MC1_U44 ( .A(SHIFTROWS[69]), .B(SHIFTROWS[37]), .Z(SHARE1_OUT[37])
         );
  XOR2_X1 MC1_U43 ( .A(SHIFTROWS[67]), .B(SHIFTROWS[35]), .Z(SHARE1_OUT[35])
         );
  XOR2_X1 MC1_U42 ( .A(SHIFTROWS[66]), .B(SHIFTROWS[34]), .Z(SHARE1_OUT[34])
         );
  XOR2_X1 MC1_U41 ( .A(SHIFTROWS[65]), .B(SHIFTROWS[33]), .Z(SHARE1_OUT[33])
         );
  XOR2_X1 MC1_U40 ( .A(SHIFTROWS[92]), .B(SHIFTROWS[60]), .Z(SHARE1_OUT[60])
         );
  XOR2_X1 MC1_U39 ( .A(SHIFTROWS[88]), .B(SHIFTROWS[56]), .Z(SHARE1_OUT[56])
         );
  XOR2_X1 MC1_U38 ( .A(SHIFTROWS[84]), .B(SHIFTROWS[52]), .Z(SHARE1_OUT[52])
         );
  XOR2_X1 MC1_U37 ( .A(SHIFTROWS[80]), .B(SHIFTROWS[48]), .Z(SHARE1_OUT[48])
         );
  XOR2_X1 MC1_U36 ( .A(SHIFTROWS[76]), .B(SHIFTROWS[44]), .Z(SHARE1_OUT[44])
         );
  XOR2_X1 MC1_U35 ( .A(SHIFTROWS[72]), .B(SHIFTROWS[40]), .Z(SHARE1_OUT[40])
         );
  XOR2_X1 MC1_U34 ( .A(SHIFTROWS[68]), .B(SHIFTROWS[36]), .Z(SHARE1_OUT[36])
         );
  XOR2_X1 MC1_U33 ( .A(SHIFTROWS[64]), .B(SHIFTROWS[32]), .Z(SHARE1_OUT[32])
         );
  XOR2_X1 MC1_U32 ( .A(SHIFTROWS[63]), .B(SHARE1_OUT[95]), .Z(SHARE1_OUT[31])
         );
  XOR2_X1 MC1_U31 ( .A(SHIFTROWS[62]), .B(SHARE1_OUT[94]), .Z(SHARE1_OUT[30])
         );
  XOR2_X1 MC1_U30 ( .A(SHIFTROWS[61]), .B(SHARE1_OUT[93]), .Z(SHARE1_OUT[29])
         );
  XOR2_X1 MC1_U29 ( .A(SHIFTROWS[59]), .B(SHARE1_OUT[91]), .Z(SHARE1_OUT[27])
         );
  XOR2_X1 MC1_U28 ( .A(SHIFTROWS[58]), .B(SHARE1_OUT[90]), .Z(SHARE1_OUT[26])
         );
  XOR2_X1 MC1_U27 ( .A(SHIFTROWS[57]), .B(SHARE1_OUT[89]), .Z(SHARE1_OUT[25])
         );
  XOR2_X1 MC1_U26 ( .A(SHIFTROWS[55]), .B(SHARE1_OUT[87]), .Z(SHARE1_OUT[23])
         );
  XOR2_X1 MC1_U25 ( .A(SHIFTROWS[54]), .B(SHARE1_OUT[86]), .Z(SHARE1_OUT[22])
         );
  XOR2_X1 MC1_U24 ( .A(SHIFTROWS[53]), .B(SHARE1_OUT[85]), .Z(SHARE1_OUT[21])
         );
  XOR2_X1 MC1_U23 ( .A(SHIFTROWS[51]), .B(SHARE1_OUT[83]), .Z(SHARE1_OUT[19])
         );
  XOR2_X1 MC1_U22 ( .A(SHIFTROWS[50]), .B(SHARE1_OUT[82]), .Z(SHARE1_OUT[18])
         );
  XOR2_X1 MC1_U21 ( .A(SHIFTROWS[49]), .B(SHARE1_OUT[81]), .Z(SHARE1_OUT[17])
         );
  XOR2_X1 MC1_U20 ( .A(SHIFTROWS[47]), .B(SHARE1_OUT[79]), .Z(SHARE1_OUT[15])
         );
  XOR2_X1 MC1_U19 ( .A(SHIFTROWS[46]), .B(SHARE1_OUT[78]), .Z(SHARE1_OUT[14])
         );
  XOR2_X1 MC1_U18 ( .A(SHIFTROWS[45]), .B(SHARE1_OUT[77]), .Z(SHARE1_OUT[13])
         );
  XOR2_X1 MC1_U17 ( .A(SHIFTROWS[43]), .B(SHARE1_OUT[75]), .Z(SHARE1_OUT[11])
         );
  XOR2_X1 MC1_U16 ( .A(SHIFTROWS[42]), .B(SHARE1_OUT[74]), .Z(SHARE1_OUT[10])
         );
  XOR2_X1 MC1_U15 ( .A(SHIFTROWS[39]), .B(SHARE1_OUT[71]), .Z(SHARE1_OUT[7])
         );
  XOR2_X1 MC1_U14 ( .A(SHIFTROWS[38]), .B(SHARE1_OUT[70]), .Z(SHARE1_OUT[6])
         );
  XOR2_X1 MC1_U13 ( .A(SHIFTROWS[37]), .B(SHARE1_OUT[69]), .Z(SHARE1_OUT[5])
         );
  XOR2_X1 MC1_U12 ( .A(SHIFTROWS[35]), .B(SHARE1_OUT[67]), .Z(SHARE1_OUT[3])
         );
  XOR2_X1 MC1_U11 ( .A(SHIFTROWS[34]), .B(SHARE1_OUT[66]), .Z(SHARE1_OUT[2])
         );
  XOR2_X1 MC1_U10 ( .A(SHIFTROWS[33]), .B(SHARE1_OUT[65]), .Z(SHARE1_OUT[1])
         );
  XOR2_X1 MC1_U9 ( .A(SHIFTROWS[60]), .B(SHARE1_OUT[92]), .Z(SHARE1_OUT[28])
         );
  XOR2_X1 MC1_U8 ( .A(SHIFTROWS[56]), .B(SHARE1_OUT[88]), .Z(SHARE1_OUT[24])
         );
  XOR2_X1 MC1_U7 ( .A(SHIFTROWS[52]), .B(SHARE1_OUT[84]), .Z(SHARE1_OUT[20])
         );
  XOR2_X1 MC1_U6 ( .A(SHIFTROWS[48]), .B(SHARE1_OUT[80]), .Z(SHARE1_OUT[16])
         );
  XOR2_X1 MC1_U5 ( .A(SHIFTROWS[44]), .B(SHARE1_OUT[76]), .Z(SHARE1_OUT[12])
         );
  XOR2_X1 MC1_U4 ( .A(SHIFTROWS[40]), .B(SHARE1_OUT[72]), .Z(SHARE1_OUT[8]) );
  XOR2_X1 MC1_U3 ( .A(SHIFTROWS[36]), .B(SHARE1_OUT[68]), .Z(SHARE1_OUT[4]) );
  XOR2_X1 MC1_U2 ( .A(SHIFTROWS[32]), .B(SHARE1_OUT[64]), .Z(SHARE1_OUT[0]) );
  XOR2_X1 MC1_U1 ( .A(SHIFTROWS[41]), .B(SHARE1_OUT[73]), .Z(SHARE1_OUT[9]) );
  XOR2_X1 MC2_U96 ( .A(SHIFTROWS[201]), .B(SHIFTROWS[169]), .Z(SHARE2_OUT[41])
         );
  XOR2_X1 MC2_U95 ( .A(SHIFTROWS[159]), .B(SHARE2_OUT[31]), .Z(SHARE2_OUT[127]) );
  XOR2_X1 MC2_U94 ( .A(SHIFTROWS[158]), .B(SHARE2_OUT[30]), .Z(SHARE2_OUT[126]) );
  XOR2_X1 MC2_U93 ( .A(SHIFTROWS[157]), .B(SHARE2_OUT[29]), .Z(SHARE2_OUT[125]) );
  XOR2_X1 MC2_U92 ( .A(SHIFTROWS[155]), .B(SHARE2_OUT[27]), .Z(SHARE2_OUT[123]) );
  XOR2_X1 MC2_U91 ( .A(SHIFTROWS[154]), .B(SHARE2_OUT[26]), .Z(SHARE2_OUT[122]) );
  XOR2_X1 MC2_U90 ( .A(SHIFTROWS[153]), .B(SHARE2_OUT[25]), .Z(SHARE2_OUT[121]) );
  XOR2_X1 MC2_U89 ( .A(SHIFTROWS[151]), .B(SHARE2_OUT[23]), .Z(SHARE2_OUT[119]) );
  XOR2_X1 MC2_U88 ( .A(SHIFTROWS[150]), .B(SHARE2_OUT[22]), .Z(SHARE2_OUT[118]) );
  XOR2_X1 MC2_U87 ( .A(SHIFTROWS[149]), .B(SHARE2_OUT[21]), .Z(SHARE2_OUT[117]) );
  XOR2_X1 MC2_U86 ( .A(SHIFTROWS[147]), .B(SHARE2_OUT[19]), .Z(SHARE2_OUT[115]) );
  XOR2_X1 MC2_U85 ( .A(SHIFTROWS[146]), .B(SHARE2_OUT[18]), .Z(SHARE2_OUT[114]) );
  XOR2_X1 MC2_U84 ( .A(SHIFTROWS[145]), .B(SHARE2_OUT[17]), .Z(SHARE2_OUT[113]) );
  XOR2_X1 MC2_U83 ( .A(SHIFTROWS[143]), .B(SHARE2_OUT[15]), .Z(SHARE2_OUT[111]) );
  XOR2_X1 MC2_U82 ( .A(SHIFTROWS[142]), .B(SHARE2_OUT[14]), .Z(SHARE2_OUT[110]) );
  XOR2_X1 MC2_U81 ( .A(SHIFTROWS[141]), .B(SHARE2_OUT[13]), .Z(SHARE2_OUT[109]) );
  XOR2_X1 MC2_U80 ( .A(SHIFTROWS[139]), .B(SHARE2_OUT[11]), .Z(SHARE2_OUT[107]) );
  XOR2_X1 MC2_U79 ( .A(SHIFTROWS[138]), .B(SHARE2_OUT[10]), .Z(SHARE2_OUT[106]) );
  XOR2_X1 MC2_U78 ( .A(SHIFTROWS[137]), .B(SHARE2_OUT[9]), .Z(SHARE2_OUT[105])
         );
  XOR2_X1 MC2_U77 ( .A(SHIFTROWS[135]), .B(SHARE2_OUT[7]), .Z(SHARE2_OUT[103])
         );
  XOR2_X1 MC2_U76 ( .A(SHIFTROWS[134]), .B(SHARE2_OUT[6]), .Z(SHARE2_OUT[102])
         );
  XOR2_X1 MC2_U75 ( .A(SHIFTROWS[133]), .B(SHARE2_OUT[5]), .Z(SHARE2_OUT[101])
         );
  XOR2_X1 MC2_U74 ( .A(SHIFTROWS[131]), .B(SHARE2_OUT[3]), .Z(SHARE2_OUT[99])
         );
  XOR2_X1 MC2_U73 ( .A(SHIFTROWS[130]), .B(SHARE2_OUT[2]), .Z(SHARE2_OUT[98])
         );
  XOR2_X1 MC2_U72 ( .A(SHIFTROWS[129]), .B(SHARE2_OUT[1]), .Z(SHARE2_OUT[97])
         );
  XOR2_X1 MC2_U71 ( .A(SHIFTROWS[156]), .B(SHARE2_OUT[28]), .Z(SHARE2_OUT[124]) );
  XOR2_X1 MC2_U70 ( .A(SHIFTROWS[152]), .B(SHARE2_OUT[24]), .Z(SHARE2_OUT[120]) );
  XOR2_X1 MC2_U69 ( .A(SHIFTROWS[148]), .B(SHARE2_OUT[20]), .Z(SHARE2_OUT[116]) );
  XOR2_X1 MC2_U68 ( .A(SHIFTROWS[144]), .B(SHARE2_OUT[16]), .Z(SHARE2_OUT[112]) );
  XOR2_X1 MC2_U67 ( .A(SHIFTROWS[140]), .B(SHARE2_OUT[12]), .Z(SHARE2_OUT[108]) );
  XOR2_X1 MC2_U66 ( .A(SHIFTROWS[136]), .B(SHARE2_OUT[8]), .Z(SHARE2_OUT[104])
         );
  XOR2_X1 MC2_U65 ( .A(SHIFTROWS[132]), .B(SHARE2_OUT[4]), .Z(SHARE2_OUT[100])
         );
  XOR2_X1 MC2_U64 ( .A(SHIFTROWS[128]), .B(SHARE2_OUT[0]), .Z(SHARE2_OUT[96])
         );
  XOR2_X1 MC2_U63 ( .A(SHIFTROWS[223]), .B(SHIFTROWS[191]), .Z(SHARE2_OUT[63])
         );
  XOR2_X1 MC2_U62 ( .A(SHIFTROWS[222]), .B(SHIFTROWS[190]), .Z(SHARE2_OUT[62])
         );
  XOR2_X1 MC2_U61 ( .A(SHIFTROWS[221]), .B(SHIFTROWS[189]), .Z(SHARE2_OUT[61])
         );
  XOR2_X1 MC2_U60 ( .A(SHIFTROWS[219]), .B(SHIFTROWS[187]), .Z(SHARE2_OUT[59])
         );
  XOR2_X1 MC2_U59 ( .A(SHIFTROWS[218]), .B(SHIFTROWS[186]), .Z(SHARE2_OUT[58])
         );
  XOR2_X1 MC2_U58 ( .A(SHIFTROWS[217]), .B(SHIFTROWS[185]), .Z(SHARE2_OUT[57])
         );
  XOR2_X1 MC2_U57 ( .A(SHIFTROWS[215]), .B(SHIFTROWS[183]), .Z(SHARE2_OUT[55])
         );
  XOR2_X1 MC2_U56 ( .A(SHIFTROWS[214]), .B(SHIFTROWS[182]), .Z(SHARE2_OUT[54])
         );
  XOR2_X1 MC2_U55 ( .A(SHIFTROWS[213]), .B(SHIFTROWS[181]), .Z(SHARE2_OUT[53])
         );
  XOR2_X1 MC2_U54 ( .A(SHIFTROWS[211]), .B(SHIFTROWS[179]), .Z(SHARE2_OUT[51])
         );
  XOR2_X1 MC2_U53 ( .A(SHIFTROWS[210]), .B(SHIFTROWS[178]), .Z(SHARE2_OUT[50])
         );
  XOR2_X1 MC2_U52 ( .A(SHIFTROWS[209]), .B(SHIFTROWS[177]), .Z(SHARE2_OUT[49])
         );
  XOR2_X1 MC2_U51 ( .A(SHIFTROWS[207]), .B(SHIFTROWS[175]), .Z(SHARE2_OUT[47])
         );
  XOR2_X1 MC2_U50 ( .A(SHIFTROWS[206]), .B(SHIFTROWS[174]), .Z(SHARE2_OUT[46])
         );
  XOR2_X1 MC2_U49 ( .A(SHIFTROWS[205]), .B(SHIFTROWS[173]), .Z(SHARE2_OUT[45])
         );
  XOR2_X1 MC2_U48 ( .A(SHIFTROWS[203]), .B(SHIFTROWS[171]), .Z(SHARE2_OUT[43])
         );
  XOR2_X1 MC2_U47 ( .A(SHIFTROWS[202]), .B(SHIFTROWS[170]), .Z(SHARE2_OUT[42])
         );
  XOR2_X1 MC2_U46 ( .A(SHIFTROWS[199]), .B(SHIFTROWS[167]), .Z(SHARE2_OUT[39])
         );
  XOR2_X1 MC2_U45 ( .A(SHIFTROWS[198]), .B(SHIFTROWS[166]), .Z(SHARE2_OUT[38])
         );
  XOR2_X1 MC2_U44 ( .A(SHIFTROWS[197]), .B(SHIFTROWS[165]), .Z(SHARE2_OUT[37])
         );
  XOR2_X1 MC2_U43 ( .A(SHIFTROWS[195]), .B(SHIFTROWS[163]), .Z(SHARE2_OUT[35])
         );
  XOR2_X1 MC2_U42 ( .A(SHIFTROWS[194]), .B(SHIFTROWS[162]), .Z(SHARE2_OUT[34])
         );
  XOR2_X1 MC2_U41 ( .A(SHIFTROWS[193]), .B(SHIFTROWS[161]), .Z(SHARE2_OUT[33])
         );
  XOR2_X1 MC2_U40 ( .A(SHIFTROWS[220]), .B(SHIFTROWS[188]), .Z(SHARE2_OUT[60])
         );
  XOR2_X1 MC2_U39 ( .A(SHIFTROWS[216]), .B(SHIFTROWS[184]), .Z(SHARE2_OUT[56])
         );
  XOR2_X1 MC2_U38 ( .A(SHIFTROWS[212]), .B(SHIFTROWS[180]), .Z(SHARE2_OUT[52])
         );
  XOR2_X1 MC2_U37 ( .A(SHIFTROWS[208]), .B(SHIFTROWS[176]), .Z(SHARE2_OUT[48])
         );
  XOR2_X1 MC2_U36 ( .A(SHIFTROWS[204]), .B(SHIFTROWS[172]), .Z(SHARE2_OUT[44])
         );
  XOR2_X1 MC2_U35 ( .A(SHIFTROWS[200]), .B(SHIFTROWS[168]), .Z(SHARE2_OUT[40])
         );
  XOR2_X1 MC2_U34 ( .A(SHIFTROWS[196]), .B(SHIFTROWS[164]), .Z(SHARE2_OUT[36])
         );
  XOR2_X1 MC2_U33 ( .A(SHIFTROWS[192]), .B(SHIFTROWS[160]), .Z(SHARE2_OUT[32])
         );
  XOR2_X1 MC2_U32 ( .A(SHIFTROWS[191]), .B(SHARE2_OUT[95]), .Z(SHARE2_OUT[31])
         );
  XOR2_X1 MC2_U31 ( .A(SHIFTROWS[190]), .B(SHARE2_OUT[94]), .Z(SHARE2_OUT[30])
         );
  XOR2_X1 MC2_U30 ( .A(SHIFTROWS[189]), .B(SHARE2_OUT[93]), .Z(SHARE2_OUT[29])
         );
  XOR2_X1 MC2_U29 ( .A(SHIFTROWS[187]), .B(SHARE2_OUT[91]), .Z(SHARE2_OUT[27])
         );
  XOR2_X1 MC2_U28 ( .A(SHIFTROWS[186]), .B(SHARE2_OUT[90]), .Z(SHARE2_OUT[26])
         );
  XOR2_X1 MC2_U27 ( .A(SHIFTROWS[185]), .B(SHARE2_OUT[89]), .Z(SHARE2_OUT[25])
         );
  XOR2_X1 MC2_U26 ( .A(SHIFTROWS[183]), .B(SHARE2_OUT[87]), .Z(SHARE2_OUT[23])
         );
  XOR2_X1 MC2_U25 ( .A(SHIFTROWS[182]), .B(SHARE2_OUT[86]), .Z(SHARE2_OUT[22])
         );
  XOR2_X1 MC2_U24 ( .A(SHIFTROWS[181]), .B(SHARE2_OUT[85]), .Z(SHARE2_OUT[21])
         );
  XOR2_X1 MC2_U23 ( .A(SHIFTROWS[179]), .B(SHARE2_OUT[83]), .Z(SHARE2_OUT[19])
         );
  XOR2_X1 MC2_U22 ( .A(SHIFTROWS[178]), .B(SHARE2_OUT[82]), .Z(SHARE2_OUT[18])
         );
  XOR2_X1 MC2_U21 ( .A(SHIFTROWS[177]), .B(SHARE2_OUT[81]), .Z(SHARE2_OUT[17])
         );
  XOR2_X1 MC2_U20 ( .A(SHIFTROWS[175]), .B(SHARE2_OUT[79]), .Z(SHARE2_OUT[15])
         );
  XOR2_X1 MC2_U19 ( .A(SHIFTROWS[174]), .B(SHARE2_OUT[78]), .Z(SHARE2_OUT[14])
         );
  XOR2_X1 MC2_U18 ( .A(SHIFTROWS[173]), .B(SHARE2_OUT[77]), .Z(SHARE2_OUT[13])
         );
  XOR2_X1 MC2_U17 ( .A(SHIFTROWS[171]), .B(SHARE2_OUT[75]), .Z(SHARE2_OUT[11])
         );
  XOR2_X1 MC2_U16 ( .A(SHIFTROWS[170]), .B(SHARE2_OUT[74]), .Z(SHARE2_OUT[10])
         );
  XOR2_X1 MC2_U15 ( .A(SHIFTROWS[167]), .B(SHARE2_OUT[71]), .Z(SHARE2_OUT[7])
         );
  XOR2_X1 MC2_U14 ( .A(SHIFTROWS[166]), .B(SHARE2_OUT[70]), .Z(SHARE2_OUT[6])
         );
  XOR2_X1 MC2_U13 ( .A(SHIFTROWS[165]), .B(SHARE2_OUT[69]), .Z(SHARE2_OUT[5])
         );
  XOR2_X1 MC2_U12 ( .A(SHIFTROWS[163]), .B(SHARE2_OUT[67]), .Z(SHARE2_OUT[3])
         );
  XOR2_X1 MC2_U11 ( .A(SHIFTROWS[162]), .B(SHARE2_OUT[66]), .Z(SHARE2_OUT[2])
         );
  XOR2_X1 MC2_U10 ( .A(SHIFTROWS[161]), .B(SHARE2_OUT[65]), .Z(SHARE2_OUT[1])
         );
  XOR2_X1 MC2_U9 ( .A(SHIFTROWS[188]), .B(SHARE2_OUT[92]), .Z(SHARE2_OUT[28])
         );
  XOR2_X1 MC2_U8 ( .A(SHIFTROWS[184]), .B(SHARE2_OUT[88]), .Z(SHARE2_OUT[24])
         );
  XOR2_X1 MC2_U7 ( .A(SHIFTROWS[180]), .B(SHARE2_OUT[84]), .Z(SHARE2_OUT[20])
         );
  XOR2_X1 MC2_U6 ( .A(SHIFTROWS[176]), .B(SHARE2_OUT[80]), .Z(SHARE2_OUT[16])
         );
  XOR2_X1 MC2_U5 ( .A(SHIFTROWS[172]), .B(SHARE2_OUT[76]), .Z(SHARE2_OUT[12])
         );
  XOR2_X1 MC2_U4 ( .A(SHIFTROWS[168]), .B(SHARE2_OUT[72]), .Z(SHARE2_OUT[8])
         );
  XOR2_X1 MC2_U3 ( .A(SHIFTROWS[164]), .B(SHARE2_OUT[68]), .Z(SHARE2_OUT[4])
         );
  XOR2_X1 MC2_U2 ( .A(SHIFTROWS[160]), .B(SHARE2_OUT[64]), .Z(SHARE2_OUT[0])
         );
  XOR2_X1 MC2_U1 ( .A(SHIFTROWS[169]), .B(SHARE2_OUT[73]), .Z(SHARE2_OUT[9])
         );
endmodule

