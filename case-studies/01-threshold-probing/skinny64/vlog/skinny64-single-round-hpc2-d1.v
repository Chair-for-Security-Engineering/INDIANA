/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Jan 31 11:24:14 2024
/////////////////////////////////////////////////////////////


module RoundFunction ( CLK, RESET, ROUND_CST, RAND, ROUND_KEY1, ROUND_KEY2, 
        SHARE1_IN, SHARE2_IN, SHARE1_OUT, SHARE2_OUT );
  input [5:0] ROUND_CST;
  input [63:0] RAND;
  input [63:0] ROUND_KEY1;
  input [63:0] ROUND_KEY2;
  input [63:0] SHARE1_IN;
  input [63:0] SHARE2_IN;
  output [63:0] SHARE1_OUT;
  output [63:0] SHARE2_OUT;
  input CLK, RESET;
  wire   SBOX_0_reg_0_s0_7, SBOX_0_reg_0_s1_7, SBOX_0_reg_0_s0_6,
         SBOX_0_reg_0_s1_6, SBOX_0_reg_0_s0_5, SBOX_0_reg_0_s1_5,
         SBOX_0_reg_0_s0_4, SBOX_0_reg_0_s1_4, SBOX_0_reg_0_s0_3,
         SBOX_0_reg_0_s1_3, SBOX_0_reg_0_s0_2, SBOX_0_reg_0_s1_2,
         SBOX_0_reg_0_s0_1, SBOX_0_reg_0_s1_1, SBOX_0_reg_0_s0,
         SBOX_0_reg_0_s1, SBOX_0__s0_0, SBOX_0__s0_3_, SBOX_0__s1_0,
         SBOX_0_not_5_Masked_z_0_, SBOX_0_xor_1_Masked_z_0_,
         SBOX_0_not_3_Masked_z_0_, SBOX_0_not_2_Masked_z_0_,
         SBOX_0_xor_0_Masked_z_0_, SBOX_0_not_1_Masked_z_0_,
         SBOX_0_not_0_Masked_z_0_, SBOX_0_and_0_Masked_and_hpc_n3,
         SBOX_0_and_0_Masked_and_hpc_n2, SBOX_0_and_0_Masked_and_hpc_n1,
         SBOX_0_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_0_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_0_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_0_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_0_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_0_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_0_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_0_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_0_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_0_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_0_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_0_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_0_and_1_Masked_and_hpc_n6, SBOX_0_and_1_Masked_and_hpc_n5,
         SBOX_0_and_1_Masked_and_hpc_n4,
         SBOX_0_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_0_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_0_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_0_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_0_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_0_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_0_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_0_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_0_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_0_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_0_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_0_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_0_and_2_Masked_and_hpc_n6, SBOX_0_and_2_Masked_and_hpc_n5,
         SBOX_0_and_2_Masked_and_hpc_n4,
         SBOX_0_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_0_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_0_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_0_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_0_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_0_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_0_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_0_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_0_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_0_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_0_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_0_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_0_and_3_Masked_and_hpc_n6, SBOX_0_and_3_Masked_and_hpc_n5,
         SBOX_0_and_3_Masked_and_hpc_n4,
         SBOX_0_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_0_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_0_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_0_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_0_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_0_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_0_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_0_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_0_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_0_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_0_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_0_and_3_Masked_and_hpc_s_in_1__0_, SBOX_1_reg_0_s0_7,
         SBOX_1_reg_0_s1_7, SBOX_1_reg_0_s0_6, SBOX_1_reg_0_s1_6,
         SBOX_1_reg_0_s0_5, SBOX_1_reg_0_s1_5, SBOX_1_reg_0_s0_4,
         SBOX_1_reg_0_s1_4, SBOX_1_reg_0_s0_3, SBOX_1_reg_0_s1_3,
         SBOX_1_reg_0_s0_2, SBOX_1_reg_0_s1_2, SBOX_1_reg_0_s0_1,
         SBOX_1_reg_0_s1_1, SBOX_1_reg_0_s0, SBOX_1_reg_0_s1, SBOX_1__s0_0,
         SBOX_1__s0_3_, SBOX_1__s1_0, SBOX_1_not_5_Masked_z_0_,
         SBOX_1_xor_1_Masked_z_0_, SBOX_1_not_3_Masked_z_0_,
         SBOX_1_not_2_Masked_z_0_, SBOX_1_xor_0_Masked_z_0_,
         SBOX_1_not_1_Masked_z_0_, SBOX_1_not_0_Masked_z_0_,
         SBOX_1_and_0_Masked_and_hpc_n6, SBOX_1_and_0_Masked_and_hpc_n5,
         SBOX_1_and_0_Masked_and_hpc_n4,
         SBOX_1_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_1_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_1_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_1_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_1_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_1_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_1_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_1_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_1_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_1_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_1_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_1_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_1_and_1_Masked_and_hpc_n6, SBOX_1_and_1_Masked_and_hpc_n5,
         SBOX_1_and_1_Masked_and_hpc_n4,
         SBOX_1_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_1_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_1_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_1_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_1_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_1_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_1_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_1_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_1_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_1_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_1_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_1_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_1_and_2_Masked_and_hpc_n6, SBOX_1_and_2_Masked_and_hpc_n5,
         SBOX_1_and_2_Masked_and_hpc_n4,
         SBOX_1_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_1_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_1_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_1_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_1_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_1_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_1_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_1_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_1_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_1_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_1_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_1_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_1_and_3_Masked_and_hpc_n6, SBOX_1_and_3_Masked_and_hpc_n5,
         SBOX_1_and_3_Masked_and_hpc_n4,
         SBOX_1_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_1_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_1_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_1_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_1_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_1_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_1_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_1_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_1_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_1_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_1_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_1_and_3_Masked_and_hpc_s_in_1__0_, SBOX_2_reg_0_s0_7,
         SBOX_2_reg_0_s1_7, SBOX_2_reg_0_s0_6, SBOX_2_reg_0_s1_6,
         SBOX_2_reg_0_s0_5, SBOX_2_reg_0_s1_5, SBOX_2_reg_0_s0_4,
         SBOX_2_reg_0_s1_4, SBOX_2_reg_0_s0_3, SBOX_2_reg_0_s1_3,
         SBOX_2_reg_0_s0_2, SBOX_2_reg_0_s1_2, SBOX_2_reg_0_s0_1,
         SBOX_2_reg_0_s1_1, SBOX_2_reg_0_s0, SBOX_2_reg_0_s1, SBOX_2__s0_0,
         SBOX_2__s0_3_, SBOX_2__s1_0, SBOX_2_not_5_Masked_z_0_,
         SBOX_2_xor_1_Masked_z_0_, SBOX_2_not_3_Masked_z_0_,
         SBOX_2_not_2_Masked_z_0_, SBOX_2_xor_0_Masked_z_0_,
         SBOX_2_not_1_Masked_z_0_, SBOX_2_not_0_Masked_z_0_,
         SBOX_2_and_0_Masked_and_hpc_n6, SBOX_2_and_0_Masked_and_hpc_n5,
         SBOX_2_and_0_Masked_and_hpc_n4,
         SBOX_2_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_2_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_2_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_2_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_2_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_2_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_2_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_2_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_2_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_2_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_2_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_2_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_2_and_1_Masked_and_hpc_n6, SBOX_2_and_1_Masked_and_hpc_n5,
         SBOX_2_and_1_Masked_and_hpc_n4,
         SBOX_2_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_2_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_2_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_2_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_2_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_2_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_2_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_2_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_2_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_2_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_2_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_2_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_2_and_2_Masked_and_hpc_n6, SBOX_2_and_2_Masked_and_hpc_n5,
         SBOX_2_and_2_Masked_and_hpc_n4,
         SBOX_2_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_2_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_2_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_2_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_2_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_2_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_2_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_2_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_2_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_2_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_2_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_2_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_2_and_3_Masked_and_hpc_n6, SBOX_2_and_3_Masked_and_hpc_n5,
         SBOX_2_and_3_Masked_and_hpc_n4,
         SBOX_2_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_2_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_2_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_2_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_2_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_2_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_2_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_2_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_2_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_2_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_2_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_2_and_3_Masked_and_hpc_s_in_1__0_, SBOX_3_reg_0_s0_7,
         SBOX_3_reg_0_s1_7, SBOX_3_reg_0_s0_6, SBOX_3_reg_0_s1_6,
         SBOX_3_reg_0_s0_5, SBOX_3_reg_0_s1_5, SBOX_3_reg_0_s0_4,
         SBOX_3_reg_0_s1_4, SBOX_3_reg_0_s0_3, SBOX_3_reg_0_s1_3,
         SBOX_3_reg_0_s0_2, SBOX_3_reg_0_s1_2, SBOX_3_reg_0_s0_1,
         SBOX_3_reg_0_s1_1, SBOX_3_reg_0_s0, SBOX_3_reg_0_s1, SBOX_3__s0_0,
         SBOX_3__s0_3_, SBOX_3__s1_0, SBOX_3_not_5_Masked_z_0_,
         SBOX_3_xor_1_Masked_z_0_, SBOX_3_not_3_Masked_z_0_,
         SBOX_3_not_2_Masked_z_0_, SBOX_3_xor_0_Masked_z_0_,
         SBOX_3_not_1_Masked_z_0_, SBOX_3_not_0_Masked_z_0_,
         SBOX_3_and_0_Masked_and_hpc_n6, SBOX_3_and_0_Masked_and_hpc_n5,
         SBOX_3_and_0_Masked_and_hpc_n4,
         SBOX_3_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_3_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_3_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_3_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_3_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_3_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_3_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_3_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_3_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_3_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_3_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_3_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_3_and_1_Masked_and_hpc_n6, SBOX_3_and_1_Masked_and_hpc_n5,
         SBOX_3_and_1_Masked_and_hpc_n4,
         SBOX_3_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_3_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_3_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_3_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_3_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_3_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_3_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_3_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_3_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_3_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_3_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_3_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_3_and_2_Masked_and_hpc_n6, SBOX_3_and_2_Masked_and_hpc_n5,
         SBOX_3_and_2_Masked_and_hpc_n4,
         SBOX_3_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_3_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_3_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_3_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_3_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_3_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_3_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_3_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_3_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_3_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_3_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_3_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_3_and_3_Masked_and_hpc_n6, SBOX_3_and_3_Masked_and_hpc_n5,
         SBOX_3_and_3_Masked_and_hpc_n4,
         SBOX_3_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_3_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_3_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_3_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_3_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_3_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_3_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_3_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_3_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_3_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_3_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_3_and_3_Masked_and_hpc_s_in_1__0_, SBOX_4_reg_0_s0_7,
         SBOX_4_reg_0_s1_7, SBOX_4_reg_0_s0_6, SBOX_4_reg_0_s1_6,
         SBOX_4_reg_0_s0_5, SBOX_4_reg_0_s1_5, SBOX_4_reg_0_s0_4,
         SBOX_4_reg_0_s1_4, SBOX_4_reg_0_s0_3, SBOX_4_reg_0_s1_3,
         SBOX_4_reg_0_s0_2, SBOX_4_reg_0_s1_2, SBOX_4_reg_0_s0_1,
         SBOX_4_reg_0_s1_1, SBOX_4_reg_0_s0, SBOX_4_reg_0_s1, SBOX_4__s0_0,
         SBOX_4__s0_3_, SBOX_4__s1_0, SBOX_4_not_5_Masked_z_0_,
         SBOX_4_xor_1_Masked_z_0_, SBOX_4_not_3_Masked_z_0_,
         SBOX_4_not_2_Masked_z_0_, SBOX_4_xor_0_Masked_z_0_,
         SBOX_4_not_1_Masked_z_0_, SBOX_4_not_0_Masked_z_0_,
         SBOX_4_and_0_Masked_and_hpc_n6, SBOX_4_and_0_Masked_and_hpc_n5,
         SBOX_4_and_0_Masked_and_hpc_n4,
         SBOX_4_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_4_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_4_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_4_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_4_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_4_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_4_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_4_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_4_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_4_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_4_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_4_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_4_and_1_Masked_and_hpc_n6, SBOX_4_and_1_Masked_and_hpc_n5,
         SBOX_4_and_1_Masked_and_hpc_n4,
         SBOX_4_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_4_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_4_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_4_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_4_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_4_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_4_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_4_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_4_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_4_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_4_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_4_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_4_and_2_Masked_and_hpc_n6, SBOX_4_and_2_Masked_and_hpc_n5,
         SBOX_4_and_2_Masked_and_hpc_n4,
         SBOX_4_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_4_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_4_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_4_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_4_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_4_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_4_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_4_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_4_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_4_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_4_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_4_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_4_and_3_Masked_and_hpc_n6, SBOX_4_and_3_Masked_and_hpc_n5,
         SBOX_4_and_3_Masked_and_hpc_n4,
         SBOX_4_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_4_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_4_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_4_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_4_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_4_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_4_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_4_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_4_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_4_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_4_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_4_and_3_Masked_and_hpc_s_in_1__0_, SBOX_5_reg_0_s0_7,
         SBOX_5_reg_0_s1_7, SBOX_5_reg_0_s0_6, SBOX_5_reg_0_s1_6,
         SBOX_5_reg_0_s0_5, SBOX_5_reg_0_s1_5, SBOX_5_reg_0_s0_4,
         SBOX_5_reg_0_s1_4, SBOX_5_reg_0_s0_3, SBOX_5_reg_0_s1_3,
         SBOX_5_reg_0_s0_2, SBOX_5_reg_0_s1_2, SBOX_5_reg_0_s0_1,
         SBOX_5_reg_0_s1_1, SBOX_5_reg_0_s0, SBOX_5_reg_0_s1, SBOX_5__s0_0,
         SBOX_5__s0_3_, SBOX_5__s1_0, SBOX_5_not_5_Masked_z_0_,
         SBOX_5_xor_1_Masked_z_0_, SBOX_5_not_3_Masked_z_0_,
         SBOX_5_not_2_Masked_z_0_, SBOX_5_xor_0_Masked_z_0_,
         SBOX_5_not_1_Masked_z_0_, SBOX_5_not_0_Masked_z_0_,
         SBOX_5_and_0_Masked_and_hpc_n6, SBOX_5_and_0_Masked_and_hpc_n5,
         SBOX_5_and_0_Masked_and_hpc_n4,
         SBOX_5_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_5_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_5_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_5_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_5_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_5_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_5_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_5_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_5_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_5_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_5_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_5_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_5_and_1_Masked_and_hpc_n6, SBOX_5_and_1_Masked_and_hpc_n5,
         SBOX_5_and_1_Masked_and_hpc_n4,
         SBOX_5_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_5_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_5_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_5_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_5_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_5_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_5_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_5_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_5_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_5_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_5_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_5_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_5_and_2_Masked_and_hpc_n6, SBOX_5_and_2_Masked_and_hpc_n5,
         SBOX_5_and_2_Masked_and_hpc_n4,
         SBOX_5_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_5_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_5_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_5_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_5_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_5_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_5_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_5_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_5_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_5_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_5_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_5_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_5_and_3_Masked_and_hpc_n6, SBOX_5_and_3_Masked_and_hpc_n5,
         SBOX_5_and_3_Masked_and_hpc_n4,
         SBOX_5_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_5_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_5_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_5_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_5_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_5_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_5_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_5_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_5_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_5_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_5_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_5_and_3_Masked_and_hpc_s_in_1__0_, SBOX_6_reg_0_s0_7,
         SBOX_6_reg_0_s1_7, SBOX_6_reg_0_s0_6, SBOX_6_reg_0_s1_6,
         SBOX_6_reg_0_s0_5, SBOX_6_reg_0_s1_5, SBOX_6_reg_0_s0_4,
         SBOX_6_reg_0_s1_4, SBOX_6_reg_0_s0_3, SBOX_6_reg_0_s1_3,
         SBOX_6_reg_0_s0_2, SBOX_6_reg_0_s1_2, SBOX_6_reg_0_s0_1,
         SBOX_6_reg_0_s1_1, SBOX_6_reg_0_s0, SBOX_6_reg_0_s1, SBOX_6__s0_0,
         SBOX_6__s0_3_, SBOX_6__s1_0, SBOX_6_not_5_Masked_z_0_,
         SBOX_6_xor_1_Masked_z_0_, SBOX_6_not_3_Masked_z_0_,
         SBOX_6_not_2_Masked_z_0_, SBOX_6_xor_0_Masked_z_0_,
         SBOX_6_not_1_Masked_z_0_, SBOX_6_not_0_Masked_z_0_,
         SBOX_6_and_0_Masked_and_hpc_n6, SBOX_6_and_0_Masked_and_hpc_n5,
         SBOX_6_and_0_Masked_and_hpc_n4,
         SBOX_6_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_6_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_6_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_6_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_6_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_6_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_6_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_6_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_6_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_6_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_6_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_6_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_6_and_1_Masked_and_hpc_n6, SBOX_6_and_1_Masked_and_hpc_n5,
         SBOX_6_and_1_Masked_and_hpc_n4,
         SBOX_6_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_6_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_6_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_6_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_6_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_6_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_6_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_6_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_6_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_6_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_6_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_6_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_6_and_2_Masked_and_hpc_n6, SBOX_6_and_2_Masked_and_hpc_n5,
         SBOX_6_and_2_Masked_and_hpc_n4,
         SBOX_6_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_6_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_6_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_6_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_6_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_6_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_6_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_6_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_6_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_6_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_6_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_6_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_6_and_3_Masked_and_hpc_n6, SBOX_6_and_3_Masked_and_hpc_n5,
         SBOX_6_and_3_Masked_and_hpc_n4,
         SBOX_6_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_6_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_6_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_6_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_6_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_6_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_6_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_6_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_6_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_6_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_6_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_6_and_3_Masked_and_hpc_s_in_1__0_, SBOX_7_reg_0_s0_7,
         SBOX_7_reg_0_s1_7, SBOX_7_reg_0_s0_6, SBOX_7_reg_0_s1_6,
         SBOX_7_reg_0_s0_5, SBOX_7_reg_0_s1_5, SBOX_7_reg_0_s0_4,
         SBOX_7_reg_0_s1_4, SBOX_7_reg_0_s0_3, SBOX_7_reg_0_s1_3,
         SBOX_7_reg_0_s0_2, SBOX_7_reg_0_s1_2, SBOX_7_reg_0_s0_1,
         SBOX_7_reg_0_s1_1, SBOX_7_reg_0_s0, SBOX_7_reg_0_s1, SBOX_7__s0_0,
         SBOX_7__s0_3_, SBOX_7__s1_0, SBOX_7_not_5_Masked_z_0_,
         SBOX_7_xor_1_Masked_z_0_, SBOX_7_not_3_Masked_z_0_,
         SBOX_7_not_2_Masked_z_0_, SBOX_7_xor_0_Masked_z_0_,
         SBOX_7_not_1_Masked_z_0_, SBOX_7_not_0_Masked_z_0_,
         SBOX_7_and_0_Masked_and_hpc_n6, SBOX_7_and_0_Masked_and_hpc_n5,
         SBOX_7_and_0_Masked_and_hpc_n4,
         SBOX_7_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_7_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_7_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_7_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_7_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_7_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_7_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_7_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_7_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_7_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_7_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_7_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_7_and_1_Masked_and_hpc_n6, SBOX_7_and_1_Masked_and_hpc_n5,
         SBOX_7_and_1_Masked_and_hpc_n4,
         SBOX_7_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_7_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_7_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_7_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_7_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_7_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_7_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_7_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_7_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_7_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_7_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_7_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_7_and_2_Masked_and_hpc_n6, SBOX_7_and_2_Masked_and_hpc_n5,
         SBOX_7_and_2_Masked_and_hpc_n4,
         SBOX_7_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_7_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_7_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_7_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_7_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_7_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_7_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_7_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_7_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_7_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_7_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_7_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_7_and_3_Masked_and_hpc_n6, SBOX_7_and_3_Masked_and_hpc_n5,
         SBOX_7_and_3_Masked_and_hpc_n4,
         SBOX_7_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_7_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_7_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_7_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_7_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_7_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_7_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_7_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_7_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_7_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_7_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_7_and_3_Masked_and_hpc_s_in_1__0_, SBOX_8_reg_0_s0_7,
         SBOX_8_reg_0_s1_7, SBOX_8_reg_0_s0_6, SBOX_8_reg_0_s1_6,
         SBOX_8_reg_0_s0_5, SBOX_8_reg_0_s1_5, SBOX_8_reg_0_s0_4,
         SBOX_8_reg_0_s1_4, SBOX_8_reg_0_s0_3, SBOX_8_reg_0_s1_3,
         SBOX_8_reg_0_s0_2, SBOX_8_reg_0_s1_2, SBOX_8_reg_0_s0_1,
         SBOX_8_reg_0_s1_1, SBOX_8_reg_0_s0, SBOX_8_reg_0_s1, SBOX_8__s0_0,
         SBOX_8__s0_3_, SBOX_8__s1_0, SBOX_8_not_5_Masked_z_0_,
         SBOX_8_xor_1_Masked_z_0_, SBOX_8_not_3_Masked_z_0_,
         SBOX_8_not_2_Masked_z_0_, SBOX_8_xor_0_Masked_z_0_,
         SBOX_8_not_1_Masked_z_0_, SBOX_8_not_0_Masked_z_0_,
         SBOX_8_and_0_Masked_and_hpc_n6, SBOX_8_and_0_Masked_and_hpc_n5,
         SBOX_8_and_0_Masked_and_hpc_n4,
         SBOX_8_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_8_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_8_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_8_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_8_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_8_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_8_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_8_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_8_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_8_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_8_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_8_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_8_and_1_Masked_and_hpc_n6, SBOX_8_and_1_Masked_and_hpc_n5,
         SBOX_8_and_1_Masked_and_hpc_n4,
         SBOX_8_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_8_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_8_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_8_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_8_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_8_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_8_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_8_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_8_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_8_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_8_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_8_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_8_and_2_Masked_and_hpc_n6, SBOX_8_and_2_Masked_and_hpc_n5,
         SBOX_8_and_2_Masked_and_hpc_n4,
         SBOX_8_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_8_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_8_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_8_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_8_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_8_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_8_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_8_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_8_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_8_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_8_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_8_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_8_and_3_Masked_and_hpc_n6, SBOX_8_and_3_Masked_and_hpc_n5,
         SBOX_8_and_3_Masked_and_hpc_n4,
         SBOX_8_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_8_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_8_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_8_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_8_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_8_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_8_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_8_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_8_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_8_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_8_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_8_and_3_Masked_and_hpc_s_in_1__0_, SBOX_9_reg_0_s0_7,
         SBOX_9_reg_0_s1_7, SBOX_9_reg_0_s0_6, SBOX_9_reg_0_s1_6,
         SBOX_9_reg_0_s0_5, SBOX_9_reg_0_s1_5, SBOX_9_reg_0_s0_4,
         SBOX_9_reg_0_s1_4, SBOX_9_reg_0_s0_3, SBOX_9_reg_0_s1_3,
         SBOX_9_reg_0_s0_2, SBOX_9_reg_0_s1_2, SBOX_9_reg_0_s0_1,
         SBOX_9_reg_0_s1_1, SBOX_9_reg_0_s0, SBOX_9_reg_0_s1, SBOX_9__s0_0,
         SBOX_9__s0_3_, SBOX_9__s1_0, SBOX_9_not_5_Masked_z_0_,
         SBOX_9_xor_1_Masked_z_0_, SBOX_9_not_3_Masked_z_0_,
         SBOX_9_not_2_Masked_z_0_, SBOX_9_xor_0_Masked_z_0_,
         SBOX_9_not_1_Masked_z_0_, SBOX_9_not_0_Masked_z_0_,
         SBOX_9_and_0_Masked_and_hpc_n6, SBOX_9_and_0_Masked_and_hpc_n5,
         SBOX_9_and_0_Masked_and_hpc_n4,
         SBOX_9_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_9_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_9_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_9_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_9_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_9_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_9_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_9_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_9_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_9_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_9_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_9_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_9_and_1_Masked_and_hpc_n6, SBOX_9_and_1_Masked_and_hpc_n5,
         SBOX_9_and_1_Masked_and_hpc_n4,
         SBOX_9_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_9_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_9_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_9_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_9_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_9_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_9_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_9_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_9_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_9_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_9_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_9_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_9_and_2_Masked_and_hpc_n6, SBOX_9_and_2_Masked_and_hpc_n5,
         SBOX_9_and_2_Masked_and_hpc_n4,
         SBOX_9_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_9_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_9_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_9_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_9_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_9_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_9_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_9_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_9_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_9_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_9_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_9_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_9_and_3_Masked_and_hpc_n6, SBOX_9_and_3_Masked_and_hpc_n5,
         SBOX_9_and_3_Masked_and_hpc_n4,
         SBOX_9_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_9_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_9_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_9_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_9_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_9_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_9_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_9_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_9_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_9_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_9_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_9_and_3_Masked_and_hpc_s_in_1__0_, SBOX_10_reg_0_s0_7,
         SBOX_10_reg_0_s1_7, SBOX_10_reg_0_s0_6, SBOX_10_reg_0_s1_6,
         SBOX_10_reg_0_s0_5, SBOX_10_reg_0_s1_5, SBOX_10_reg_0_s0_4,
         SBOX_10_reg_0_s1_4, SBOX_10_reg_0_s0_3, SBOX_10_reg_0_s1_3,
         SBOX_10_reg_0_s0_2, SBOX_10_reg_0_s1_2, SBOX_10_reg_0_s0_1,
         SBOX_10_reg_0_s1_1, SBOX_10_reg_0_s0, SBOX_10_reg_0_s1, SBOX_10__s0_0,
         SBOX_10__s0_3_, SBOX_10__s1_0, SBOX_10_not_5_Masked_z_0_,
         SBOX_10_xor_1_Masked_z_0_, SBOX_10_not_3_Masked_z_0_,
         SBOX_10_not_2_Masked_z_0_, SBOX_10_xor_0_Masked_z_0_,
         SBOX_10_not_1_Masked_z_0_, SBOX_10_not_0_Masked_z_0_,
         SBOX_10_and_0_Masked_and_hpc_n6, SBOX_10_and_0_Masked_and_hpc_n5,
         SBOX_10_and_0_Masked_and_hpc_n4,
         SBOX_10_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_10_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_10_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_10_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_10_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_10_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_10_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_10_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_10_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_10_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_10_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_10_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_10_and_1_Masked_and_hpc_n6, SBOX_10_and_1_Masked_and_hpc_n5,
         SBOX_10_and_1_Masked_and_hpc_n4,
         SBOX_10_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_10_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_10_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_10_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_10_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_10_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_10_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_10_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_10_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_10_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_10_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_10_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_10_and_2_Masked_and_hpc_n6, SBOX_10_and_2_Masked_and_hpc_n5,
         SBOX_10_and_2_Masked_and_hpc_n4,
         SBOX_10_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_10_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_10_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_10_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_10_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_10_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_10_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_10_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_10_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_10_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_10_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_10_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_10_and_3_Masked_and_hpc_n6, SBOX_10_and_3_Masked_and_hpc_n5,
         SBOX_10_and_3_Masked_and_hpc_n4,
         SBOX_10_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_10_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_10_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_10_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_10_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_10_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_10_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_10_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_10_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_10_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_10_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_10_and_3_Masked_and_hpc_s_in_1__0_, SBOX_11_reg_0_s0_7,
         SBOX_11_reg_0_s1_7, SBOX_11_reg_0_s0_6, SBOX_11_reg_0_s1_6,
         SBOX_11_reg_0_s0_5, SBOX_11_reg_0_s1_5, SBOX_11_reg_0_s0_4,
         SBOX_11_reg_0_s1_4, SBOX_11_reg_0_s0_3, SBOX_11_reg_0_s1_3,
         SBOX_11_reg_0_s0_2, SBOX_11_reg_0_s1_2, SBOX_11_reg_0_s0_1,
         SBOX_11_reg_0_s1_1, SBOX_11_reg_0_s0, SBOX_11_reg_0_s1, SBOX_11__s0_0,
         SBOX_11__s0_3_, SBOX_11__s1_0, SBOX_11_not_5_Masked_z_0_,
         SBOX_11_xor_1_Masked_z_0_, SBOX_11_not_3_Masked_z_0_,
         SBOX_11_not_2_Masked_z_0_, SBOX_11_xor_0_Masked_z_0_,
         SBOX_11_not_1_Masked_z_0_, SBOX_11_not_0_Masked_z_0_,
         SBOX_11_and_0_Masked_and_hpc_n6, SBOX_11_and_0_Masked_and_hpc_n5,
         SBOX_11_and_0_Masked_and_hpc_n4,
         SBOX_11_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_11_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_11_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_11_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_11_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_11_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_11_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_11_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_11_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_11_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_11_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_11_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_11_and_1_Masked_and_hpc_n6, SBOX_11_and_1_Masked_and_hpc_n5,
         SBOX_11_and_1_Masked_and_hpc_n4,
         SBOX_11_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_11_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_11_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_11_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_11_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_11_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_11_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_11_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_11_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_11_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_11_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_11_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_11_and_2_Masked_and_hpc_n6, SBOX_11_and_2_Masked_and_hpc_n5,
         SBOX_11_and_2_Masked_and_hpc_n4,
         SBOX_11_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_11_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_11_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_11_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_11_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_11_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_11_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_11_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_11_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_11_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_11_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_11_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_11_and_3_Masked_and_hpc_n6, SBOX_11_and_3_Masked_and_hpc_n5,
         SBOX_11_and_3_Masked_and_hpc_n4,
         SBOX_11_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_11_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_11_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_11_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_11_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_11_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_11_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_11_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_11_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_11_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_11_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_11_and_3_Masked_and_hpc_s_in_1__0_, SBOX_12_reg_0_s0_7,
         SBOX_12_reg_0_s1_7, SBOX_12_reg_0_s0_6, SBOX_12_reg_0_s1_6,
         SBOX_12_reg_0_s0_5, SBOX_12_reg_0_s1_5, SBOX_12_reg_0_s0_4,
         SBOX_12_reg_0_s1_4, SBOX_12_reg_0_s0_3, SBOX_12_reg_0_s1_3,
         SBOX_12_reg_0_s0_2, SBOX_12_reg_0_s1_2, SBOX_12_reg_0_s0_1,
         SBOX_12_reg_0_s1_1, SBOX_12_reg_0_s0, SBOX_12_reg_0_s1, SBOX_12__s0_0,
         SBOX_12__s0_3_, SBOX_12__s1_0, SBOX_12_not_5_Masked_z_0_,
         SBOX_12_xor_1_Masked_z_0_, SBOX_12_not_3_Masked_z_0_,
         SBOX_12_not_2_Masked_z_0_, SBOX_12_xor_0_Masked_z_0_,
         SBOX_12_not_1_Masked_z_0_, SBOX_12_not_0_Masked_z_0_,
         SBOX_12_and_0_Masked_and_hpc_n6, SBOX_12_and_0_Masked_and_hpc_n5,
         SBOX_12_and_0_Masked_and_hpc_n4,
         SBOX_12_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_12_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_12_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_12_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_12_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_12_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_12_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_12_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_12_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_12_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_12_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_12_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_12_and_1_Masked_and_hpc_n6, SBOX_12_and_1_Masked_and_hpc_n5,
         SBOX_12_and_1_Masked_and_hpc_n4,
         SBOX_12_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_12_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_12_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_12_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_12_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_12_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_12_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_12_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_12_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_12_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_12_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_12_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_12_and_2_Masked_and_hpc_n6, SBOX_12_and_2_Masked_and_hpc_n5,
         SBOX_12_and_2_Masked_and_hpc_n4,
         SBOX_12_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_12_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_12_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_12_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_12_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_12_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_12_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_12_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_12_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_12_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_12_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_12_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_12_and_3_Masked_and_hpc_n6, SBOX_12_and_3_Masked_and_hpc_n5,
         SBOX_12_and_3_Masked_and_hpc_n4,
         SBOX_12_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_12_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_12_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_12_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_12_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_12_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_12_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_12_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_12_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_12_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_12_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_12_and_3_Masked_and_hpc_s_in_1__0_, SBOX_13_reg_0_s0_7,
         SBOX_13_reg_0_s1_7, SBOX_13_reg_0_s0_6, SBOX_13_reg_0_s1_6,
         SBOX_13_reg_0_s0_5, SBOX_13_reg_0_s1_5, SBOX_13_reg_0_s0_4,
         SBOX_13_reg_0_s1_4, SBOX_13_reg_0_s0_3, SBOX_13_reg_0_s1_3,
         SBOX_13_reg_0_s0_2, SBOX_13_reg_0_s1_2, SBOX_13_reg_0_s0_1,
         SBOX_13_reg_0_s1_1, SBOX_13_reg_0_s0, SBOX_13_reg_0_s1, SBOX_13__s0_0,
         SBOX_13__s0_3_, SBOX_13__s1_0, SBOX_13_not_5_Masked_z_0_,
         SBOX_13_xor_1_Masked_z_0_, SBOX_13_not_3_Masked_z_0_,
         SBOX_13_not_2_Masked_z_0_, SBOX_13_xor_0_Masked_z_0_,
         SBOX_13_not_1_Masked_z_0_, SBOX_13_not_0_Masked_z_0_,
         SBOX_13_and_0_Masked_and_hpc_n6, SBOX_13_and_0_Masked_and_hpc_n5,
         SBOX_13_and_0_Masked_and_hpc_n4,
         SBOX_13_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_13_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_13_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_13_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_13_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_13_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_13_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_13_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_13_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_13_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_13_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_13_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_13_and_1_Masked_and_hpc_n6, SBOX_13_and_1_Masked_and_hpc_n5,
         SBOX_13_and_1_Masked_and_hpc_n4,
         SBOX_13_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_13_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_13_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_13_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_13_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_13_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_13_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_13_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_13_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_13_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_13_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_13_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_13_and_2_Masked_and_hpc_n6, SBOX_13_and_2_Masked_and_hpc_n5,
         SBOX_13_and_2_Masked_and_hpc_n4,
         SBOX_13_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_13_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_13_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_13_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_13_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_13_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_13_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_13_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_13_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_13_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_13_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_13_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_13_and_3_Masked_and_hpc_n6, SBOX_13_and_3_Masked_and_hpc_n5,
         SBOX_13_and_3_Masked_and_hpc_n4,
         SBOX_13_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_13_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_13_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_13_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_13_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_13_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_13_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_13_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_13_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_13_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_13_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_13_and_3_Masked_and_hpc_s_in_1__0_, SBOX_14_reg_0_s0_7,
         SBOX_14_reg_0_s1_7, SBOX_14_reg_0_s0_6, SBOX_14_reg_0_s1_6,
         SBOX_14_reg_0_s0_5, SBOX_14_reg_0_s1_5, SBOX_14_reg_0_s0_4,
         SBOX_14_reg_0_s1_4, SBOX_14_reg_0_s0_3, SBOX_14_reg_0_s1_3,
         SBOX_14_reg_0_s0_2, SBOX_14_reg_0_s1_2, SBOX_14_reg_0_s0_1,
         SBOX_14_reg_0_s1_1, SBOX_14_reg_0_s0, SBOX_14_reg_0_s1, SBOX_14__s0_0,
         SBOX_14__s0_3_, SBOX_14__s1_0, SBOX_14_not_5_Masked_z_0_,
         SBOX_14_xor_1_Masked_z_0_, SBOX_14_not_3_Masked_z_0_,
         SBOX_14_not_2_Masked_z_0_, SBOX_14_xor_0_Masked_z_0_,
         SBOX_14_not_1_Masked_z_0_, SBOX_14_not_0_Masked_z_0_,
         SBOX_14_and_0_Masked_and_hpc_n6, SBOX_14_and_0_Masked_and_hpc_n5,
         SBOX_14_and_0_Masked_and_hpc_n4,
         SBOX_14_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_14_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_14_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_14_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_14_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_14_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_14_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_14_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_14_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_14_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_14_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_14_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_14_and_1_Masked_and_hpc_n6, SBOX_14_and_1_Masked_and_hpc_n5,
         SBOX_14_and_1_Masked_and_hpc_n4,
         SBOX_14_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_14_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_14_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_14_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_14_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_14_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_14_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_14_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_14_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_14_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_14_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_14_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_14_and_2_Masked_and_hpc_n6, SBOX_14_and_2_Masked_and_hpc_n5,
         SBOX_14_and_2_Masked_and_hpc_n4,
         SBOX_14_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_14_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_14_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_14_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_14_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_14_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_14_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_14_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_14_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_14_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_14_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_14_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_14_and_3_Masked_and_hpc_n6, SBOX_14_and_3_Masked_and_hpc_n5,
         SBOX_14_and_3_Masked_and_hpc_n4,
         SBOX_14_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_14_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_14_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_14_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_14_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_14_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_14_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_14_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_14_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_14_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_14_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_14_and_3_Masked_and_hpc_s_in_1__0_, SBOX_15_reg_0_s0_7,
         SBOX_15_reg_0_s1_7, SBOX_15_reg_0_s0_6, SBOX_15_reg_0_s1_6,
         SBOX_15_reg_0_s0_5, SBOX_15_reg_0_s1_5, SBOX_15_reg_0_s0_4,
         SBOX_15_reg_0_s1_4, SBOX_15_reg_0_s0_3, SBOX_15_reg_0_s1_3,
         SBOX_15_reg_0_s0_2, SBOX_15_reg_0_s1_2, SBOX_15_reg_0_s0_1,
         SBOX_15_reg_0_s1_1, SBOX_15_reg_0_s0, SBOX_15_reg_0_s1, SBOX_15__s0_0,
         SBOX_15__s0_3_, SBOX_15__s1_0, SBOX_15_not_5_Masked_z_0_,
         SBOX_15_xor_1_Masked_z_0_, SBOX_15_not_3_Masked_z_0_,
         SBOX_15_not_2_Masked_z_0_, SBOX_15_xor_0_Masked_z_0_,
         SBOX_15_not_1_Masked_z_0_, SBOX_15_not_0_Masked_z_0_,
         SBOX_15_and_0_Masked_and_hpc_n6, SBOX_15_and_0_Masked_and_hpc_n5,
         SBOX_15_and_0_Masked_and_hpc_n4,
         SBOX_15_and_0_Masked_and_hpc_p_0_out_0__1_,
         SBOX_15_and_0_Masked_and_hpc_p_0_out_1__0_,
         SBOX_15_and_0_Masked_and_hpc_p_1_out_0__1_,
         SBOX_15_and_0_Masked_and_hpc_p_1_out_1__0_,
         SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_15_and_0_Masked_and_hpc_p_1_in_0__1_,
         SBOX_15_and_0_Masked_and_hpc_p_1_in_1__0_,
         SBOX_15_and_0_Masked_and_hpc_s_out_0__1_,
         SBOX_15_and_0_Masked_and_hpc_s_out_1__0_,
         SBOX_15_and_0_Masked_and_hpc_p_0_in_0__1_,
         SBOX_15_and_0_Masked_and_hpc_p_0_in_1__0_,
         SBOX_15_and_0_Masked_and_hpc_s_in_0__1_,
         SBOX_15_and_0_Masked_and_hpc_s_in_1__0_,
         SBOX_15_and_1_Masked_and_hpc_n6, SBOX_15_and_1_Masked_and_hpc_n5,
         SBOX_15_and_1_Masked_and_hpc_n4,
         SBOX_15_and_1_Masked_and_hpc_p_0_out_0__1_,
         SBOX_15_and_1_Masked_and_hpc_p_0_out_1__0_,
         SBOX_15_and_1_Masked_and_hpc_p_1_out_0__1_,
         SBOX_15_and_1_Masked_and_hpc_p_1_out_1__0_,
         SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_15_and_1_Masked_and_hpc_p_1_in_0__1_,
         SBOX_15_and_1_Masked_and_hpc_p_1_in_1__0_,
         SBOX_15_and_1_Masked_and_hpc_s_out_0__1_,
         SBOX_15_and_1_Masked_and_hpc_s_out_1__0_,
         SBOX_15_and_1_Masked_and_hpc_p_0_in_0__1_,
         SBOX_15_and_1_Masked_and_hpc_p_0_in_1__0_,
         SBOX_15_and_1_Masked_and_hpc_s_in_0__1_,
         SBOX_15_and_1_Masked_and_hpc_s_in_1__0_,
         SBOX_15_and_2_Masked_and_hpc_n6, SBOX_15_and_2_Masked_and_hpc_n5,
         SBOX_15_and_2_Masked_and_hpc_n4,
         SBOX_15_and_2_Masked_and_hpc_p_0_out_0__1_,
         SBOX_15_and_2_Masked_and_hpc_p_0_out_1__0_,
         SBOX_15_and_2_Masked_and_hpc_p_1_out_0__1_,
         SBOX_15_and_2_Masked_and_hpc_p_1_out_1__0_,
         SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_15_and_2_Masked_and_hpc_p_1_in_0__1_,
         SBOX_15_and_2_Masked_and_hpc_p_1_in_1__0_,
         SBOX_15_and_2_Masked_and_hpc_s_out_0__1_,
         SBOX_15_and_2_Masked_and_hpc_s_out_1__0_,
         SBOX_15_and_2_Masked_and_hpc_p_0_in_0__1_,
         SBOX_15_and_2_Masked_and_hpc_p_0_in_1__0_,
         SBOX_15_and_2_Masked_and_hpc_s_in_0__1_,
         SBOX_15_and_2_Masked_and_hpc_s_in_1__0_,
         SBOX_15_and_3_Masked_and_hpc_n6, SBOX_15_and_3_Masked_and_hpc_n5,
         SBOX_15_and_3_Masked_and_hpc_n4,
         SBOX_15_and_3_Masked_and_hpc_p_0_out_0__1_,
         SBOX_15_and_3_Masked_and_hpc_p_0_out_1__0_,
         SBOX_15_and_3_Masked_and_hpc_p_1_out_0__1_,
         SBOX_15_and_3_Masked_and_hpc_p_1_out_1__0_,
         SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_0__1_,
         SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_1__0_,
         SBOX_15_and_3_Masked_and_hpc_p_1_in_0__1_,
         SBOX_15_and_3_Masked_and_hpc_p_1_in_1__0_,
         SBOX_15_and_3_Masked_and_hpc_s_out_0__1_,
         SBOX_15_and_3_Masked_and_hpc_s_out_1__0_,
         SBOX_15_and_3_Masked_and_hpc_p_0_in_0__1_,
         SBOX_15_and_3_Masked_and_hpc_p_0_in_1__0_,
         SBOX_15_and_3_Masked_and_hpc_s_in_0__1_,
         SBOX_15_and_3_Masked_and_hpc_s_in_1__0_, KA1_n7, KA1_n6, KA1_n5,
         KA1_n4, KA1_n3, KA1_n2;
  wire   [127:29] SUBSTITUTE2;
  wire   [111:0] SHIFTROWS;
  wire   [1:0] SBOX_0_xor_3_Masked_x;
  wire   [1:0] SBOX_0_and_3_Masked_z;
  wire   [1:0] SBOX_0_not_7_Masked_z;
  wire   [1:0] SBOX_0_not_6_Masked_z;
  wire   [1:0] SBOX_0_xor_2_Masked_x;
  wire   [1:0] SBOX_0_and_2_Masked_z;
  wire   [1:0] SBOX_0_not_4_Masked_z;
  wire   [1:0] SBOX_0_xor_1_Masked_x;
  wire   [1:0] SBOX_0_and_1_Masked_z;
  wire   [1:0] SBOX_0_xor_0_Masked_x;
  wire   [1:0] SBOX_0_and_0_Masked_z;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_0_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_0_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_0_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_0_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_1_xor_3_Masked_x;
  wire   [1:0] SBOX_1_and_3_Masked_z;
  wire   [1:0] SBOX_1_not_7_Masked_z;
  wire   [1:0] SBOX_1_not_6_Masked_z;
  wire   [1:0] SBOX_1_xor_2_Masked_x;
  wire   [1:0] SBOX_1_and_2_Masked_z;
  wire   [1:0] SBOX_1_not_4_Masked_z;
  wire   [1:0] SBOX_1_xor_1_Masked_x;
  wire   [1:0] SBOX_1_and_1_Masked_z;
  wire   [1:0] SBOX_1_xor_0_Masked_x;
  wire   [1:0] SBOX_1_and_0_Masked_z;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_1_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_1_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_1_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_1_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_2_xor_3_Masked_x;
  wire   [1:0] SBOX_2_and_3_Masked_z;
  wire   [1:0] SBOX_2_not_7_Masked_z;
  wire   [1:0] SBOX_2_not_6_Masked_z;
  wire   [1:0] SBOX_2_xor_2_Masked_x;
  wire   [1:0] SBOX_2_and_2_Masked_z;
  wire   [1:0] SBOX_2_not_4_Masked_z;
  wire   [1:0] SBOX_2_xor_1_Masked_x;
  wire   [1:0] SBOX_2_and_1_Masked_z;
  wire   [1:0] SBOX_2_xor_0_Masked_x;
  wire   [1:0] SBOX_2_and_0_Masked_z;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_2_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_2_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_2_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_2_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_3_xor_3_Masked_x;
  wire   [1:0] SBOX_3_and_3_Masked_z;
  wire   [1:0] SBOX_3_not_7_Masked_z;
  wire   [1:0] SBOX_3_not_6_Masked_z;
  wire   [1:0] SBOX_3_xor_2_Masked_x;
  wire   [1:0] SBOX_3_and_2_Masked_z;
  wire   [1:0] SBOX_3_not_4_Masked_z;
  wire   [1:0] SBOX_3_xor_1_Masked_x;
  wire   [1:0] SBOX_3_and_1_Masked_z;
  wire   [1:0] SBOX_3_xor_0_Masked_x;
  wire   [1:0] SBOX_3_and_0_Masked_z;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_3_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_3_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_3_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_3_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_4_xor_3_Masked_x;
  wire   [1:0] SBOX_4_and_3_Masked_z;
  wire   [1:0] SBOX_4_not_7_Masked_z;
  wire   [1:0] SBOX_4_not_6_Masked_z;
  wire   [1:0] SBOX_4_xor_2_Masked_x;
  wire   [1:0] SBOX_4_and_2_Masked_z;
  wire   [1:0] SBOX_4_not_4_Masked_z;
  wire   [1:0] SBOX_4_xor_1_Masked_x;
  wire   [1:0] SBOX_4_and_1_Masked_z;
  wire   [1:0] SBOX_4_xor_0_Masked_x;
  wire   [1:0] SBOX_4_and_0_Masked_z;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_4_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_4_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_4_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_4_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_5_xor_3_Masked_x;
  wire   [1:0] SBOX_5_and_3_Masked_z;
  wire   [1:0] SBOX_5_not_7_Masked_z;
  wire   [1:0] SBOX_5_not_6_Masked_z;
  wire   [1:0] SBOX_5_xor_2_Masked_x;
  wire   [1:0] SBOX_5_and_2_Masked_z;
  wire   [1:0] SBOX_5_not_4_Masked_z;
  wire   [1:0] SBOX_5_xor_1_Masked_x;
  wire   [1:0] SBOX_5_and_1_Masked_z;
  wire   [1:0] SBOX_5_xor_0_Masked_x;
  wire   [1:0] SBOX_5_and_0_Masked_z;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_5_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_5_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_5_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_5_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_6_xor_3_Masked_x;
  wire   [1:0] SBOX_6_and_3_Masked_z;
  wire   [1:0] SBOX_6_not_7_Masked_z;
  wire   [1:0] SBOX_6_not_6_Masked_z;
  wire   [1:0] SBOX_6_xor_2_Masked_x;
  wire   [1:0] SBOX_6_and_2_Masked_z;
  wire   [1:0] SBOX_6_not_4_Masked_z;
  wire   [1:0] SBOX_6_xor_1_Masked_x;
  wire   [1:0] SBOX_6_and_1_Masked_z;
  wire   [1:0] SBOX_6_xor_0_Masked_x;
  wire   [1:0] SBOX_6_and_0_Masked_z;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_6_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_6_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_6_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_6_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_7_xor_3_Masked_x;
  wire   [1:0] SBOX_7_and_3_Masked_z;
  wire   [1:0] SBOX_7_not_7_Masked_z;
  wire   [1:0] SBOX_7_not_6_Masked_z;
  wire   [1:0] SBOX_7_xor_2_Masked_x;
  wire   [1:0] SBOX_7_and_2_Masked_z;
  wire   [1:0] SBOX_7_not_4_Masked_z;
  wire   [1:0] SBOX_7_xor_1_Masked_x;
  wire   [1:0] SBOX_7_and_1_Masked_z;
  wire   [1:0] SBOX_7_xor_0_Masked_x;
  wire   [1:0] SBOX_7_and_0_Masked_z;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_7_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_7_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_7_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_7_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_8_xor_3_Masked_x;
  wire   [1:0] SBOX_8_and_3_Masked_z;
  wire   [1:0] SBOX_8_not_7_Masked_z;
  wire   [1:0] SBOX_8_not_6_Masked_z;
  wire   [1:0] SBOX_8_xor_2_Masked_x;
  wire   [1:0] SBOX_8_and_2_Masked_z;
  wire   [1:0] SBOX_8_not_4_Masked_z;
  wire   [1:0] SBOX_8_xor_1_Masked_x;
  wire   [1:0] SBOX_8_and_1_Masked_z;
  wire   [1:0] SBOX_8_xor_0_Masked_x;
  wire   [1:0] SBOX_8_and_0_Masked_z;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_8_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_8_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_8_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_8_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_9_xor_3_Masked_x;
  wire   [1:0] SBOX_9_and_3_Masked_z;
  wire   [1:0] SBOX_9_not_7_Masked_z;
  wire   [1:0] SBOX_9_not_6_Masked_z;
  wire   [1:0] SBOX_9_xor_2_Masked_x;
  wire   [1:0] SBOX_9_and_2_Masked_z;
  wire   [1:0] SBOX_9_not_4_Masked_z;
  wire   [1:0] SBOX_9_xor_1_Masked_x;
  wire   [1:0] SBOX_9_and_1_Masked_z;
  wire   [1:0] SBOX_9_xor_0_Masked_x;
  wire   [1:0] SBOX_9_and_0_Masked_z;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_9_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_9_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_9_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_9_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_10_xor_3_Masked_x;
  wire   [1:0] SBOX_10_and_3_Masked_z;
  wire   [1:0] SBOX_10_not_7_Masked_z;
  wire   [1:0] SBOX_10_not_6_Masked_z;
  wire   [1:0] SBOX_10_xor_2_Masked_x;
  wire   [1:0] SBOX_10_and_2_Masked_z;
  wire   [1:0] SBOX_10_not_4_Masked_z;
  wire   [1:0] SBOX_10_xor_1_Masked_x;
  wire   [1:0] SBOX_10_and_1_Masked_z;
  wire   [1:0] SBOX_10_xor_0_Masked_x;
  wire   [1:0] SBOX_10_and_0_Masked_z;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_10_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_10_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_10_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_10_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_11_xor_3_Masked_x;
  wire   [1:0] SBOX_11_and_3_Masked_z;
  wire   [1:0] SBOX_11_not_7_Masked_z;
  wire   [1:0] SBOX_11_not_6_Masked_z;
  wire   [1:0] SBOX_11_xor_2_Masked_x;
  wire   [1:0] SBOX_11_and_2_Masked_z;
  wire   [1:0] SBOX_11_not_4_Masked_z;
  wire   [1:0] SBOX_11_xor_1_Masked_x;
  wire   [1:0] SBOX_11_and_1_Masked_z;
  wire   [1:0] SBOX_11_xor_0_Masked_x;
  wire   [1:0] SBOX_11_and_0_Masked_z;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_11_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_11_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_11_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_11_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_12_xor_3_Masked_x;
  wire   [1:0] SBOX_12_and_3_Masked_z;
  wire   [1:0] SBOX_12_not_7_Masked_z;
  wire   [1:0] SBOX_12_not_6_Masked_z;
  wire   [1:0] SBOX_12_xor_2_Masked_x;
  wire   [1:0] SBOX_12_and_2_Masked_z;
  wire   [1:0] SBOX_12_not_4_Masked_z;
  wire   [1:0] SBOX_12_xor_1_Masked_x;
  wire   [1:0] SBOX_12_and_1_Masked_z;
  wire   [1:0] SBOX_12_xor_0_Masked_x;
  wire   [1:0] SBOX_12_and_0_Masked_z;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_12_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_12_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_12_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_12_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_13_xor_3_Masked_x;
  wire   [1:0] SBOX_13_and_3_Masked_z;
  wire   [1:0] SBOX_13_not_7_Masked_z;
  wire   [1:0] SBOX_13_not_6_Masked_z;
  wire   [1:0] SBOX_13_xor_2_Masked_x;
  wire   [1:0] SBOX_13_and_2_Masked_z;
  wire   [1:0] SBOX_13_not_4_Masked_z;
  wire   [1:0] SBOX_13_xor_1_Masked_x;
  wire   [1:0] SBOX_13_and_1_Masked_z;
  wire   [1:0] SBOX_13_xor_0_Masked_x;
  wire   [1:0] SBOX_13_and_0_Masked_z;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_13_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_13_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_13_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_13_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_14_xor_3_Masked_x;
  wire   [1:0] SBOX_14_and_3_Masked_z;
  wire   [1:0] SBOX_14_not_7_Masked_z;
  wire   [1:0] SBOX_14_not_6_Masked_z;
  wire   [1:0] SBOX_14_xor_2_Masked_x;
  wire   [1:0] SBOX_14_and_2_Masked_z;
  wire   [1:0] SBOX_14_not_4_Masked_z;
  wire   [1:0] SBOX_14_xor_1_Masked_x;
  wire   [1:0] SBOX_14_and_1_Masked_z;
  wire   [1:0] SBOX_14_xor_0_Masked_x;
  wire   [1:0] SBOX_14_and_0_Masked_z;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_14_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_14_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_14_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_14_and_3_Masked_and_hpc_mul;
  wire   [1:0] SBOX_15_xor_3_Masked_x;
  wire   [1:0] SBOX_15_and_3_Masked_z;
  wire   [1:0] SBOX_15_not_7_Masked_z;
  wire   [1:0] SBOX_15_not_6_Masked_z;
  wire   [1:0] SBOX_15_xor_2_Masked_x;
  wire   [1:0] SBOX_15_and_2_Masked_z;
  wire   [1:0] SBOX_15_not_4_Masked_z;
  wire   [1:0] SBOX_15_xor_1_Masked_x;
  wire   [1:0] SBOX_15_and_1_Masked_z;
  wire   [1:0] SBOX_15_xor_0_Masked_x;
  wire   [1:0] SBOX_15_and_0_Masked_z;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_z;
  wire   [1:0] SBOX_15_and_0_Masked_and_hpc_mul;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_z;
  wire   [1:0] SBOX_15_and_1_Masked_and_hpc_mul;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_z;
  wire   [1:0] SBOX_15_and_2_Masked_and_hpc_mul;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_a_reg;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_mul_s1_out;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_z;
  wire   [1:0] SBOX_15_and_3_Masked_and_hpc_mul;

  DFF_X1 SBOX_0_reg_1_s0_7_reg ( .D(SBOX_0_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_0_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_7_reg ( .D(SBOX_0_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_0_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_6_reg ( .D(SBOX_0_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_0_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_6_reg ( .D(SBOX_0_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_0_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_5_reg ( .D(SBOX_0_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[6]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_5_reg ( .D(SBOX_0_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[70]), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_4_reg ( .D(SBOX_0_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[7]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_4_reg ( .D(SBOX_0_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[71]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_6_reg ( .D(SBOX_0__s0_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_3_reg ( .D(SBOX_0_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_0__s0_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_6_reg ( .D(SBOX_0__s1_0), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_3_reg ( .D(SBOX_0_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_0__s1_0), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_5_reg ( .D(SBOX_0_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_5_reg ( .D(SBOX_0_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_2_reg ( .D(SBOX_0_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_0_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_2_reg ( .D(SBOX_0_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_0_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_4_reg ( .D(SBOX_0_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_4_reg ( .D(SBOX_0_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_1_reg ( .D(SBOX_0_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_0_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_1_reg ( .D(SBOX_0_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_0_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_7_reg ( .D(SBOX_0__s0_3_), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_0_reg_1_s0_reg ( .D(SBOX_0_reg_0_s0), .CK(CLK), .Q(SBOX_0__s0_3_), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_7_reg ( .D(SBOX_0_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_0_reg_1_s1_reg ( .D(SBOX_0_reg_0_s1), .CK(CLK), .Q(
        SBOX_0_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_2_reg ( .D(SHARE2_IN[3]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_2_reg ( .D(SHARE1_IN[3]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_3_reg ( .D(SHARE2_IN[2]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_1_reg ( .D(SHARE1_IN[0]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_3_reg ( .D(SHARE1_IN[2]), .CK(CLK), .Q(
        SBOX_0_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_0_reg_0_s1_1_reg ( .D(SHARE2_IN[0]), .CK(CLK), .Q(
        SBOX_0_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_0_reg_0_s0_reg ( .D(SHARE1_IN[1]), .CK(CLK), .Q(SBOX_0_reg_0_s0), 
        .QN() );
  DFF_X1 SBOX_0_reg_0_s1_reg ( .D(SHARE2_IN[1]), .CK(CLK), .Q(SBOX_0_reg_0_s1), 
        .QN() );
  INV_X1 SBOX_0_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[3]), .ZN(
        SBOX_0_not_0_Masked_z_0_) );
  INV_X1 SBOX_0_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[2]), .ZN(
        SBOX_0_not_1_Masked_z_0_) );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[2]), .A2(
        SHARE2_IN[3]), .ZN(SBOX_0_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_0_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[3]), .A2(
        SBOX_0_and_0_Masked_and_hpc_n1), .ZN(
        SBOX_0_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_0_and_0_Masked_and_hpc_U12 ( .A(SBOX_0_and_0_Masked_and_hpc_n1), .B(SHARE2_IN[2]), .ZN(SBOX_0_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_0_and_0_Masked_and_hpc_U11 ( .A(RAND[0]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_n1) );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_0_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_0_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_0_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_0_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_U8 ( .A(SBOX_0_and_0_Masked_and_hpc_z[1]), .B(SBOX_0_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_0_and_0_Masked_and_hpc_n2) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_0_and_0_Masked_and_hpc_n2), .Z(SBOX_0_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_U6 ( .A(SBOX_0_and_0_Masked_and_hpc_z[0]), .B(SBOX_0_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_0_and_0_Masked_and_hpc_n3) );
  XOR2_X1 SBOX_0_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_0_and_0_Masked_and_hpc_n3), .Z(SBOX_0_and_0_Masked_z[0]) );
  AND2_X1 SBOX_0_and_0_Masked_and_hpc_U4 ( .A1(SBOX_0_not_1_Masked_z_0_), .A2(
        SBOX_0_not_0_Masked_z_0_), .ZN(SBOX_0_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_0_and_0_Masked_and_hpc_U3 ( .A1(SBOX_0_not_0_Masked_z_0_), .A2(
        SBOX_0_and_0_Masked_and_hpc_n1), .ZN(
        SBOX_0_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_0_and_0_Masked_and_hpc_U2 ( .A(SBOX_0_and_0_Masked_and_hpc_n1), 
        .B(SBOX_0_not_1_Masked_z_0_), .ZN(
        SBOX_0_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_0_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[3]), .CK(CLK), .Q(SBOX_0_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_0_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_0_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_0_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_0_Masked_z[0]), 
        .B(SBOX_0_xor_0_Masked_x[0]), .Z(SBOX_0_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_0_Masked_z[1]), 
        .B(SBOX_0_xor_0_Masked_x[1]), .Z(SBOX_0_not_6_Masked_z[1]) );
  INV_X1 SBOX_0_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[2]), .ZN(
        SBOX_0_not_2_Masked_z_0_) );
  INV_X1 SBOX_0_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[1]), .ZN(
        SBOX_0_not_3_Masked_z_0_) );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[1]), .A2(
        SHARE2_IN[2]), .ZN(SBOX_0_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_0_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[2]), .A2(
        SBOX_0_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_0_and_1_Masked_and_hpc_U12 ( .A(SBOX_0_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[1]), .ZN(SBOX_0_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_0_and_1_Masked_and_hpc_U11 ( .A(RAND[1]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_0_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_0_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_0_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_0_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_U8 ( .A(SBOX_0_and_1_Masked_and_hpc_z[1]), .B(SBOX_0_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_0_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_0_and_1_Masked_and_hpc_n5), .Z(SBOX_0_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_U6 ( .A(SBOX_0_and_1_Masked_and_hpc_z[0]), .B(SBOX_0_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_0_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_0_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_0_and_1_Masked_and_hpc_n4), .Z(SBOX_0_and_1_Masked_z[0]) );
  AND2_X1 SBOX_0_and_1_Masked_and_hpc_U4 ( .A1(SBOX_0_not_3_Masked_z_0_), .A2(
        SBOX_0_not_2_Masked_z_0_), .ZN(SBOX_0_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_0_and_1_Masked_and_hpc_U3 ( .A1(SBOX_0_not_2_Masked_z_0_), .A2(
        SBOX_0_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_0_and_1_Masked_and_hpc_U2 ( .A(SBOX_0_and_1_Masked_and_hpc_n6), 
        .B(SBOX_0_not_3_Masked_z_0_), .ZN(
        SBOX_0_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_0_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[2]), .CK(CLK), .Q(SBOX_0_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_0_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_0_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_0_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_1_Masked_z[0]), 
        .B(SBOX_0_xor_1_Masked_x[0]), .Z(SBOX_0_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_0_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_1_Masked_z[1]), 
        .B(SBOX_0_xor_1_Masked_x[1]), .Z(SBOX_0_not_7_Masked_z[1]) );
  INV_X1 SBOX_0_not_4_Masked_not_hpc_U1 ( .A(SBOX_0__s0_3_), .ZN(
        SBOX_0_not_4_Masked_z[0]) );
  INV_X1 SBOX_0_not_5_Masked_not_hpc_U1 ( .A(SBOX_0_xor_0_Masked_z_0_), .ZN(
        SBOX_0_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_0_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_0_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_0_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_0_and_2_Masked_and_hpc_n4), .Z(SBOX_0_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_0_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_0_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_0_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_0_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_0_and_2_Masked_and_hpc_n5), .Z(SBOX_0_and_2_Masked_z[1]) );
  INV_X1 SBOX_0_and_2_Masked_and_hpc_U10 ( .A(RAND[2]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_n6) );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_0_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_0_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_0_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_0_and_2_Masked_and_hpc_U7 ( .A1(SBOX_0_not_4_Masked_z[1]), .A2(
        SBOX_0_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_U6 ( .A1(SBOX_0_not_6_Masked_z[1]), .A2(
        SBOX_0_not_4_Masked_z[1]), .ZN(SBOX_0_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_0_and_2_Masked_and_hpc_U5 ( .A1(SBOX_0_not_4_Masked_z[0]), .A2(
        SBOX_0_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_0_and_2_Masked_and_hpc_U4 ( .A1(SBOX_0_not_5_Masked_z_0_), .A2(
        SBOX_0_not_4_Masked_z[0]), .ZN(SBOX_0_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_0_and_2_Masked_and_hpc_U3 ( .A(SBOX_0_and_2_Masked_and_hpc_n6), 
        .B(SBOX_0_not_6_Masked_z[1]), .ZN(
        SBOX_0_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_0_and_2_Masked_and_hpc_U2 ( .A(SBOX_0_and_2_Masked_and_hpc_n6), 
        .B(SBOX_0_not_5_Masked_z_0_), .ZN(
        SBOX_0_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_0_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_0_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_0_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_0_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_0_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_2_Masked_z[0]), 
        .B(SBOX_0_xor_2_Masked_x[0]), .Z(SHIFTROWS[5]) );
  XOR2_X1 SBOX_0_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_2_Masked_z[1]), 
        .B(SBOX_0_xor_2_Masked_x[1]), .Z(SHIFTROWS[69]) );
  INV_X1 SBOX_0_not_6_Masked_not_hpc_U1 ( .A(SBOX_0_xor_0_Masked_z_0_), .ZN(
        SBOX_0_not_6_Masked_z[0]) );
  INV_X1 SBOX_0_not_7_Masked_not_hpc_U1 ( .A(SBOX_0_xor_1_Masked_z_0_), .ZN(
        SBOX_0_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_0_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_0_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_0_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_0_and_3_Masked_and_hpc_n4), .Z(SBOX_0_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_0_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_0_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_0_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_0_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_0_and_3_Masked_and_hpc_n5), .Z(SBOX_0_and_3_Masked_z[1]) );
  INV_X1 SBOX_0_and_3_Masked_and_hpc_U10 ( .A(RAND[3]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_n6) );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_0_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_0_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_0_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_0_and_3_Masked_and_hpc_U7 ( .A1(SBOX_0_not_6_Masked_z[1]), .A2(
        SBOX_0_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_0_and_3_Masked_and_hpc_U6 ( .A(SBOX_0_and_3_Masked_and_hpc_n6), 
        .B(SBOX_0_not_7_Masked_z[1]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_U5 ( .A1(SBOX_0_not_7_Masked_z[1]), .A2(
        SBOX_0_not_6_Masked_z[1]), .ZN(SBOX_0_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_0_and_3_Masked_and_hpc_U4 ( .A1(SBOX_0_not_6_Masked_z[0]), .A2(
        SBOX_0_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_0_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_0_and_3_Masked_and_hpc_U3 ( .A(SBOX_0_and_3_Masked_and_hpc_n6), 
        .B(SBOX_0_not_7_Masked_z[0]), .ZN(
        SBOX_0_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_0_and_3_Masked_and_hpc_U2 ( .A1(SBOX_0_not_7_Masked_z[0]), .A2(
        SBOX_0_not_6_Masked_z[0]), .ZN(SBOX_0_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_0_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_0_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_0_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_0_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_0_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_0_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_0_and_3_Masked_z[0]), 
        .B(SBOX_0_xor_3_Masked_x[0]), .Z(SHIFTROWS[4]) );
  XOR2_X1 SBOX_0_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_0_and_3_Masked_z[1]), 
        .B(SBOX_0_xor_3_Masked_x[1]), .Z(SHIFTROWS[68]) );
  DFF_X1 SBOX_1_reg_1_s0_7_reg ( .D(SBOX_1_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_1_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_7_reg ( .D(SBOX_1_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_1_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_6_reg ( .D(SBOX_1_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_1_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_6_reg ( .D(SBOX_1_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_1_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_5_reg ( .D(SBOX_1_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[10]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_5_reg ( .D(SBOX_1_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[74]), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_4_reg ( .D(SBOX_1_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[11]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_4_reg ( .D(SBOX_1_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[75]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_6_reg ( .D(SBOX_1__s0_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_3_reg ( .D(SBOX_1_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_1__s0_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_6_reg ( .D(SBOX_1__s1_0), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_3_reg ( .D(SBOX_1_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_1__s1_0), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_5_reg ( .D(SBOX_1_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_5_reg ( .D(SBOX_1_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_2_reg ( .D(SBOX_1_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_1_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_2_reg ( .D(SBOX_1_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_1_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_4_reg ( .D(SBOX_1_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_4_reg ( .D(SBOX_1_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_1_reg ( .D(SBOX_1_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_1_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_1_reg ( .D(SBOX_1_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_1_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_7_reg ( .D(SBOX_1__s0_3_), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_1_reg_1_s0_reg ( .D(SBOX_1_reg_0_s0), .CK(CLK), .Q(SBOX_1__s0_3_), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_7_reg ( .D(SBOX_1_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_1_reg_1_s1_reg ( .D(SBOX_1_reg_0_s1), .CK(CLK), .Q(
        SBOX_1_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_2_reg ( .D(SHARE2_IN[7]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_2_reg ( .D(SHARE1_IN[7]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_3_reg ( .D(SHARE2_IN[6]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_1_reg ( .D(SHARE1_IN[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_3_reg ( .D(SHARE1_IN[6]), .CK(CLK), .Q(
        SBOX_1_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_1_reg_0_s1_1_reg ( .D(SHARE2_IN[4]), .CK(CLK), .Q(
        SBOX_1_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_1_reg_0_s0_reg ( .D(SHARE1_IN[5]), .CK(CLK), .Q(SBOX_1_reg_0_s0), 
        .QN() );
  DFF_X1 SBOX_1_reg_0_s1_reg ( .D(SHARE2_IN[5]), .CK(CLK), .Q(SBOX_1_reg_0_s1), 
        .QN() );
  INV_X1 SBOX_1_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[7]), .ZN(
        SBOX_1_not_0_Masked_z_0_) );
  INV_X1 SBOX_1_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[6]), .ZN(
        SBOX_1_not_1_Masked_z_0_) );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[6]), .A2(
        SHARE2_IN[7]), .ZN(SBOX_1_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_1_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[7]), .A2(
        SBOX_1_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_1_and_0_Masked_and_hpc_U12 ( .A(SBOX_1_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[6]), .ZN(SBOX_1_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_1_and_0_Masked_and_hpc_U11 ( .A(RAND[4]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_1_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_1_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_1_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_1_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_U8 ( .A(SBOX_1_and_0_Masked_and_hpc_z[1]), .B(SBOX_1_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_1_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_1_and_0_Masked_and_hpc_n5), .Z(SBOX_1_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_U6 ( .A(SBOX_1_and_0_Masked_and_hpc_z[0]), .B(SBOX_1_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_1_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_1_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_1_and_0_Masked_and_hpc_n4), .Z(SBOX_1_and_0_Masked_z[0]) );
  AND2_X1 SBOX_1_and_0_Masked_and_hpc_U4 ( .A1(SBOX_1_not_1_Masked_z_0_), .A2(
        SBOX_1_not_0_Masked_z_0_), .ZN(SBOX_1_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_1_and_0_Masked_and_hpc_U3 ( .A1(SBOX_1_not_0_Masked_z_0_), .A2(
        SBOX_1_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_1_and_0_Masked_and_hpc_U2 ( .A(SBOX_1_and_0_Masked_and_hpc_n6), 
        .B(SBOX_1_not_1_Masked_z_0_), .ZN(
        SBOX_1_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_1_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[7]), .CK(CLK), .Q(SBOX_1_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_1_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_1_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_1_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_0_Masked_z[0]), 
        .B(SBOX_1_xor_0_Masked_x[0]), .Z(SBOX_1_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_0_Masked_z[1]), 
        .B(SBOX_1_xor_0_Masked_x[1]), .Z(SBOX_1_not_6_Masked_z[1]) );
  INV_X1 SBOX_1_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[6]), .ZN(
        SBOX_1_not_2_Masked_z_0_) );
  INV_X1 SBOX_1_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[5]), .ZN(
        SBOX_1_not_3_Masked_z_0_) );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[5]), .A2(
        SHARE2_IN[6]), .ZN(SBOX_1_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_1_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[6]), .A2(
        SBOX_1_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_1_and_1_Masked_and_hpc_U12 ( .A(SBOX_1_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[5]), .ZN(SBOX_1_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_1_and_1_Masked_and_hpc_U11 ( .A(RAND[5]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_1_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_1_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_1_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_1_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_U8 ( .A(SBOX_1_and_1_Masked_and_hpc_z[1]), .B(SBOX_1_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_1_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_1_and_1_Masked_and_hpc_n5), .Z(SBOX_1_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_U6 ( .A(SBOX_1_and_1_Masked_and_hpc_z[0]), .B(SBOX_1_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_1_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_1_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_1_and_1_Masked_and_hpc_n4), .Z(SBOX_1_and_1_Masked_z[0]) );
  AND2_X1 SBOX_1_and_1_Masked_and_hpc_U4 ( .A1(SBOX_1_not_3_Masked_z_0_), .A2(
        SBOX_1_not_2_Masked_z_0_), .ZN(SBOX_1_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_1_and_1_Masked_and_hpc_U3 ( .A1(SBOX_1_not_2_Masked_z_0_), .A2(
        SBOX_1_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_1_and_1_Masked_and_hpc_U2 ( .A(SBOX_1_and_1_Masked_and_hpc_n6), 
        .B(SBOX_1_not_3_Masked_z_0_), .ZN(
        SBOX_1_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_1_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[6]), .CK(CLK), .Q(SBOX_1_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_1_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_1_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_1_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_1_Masked_z[0]), 
        .B(SBOX_1_xor_1_Masked_x[0]), .Z(SBOX_1_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_1_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_1_Masked_z[1]), 
        .B(SBOX_1_xor_1_Masked_x[1]), .Z(SBOX_1_not_7_Masked_z[1]) );
  INV_X1 SBOX_1_not_4_Masked_not_hpc_U1 ( .A(SBOX_1__s0_3_), .ZN(
        SBOX_1_not_4_Masked_z[0]) );
  INV_X1 SBOX_1_not_5_Masked_not_hpc_U1 ( .A(SBOX_1_xor_0_Masked_z_0_), .ZN(
        SBOX_1_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_1_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_1_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_1_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_1_and_2_Masked_and_hpc_n4), .Z(SBOX_1_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_1_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_1_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_1_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_1_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_1_and_2_Masked_and_hpc_n5), .Z(SBOX_1_and_2_Masked_z[1]) );
  INV_X1 SBOX_1_and_2_Masked_and_hpc_U10 ( .A(RAND[6]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_n6) );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_1_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_1_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_1_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_1_and_2_Masked_and_hpc_U7 ( .A1(SBOX_1_not_4_Masked_z[1]), .A2(
        SBOX_1_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_U6 ( .A1(SBOX_1_not_6_Masked_z[1]), .A2(
        SBOX_1_not_4_Masked_z[1]), .ZN(SBOX_1_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_1_and_2_Masked_and_hpc_U5 ( .A1(SBOX_1_not_4_Masked_z[0]), .A2(
        SBOX_1_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_1_and_2_Masked_and_hpc_U4 ( .A1(SBOX_1_not_5_Masked_z_0_), .A2(
        SBOX_1_not_4_Masked_z[0]), .ZN(SBOX_1_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_1_and_2_Masked_and_hpc_U3 ( .A(SBOX_1_and_2_Masked_and_hpc_n6), 
        .B(SBOX_1_not_6_Masked_z[1]), .ZN(
        SBOX_1_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_1_and_2_Masked_and_hpc_U2 ( .A(SBOX_1_and_2_Masked_and_hpc_n6), 
        .B(SBOX_1_not_5_Masked_z_0_), .ZN(
        SBOX_1_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_1_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_1_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_1_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_1_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_1_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_2_Masked_z[0]), 
        .B(SBOX_1_xor_2_Masked_x[0]), .Z(SHIFTROWS[9]) );
  XOR2_X1 SBOX_1_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_2_Masked_z[1]), 
        .B(SBOX_1_xor_2_Masked_x[1]), .Z(SHIFTROWS[73]) );
  INV_X1 SBOX_1_not_6_Masked_not_hpc_U1 ( .A(SBOX_1_xor_0_Masked_z_0_), .ZN(
        SBOX_1_not_6_Masked_z[0]) );
  INV_X1 SBOX_1_not_7_Masked_not_hpc_U1 ( .A(SBOX_1_xor_1_Masked_z_0_), .ZN(
        SBOX_1_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_1_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_1_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_1_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_1_and_3_Masked_and_hpc_n4), .Z(SBOX_1_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_1_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_1_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_1_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_1_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_1_and_3_Masked_and_hpc_n5), .Z(SBOX_1_and_3_Masked_z[1]) );
  INV_X1 SBOX_1_and_3_Masked_and_hpc_U10 ( .A(RAND[7]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_n6) );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_1_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_1_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_1_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_1_and_3_Masked_and_hpc_U7 ( .A1(SBOX_1_not_6_Masked_z[1]), .A2(
        SBOX_1_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_1_and_3_Masked_and_hpc_U6 ( .A(SBOX_1_and_3_Masked_and_hpc_n6), 
        .B(SBOX_1_not_7_Masked_z[1]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_U5 ( .A1(SBOX_1_not_7_Masked_z[1]), .A2(
        SBOX_1_not_6_Masked_z[1]), .ZN(SBOX_1_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_1_and_3_Masked_and_hpc_U4 ( .A1(SBOX_1_not_6_Masked_z[0]), .A2(
        SBOX_1_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_1_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_1_and_3_Masked_and_hpc_U3 ( .A(SBOX_1_and_3_Masked_and_hpc_n6), 
        .B(SBOX_1_not_7_Masked_z[0]), .ZN(
        SBOX_1_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_1_and_3_Masked_and_hpc_U2 ( .A1(SBOX_1_not_7_Masked_z[0]), .A2(
        SBOX_1_not_6_Masked_z[0]), .ZN(SBOX_1_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_1_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_1_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_1_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_1_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_1_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_1_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_1_and_3_Masked_z[0]), 
        .B(SBOX_1_xor_3_Masked_x[0]), .Z(SHIFTROWS[8]) );
  XOR2_X1 SBOX_1_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_1_and_3_Masked_z[1]), 
        .B(SBOX_1_xor_3_Masked_x[1]), .Z(SHIFTROWS[72]) );
  DFF_X1 SBOX_2_reg_1_s0_7_reg ( .D(SBOX_2_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_2_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_7_reg ( .D(SBOX_2_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_2_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_6_reg ( .D(SBOX_2_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_2_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_6_reg ( .D(SBOX_2_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_2_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_5_reg ( .D(SBOX_2_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[14]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_5_reg ( .D(SBOX_2_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[78]), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_4_reg ( .D(SBOX_2_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[15]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_4_reg ( .D(SBOX_2_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[79]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_6_reg ( .D(SBOX_2__s0_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_3_reg ( .D(SBOX_2_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_2__s0_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_6_reg ( .D(SBOX_2__s1_0), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_3_reg ( .D(SBOX_2_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_2__s1_0), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_5_reg ( .D(SBOX_2_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_5_reg ( .D(SBOX_2_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_2_reg ( .D(SBOX_2_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_2_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_2_reg ( .D(SBOX_2_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_2_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_4_reg ( .D(SBOX_2_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_4_reg ( .D(SBOX_2_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_1_reg ( .D(SBOX_2_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_2_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_1_reg ( .D(SBOX_2_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_2_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_7_reg ( .D(SBOX_2__s0_3_), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_2_reg_1_s0_reg ( .D(SBOX_2_reg_0_s0), .CK(CLK), .Q(SBOX_2__s0_3_), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_7_reg ( .D(SBOX_2_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_2_reg_1_s1_reg ( .D(SBOX_2_reg_0_s1), .CK(CLK), .Q(
        SBOX_2_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_2_reg ( .D(SHARE2_IN[11]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_2_reg ( .D(SHARE1_IN[11]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_3_reg ( .D(SHARE2_IN[10]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_1_reg ( .D(SHARE1_IN[8]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_3_reg ( .D(SHARE1_IN[10]), .CK(CLK), .Q(
        SBOX_2_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_2_reg_0_s1_1_reg ( .D(SHARE2_IN[8]), .CK(CLK), .Q(
        SBOX_2_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_2_reg_0_s0_reg ( .D(SHARE1_IN[9]), .CK(CLK), .Q(SBOX_2_reg_0_s0), 
        .QN() );
  DFF_X1 SBOX_2_reg_0_s1_reg ( .D(SHARE2_IN[9]), .CK(CLK), .Q(SBOX_2_reg_0_s1), 
        .QN() );
  INV_X1 SBOX_2_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[11]), .ZN(
        SBOX_2_not_0_Masked_z_0_) );
  INV_X1 SBOX_2_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[10]), .ZN(
        SBOX_2_not_1_Masked_z_0_) );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[10]), .A2(
        SHARE2_IN[11]), .ZN(SBOX_2_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_2_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[11]), .A2(
        SBOX_2_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_2_and_0_Masked_and_hpc_U12 ( .A(SBOX_2_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[10]), .ZN(SBOX_2_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_2_and_0_Masked_and_hpc_U11 ( .A(RAND[8]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_2_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_2_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_2_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_2_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_U8 ( .A(SBOX_2_and_0_Masked_and_hpc_z[1]), .B(SBOX_2_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_2_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_2_and_0_Masked_and_hpc_n5), .Z(SBOX_2_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_U6 ( .A(SBOX_2_and_0_Masked_and_hpc_z[0]), .B(SBOX_2_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_2_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_2_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_2_and_0_Masked_and_hpc_n4), .Z(SBOX_2_and_0_Masked_z[0]) );
  AND2_X1 SBOX_2_and_0_Masked_and_hpc_U4 ( .A1(SBOX_2_not_1_Masked_z_0_), .A2(
        SBOX_2_not_0_Masked_z_0_), .ZN(SBOX_2_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_2_and_0_Masked_and_hpc_U3 ( .A1(SBOX_2_not_0_Masked_z_0_), .A2(
        SBOX_2_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_2_and_0_Masked_and_hpc_U2 ( .A(SBOX_2_and_0_Masked_and_hpc_n6), 
        .B(SBOX_2_not_1_Masked_z_0_), .ZN(
        SBOX_2_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_2_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[11]), .CK(CLK), .Q(SBOX_2_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_2_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_2_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_2_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_0_Masked_z[0]), 
        .B(SBOX_2_xor_0_Masked_x[0]), .Z(SBOX_2_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_0_Masked_z[1]), 
        .B(SBOX_2_xor_0_Masked_x[1]), .Z(SBOX_2_not_6_Masked_z[1]) );
  INV_X1 SBOX_2_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[10]), .ZN(
        SBOX_2_not_2_Masked_z_0_) );
  INV_X1 SBOX_2_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[9]), .ZN(
        SBOX_2_not_3_Masked_z_0_) );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[9]), .A2(
        SHARE2_IN[10]), .ZN(SBOX_2_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_2_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[10]), .A2(
        SBOX_2_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_2_and_1_Masked_and_hpc_U12 ( .A(SBOX_2_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[9]), .ZN(SBOX_2_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_2_and_1_Masked_and_hpc_U11 ( .A(RAND[9]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_2_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_2_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_2_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_2_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_U8 ( .A(SBOX_2_and_1_Masked_and_hpc_z[1]), .B(SBOX_2_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_2_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_2_and_1_Masked_and_hpc_n5), .Z(SBOX_2_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_U6 ( .A(SBOX_2_and_1_Masked_and_hpc_z[0]), .B(SBOX_2_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_2_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_2_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_2_and_1_Masked_and_hpc_n4), .Z(SBOX_2_and_1_Masked_z[0]) );
  AND2_X1 SBOX_2_and_1_Masked_and_hpc_U4 ( .A1(SBOX_2_not_3_Masked_z_0_), .A2(
        SBOX_2_not_2_Masked_z_0_), .ZN(SBOX_2_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_2_and_1_Masked_and_hpc_U3 ( .A1(SBOX_2_not_2_Masked_z_0_), .A2(
        SBOX_2_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_2_and_1_Masked_and_hpc_U2 ( .A(SBOX_2_and_1_Masked_and_hpc_n6), 
        .B(SBOX_2_not_3_Masked_z_0_), .ZN(
        SBOX_2_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_2_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[10]), .CK(CLK), .Q(SBOX_2_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_2_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_2_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_2_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_1_Masked_z[0]), 
        .B(SBOX_2_xor_1_Masked_x[0]), .Z(SBOX_2_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_2_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_1_Masked_z[1]), 
        .B(SBOX_2_xor_1_Masked_x[1]), .Z(SBOX_2_not_7_Masked_z[1]) );
  INV_X1 SBOX_2_not_4_Masked_not_hpc_U1 ( .A(SBOX_2__s0_3_), .ZN(
        SBOX_2_not_4_Masked_z[0]) );
  INV_X1 SBOX_2_not_5_Masked_not_hpc_U1 ( .A(SBOX_2_xor_0_Masked_z_0_), .ZN(
        SBOX_2_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_2_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_2_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_2_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_2_and_2_Masked_and_hpc_n4), .Z(SBOX_2_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_2_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_2_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_2_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_2_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_2_and_2_Masked_and_hpc_n5), .Z(SBOX_2_and_2_Masked_z[1]) );
  INV_X1 SBOX_2_and_2_Masked_and_hpc_U10 ( .A(RAND[10]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_n6) );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_2_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_2_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_2_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_2_and_2_Masked_and_hpc_U7 ( .A1(SBOX_2_not_4_Masked_z[1]), .A2(
        SBOX_2_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_U6 ( .A1(SBOX_2_not_6_Masked_z[1]), .A2(
        SBOX_2_not_4_Masked_z[1]), .ZN(SBOX_2_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_2_and_2_Masked_and_hpc_U5 ( .A1(SBOX_2_not_4_Masked_z[0]), .A2(
        SBOX_2_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_2_and_2_Masked_and_hpc_U4 ( .A1(SBOX_2_not_5_Masked_z_0_), .A2(
        SBOX_2_not_4_Masked_z[0]), .ZN(SBOX_2_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_2_and_2_Masked_and_hpc_U3 ( .A(SBOX_2_and_2_Masked_and_hpc_n6), 
        .B(SBOX_2_not_6_Masked_z[1]), .ZN(
        SBOX_2_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_2_and_2_Masked_and_hpc_U2 ( .A(SBOX_2_and_2_Masked_and_hpc_n6), 
        .B(SBOX_2_not_5_Masked_z_0_), .ZN(
        SBOX_2_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_2_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_2_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_2_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_2_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_2_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_2_Masked_z[0]), 
        .B(SBOX_2_xor_2_Masked_x[0]), .Z(SHIFTROWS[13]) );
  XOR2_X1 SBOX_2_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_2_Masked_z[1]), 
        .B(SBOX_2_xor_2_Masked_x[1]), .Z(SHIFTROWS[77]) );
  INV_X1 SBOX_2_not_6_Masked_not_hpc_U1 ( .A(SBOX_2_xor_0_Masked_z_0_), .ZN(
        SBOX_2_not_6_Masked_z[0]) );
  INV_X1 SBOX_2_not_7_Masked_not_hpc_U1 ( .A(SBOX_2_xor_1_Masked_z_0_), .ZN(
        SBOX_2_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_2_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_2_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_2_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_2_and_3_Masked_and_hpc_n4), .Z(SBOX_2_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_2_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_2_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_2_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_2_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_2_and_3_Masked_and_hpc_n5), .Z(SBOX_2_and_3_Masked_z[1]) );
  INV_X1 SBOX_2_and_3_Masked_and_hpc_U10 ( .A(RAND[11]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_n6) );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_2_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_2_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_2_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_2_and_3_Masked_and_hpc_U7 ( .A1(SBOX_2_not_6_Masked_z[1]), .A2(
        SBOX_2_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_2_and_3_Masked_and_hpc_U6 ( .A(SBOX_2_and_3_Masked_and_hpc_n6), 
        .B(SBOX_2_not_7_Masked_z[1]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_U5 ( .A1(SBOX_2_not_7_Masked_z[1]), .A2(
        SBOX_2_not_6_Masked_z[1]), .ZN(SBOX_2_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_2_and_3_Masked_and_hpc_U4 ( .A1(SBOX_2_not_6_Masked_z[0]), .A2(
        SBOX_2_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_2_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_2_and_3_Masked_and_hpc_U3 ( .A(SBOX_2_and_3_Masked_and_hpc_n6), 
        .B(SBOX_2_not_7_Masked_z[0]), .ZN(
        SBOX_2_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_2_and_3_Masked_and_hpc_U2 ( .A1(SBOX_2_not_7_Masked_z[0]), .A2(
        SBOX_2_not_6_Masked_z[0]), .ZN(SBOX_2_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_2_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_2_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_2_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_2_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_2_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_2_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_2_and_3_Masked_z[0]), 
        .B(SBOX_2_xor_3_Masked_x[0]), .Z(SHIFTROWS[12]) );
  XOR2_X1 SBOX_2_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_2_and_3_Masked_z[1]), 
        .B(SBOX_2_xor_3_Masked_x[1]), .Z(SHIFTROWS[76]) );
  DFF_X1 SBOX_3_reg_1_s0_7_reg ( .D(SBOX_3_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_3_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_7_reg ( .D(SBOX_3_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_3_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_6_reg ( .D(SBOX_3_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_3_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_6_reg ( .D(SBOX_3_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_3_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_5_reg ( .D(SBOX_3_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[2]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_5_reg ( .D(SBOX_3_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[66]), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_4_reg ( .D(SBOX_3_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[3]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_4_reg ( .D(SBOX_3_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[67]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_6_reg ( .D(SBOX_3__s0_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_3_reg ( .D(SBOX_3_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_3__s0_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_6_reg ( .D(SBOX_3__s1_0), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_3_reg ( .D(SBOX_3_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_3__s1_0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_5_reg ( .D(SBOX_3_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_5_reg ( .D(SBOX_3_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_2_reg ( .D(SBOX_3_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_3_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_2_reg ( .D(SBOX_3_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_3_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_4_reg ( .D(SBOX_3_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_4_reg ( .D(SBOX_3_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_1_reg ( .D(SBOX_3_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_3_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_1_reg ( .D(SBOX_3_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_3_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_7_reg ( .D(SBOX_3__s0_3_), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_3_reg_1_s0_reg ( .D(SBOX_3_reg_0_s0), .CK(CLK), .Q(SBOX_3__s0_3_), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_7_reg ( .D(SBOX_3_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_3_reg_1_s1_reg ( .D(SBOX_3_reg_0_s1), .CK(CLK), .Q(
        SBOX_3_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_2_reg ( .D(SHARE2_IN[15]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_2_reg ( .D(SHARE1_IN[15]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_3_reg ( .D(SHARE2_IN[14]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_1_reg ( .D(SHARE1_IN[12]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_3_reg ( .D(SHARE1_IN[14]), .CK(CLK), .Q(
        SBOX_3_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_1_reg ( .D(SHARE2_IN[12]), .CK(CLK), .Q(
        SBOX_3_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_3_reg_0_s0_reg ( .D(SHARE1_IN[13]), .CK(CLK), .Q(SBOX_3_reg_0_s0), .QN() );
  DFF_X1 SBOX_3_reg_0_s1_reg ( .D(SHARE2_IN[13]), .CK(CLK), .Q(SBOX_3_reg_0_s1), .QN() );
  INV_X1 SBOX_3_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[15]), .ZN(
        SBOX_3_not_0_Masked_z_0_) );
  INV_X1 SBOX_3_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[14]), .ZN(
        SBOX_3_not_1_Masked_z_0_) );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[14]), .A2(
        SHARE2_IN[15]), .ZN(SBOX_3_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_3_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[15]), .A2(
        SBOX_3_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_3_and_0_Masked_and_hpc_U12 ( .A(SBOX_3_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[14]), .ZN(SBOX_3_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_3_and_0_Masked_and_hpc_U11 ( .A(RAND[12]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_3_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_3_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_3_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_3_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_U8 ( .A(SBOX_3_and_0_Masked_and_hpc_z[1]), .B(SBOX_3_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_3_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_3_and_0_Masked_and_hpc_n5), .Z(SBOX_3_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_U6 ( .A(SBOX_3_and_0_Masked_and_hpc_z[0]), .B(SBOX_3_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_3_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_3_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_3_and_0_Masked_and_hpc_n4), .Z(SBOX_3_and_0_Masked_z[0]) );
  AND2_X1 SBOX_3_and_0_Masked_and_hpc_U4 ( .A1(SBOX_3_not_1_Masked_z_0_), .A2(
        SBOX_3_not_0_Masked_z_0_), .ZN(SBOX_3_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_3_and_0_Masked_and_hpc_U3 ( .A1(SBOX_3_not_0_Masked_z_0_), .A2(
        SBOX_3_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_3_and_0_Masked_and_hpc_U2 ( .A(SBOX_3_and_0_Masked_and_hpc_n6), 
        .B(SBOX_3_not_1_Masked_z_0_), .ZN(
        SBOX_3_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_3_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[15]), .CK(CLK), .Q(SBOX_3_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_3_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_3_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_3_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_0_Masked_z[0]), 
        .B(SBOX_3_xor_0_Masked_x[0]), .Z(SBOX_3_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_0_Masked_z[1]), 
        .B(SBOX_3_xor_0_Masked_x[1]), .Z(SBOX_3_not_6_Masked_z[1]) );
  INV_X1 SBOX_3_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[14]), .ZN(
        SBOX_3_not_2_Masked_z_0_) );
  INV_X1 SBOX_3_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[13]), .ZN(
        SBOX_3_not_3_Masked_z_0_) );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[13]), .A2(
        SHARE2_IN[14]), .ZN(SBOX_3_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_3_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[14]), .A2(
        SBOX_3_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_3_and_1_Masked_and_hpc_U12 ( .A(SBOX_3_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[13]), .ZN(SBOX_3_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_3_and_1_Masked_and_hpc_U11 ( .A(RAND[13]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_3_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_3_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_3_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_3_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_U8 ( .A(SBOX_3_and_1_Masked_and_hpc_z[1]), .B(SBOX_3_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_3_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_3_and_1_Masked_and_hpc_n5), .Z(SBOX_3_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_U6 ( .A(SBOX_3_and_1_Masked_and_hpc_z[0]), .B(SBOX_3_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_3_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_3_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_3_and_1_Masked_and_hpc_n4), .Z(SBOX_3_and_1_Masked_z[0]) );
  AND2_X1 SBOX_3_and_1_Masked_and_hpc_U4 ( .A1(SBOX_3_not_3_Masked_z_0_), .A2(
        SBOX_3_not_2_Masked_z_0_), .ZN(SBOX_3_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_3_and_1_Masked_and_hpc_U3 ( .A1(SBOX_3_not_2_Masked_z_0_), .A2(
        SBOX_3_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_3_and_1_Masked_and_hpc_U2 ( .A(SBOX_3_and_1_Masked_and_hpc_n6), 
        .B(SBOX_3_not_3_Masked_z_0_), .ZN(
        SBOX_3_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_3_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[14]), .CK(CLK), .Q(SBOX_3_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_3_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_3_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_3_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_1_Masked_z[0]), 
        .B(SBOX_3_xor_1_Masked_x[0]), .Z(SBOX_3_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_3_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_1_Masked_z[1]), 
        .B(SBOX_3_xor_1_Masked_x[1]), .Z(SBOX_3_not_7_Masked_z[1]) );
  INV_X1 SBOX_3_not_4_Masked_not_hpc_U1 ( .A(SBOX_3__s0_3_), .ZN(
        SBOX_3_not_4_Masked_z[0]) );
  INV_X1 SBOX_3_not_5_Masked_not_hpc_U1 ( .A(SBOX_3_xor_0_Masked_z_0_), .ZN(
        SBOX_3_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_3_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_3_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_3_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_3_and_2_Masked_and_hpc_n4), .Z(SBOX_3_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_3_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_3_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_3_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_3_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_3_and_2_Masked_and_hpc_n5), .Z(SBOX_3_and_2_Masked_z[1]) );
  INV_X1 SBOX_3_and_2_Masked_and_hpc_U10 ( .A(RAND[14]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_n6) );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_3_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_3_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_3_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_3_and_2_Masked_and_hpc_U7 ( .A1(SBOX_3_not_4_Masked_z[1]), .A2(
        SBOX_3_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_U6 ( .A1(SBOX_3_not_6_Masked_z[1]), .A2(
        SBOX_3_not_4_Masked_z[1]), .ZN(SBOX_3_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_3_and_2_Masked_and_hpc_U5 ( .A1(SBOX_3_not_4_Masked_z[0]), .A2(
        SBOX_3_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_3_and_2_Masked_and_hpc_U4 ( .A1(SBOX_3_not_5_Masked_z_0_), .A2(
        SBOX_3_not_4_Masked_z[0]), .ZN(SBOX_3_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_3_and_2_Masked_and_hpc_U3 ( .A(SBOX_3_and_2_Masked_and_hpc_n6), 
        .B(SBOX_3_not_6_Masked_z[1]), .ZN(
        SBOX_3_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_3_and_2_Masked_and_hpc_U2 ( .A(SBOX_3_and_2_Masked_and_hpc_n6), 
        .B(SBOX_3_not_5_Masked_z_0_), .ZN(
        SBOX_3_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_3_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_3_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_3_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_3_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_3_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_2_Masked_z[0]), 
        .B(SBOX_3_xor_2_Masked_x[0]), .Z(SHIFTROWS[1]) );
  XOR2_X1 SBOX_3_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_2_Masked_z[1]), 
        .B(SBOX_3_xor_2_Masked_x[1]), .Z(SHIFTROWS[65]) );
  INV_X1 SBOX_3_not_6_Masked_not_hpc_U1 ( .A(SBOX_3_xor_0_Masked_z_0_), .ZN(
        SBOX_3_not_6_Masked_z[0]) );
  INV_X1 SBOX_3_not_7_Masked_not_hpc_U1 ( .A(SBOX_3_xor_1_Masked_z_0_), .ZN(
        SBOX_3_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_3_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_3_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_3_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_3_and_3_Masked_and_hpc_n4), .Z(SBOX_3_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_3_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_3_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_3_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_3_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_3_and_3_Masked_and_hpc_n5), .Z(SBOX_3_and_3_Masked_z[1]) );
  INV_X1 SBOX_3_and_3_Masked_and_hpc_U10 ( .A(RAND[15]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_n6) );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_3_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_3_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_3_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_3_and_3_Masked_and_hpc_U7 ( .A1(SBOX_3_not_6_Masked_z[1]), .A2(
        SBOX_3_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_3_and_3_Masked_and_hpc_U6 ( .A(SBOX_3_and_3_Masked_and_hpc_n6), 
        .B(SBOX_3_not_7_Masked_z[1]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_U5 ( .A1(SBOX_3_not_7_Masked_z[1]), .A2(
        SBOX_3_not_6_Masked_z[1]), .ZN(SBOX_3_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_3_and_3_Masked_and_hpc_U4 ( .A1(SBOX_3_not_6_Masked_z[0]), .A2(
        SBOX_3_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_3_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_3_and_3_Masked_and_hpc_U3 ( .A(SBOX_3_and_3_Masked_and_hpc_n6), 
        .B(SBOX_3_not_7_Masked_z[0]), .ZN(
        SBOX_3_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_3_and_3_Masked_and_hpc_U2 ( .A1(SBOX_3_not_7_Masked_z[0]), .A2(
        SBOX_3_not_6_Masked_z[0]), .ZN(SBOX_3_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_3_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_3_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_3_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_3_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_3_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_3_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_3_and_3_Masked_z[0]), 
        .B(SBOX_3_xor_3_Masked_x[0]), .Z(SHIFTROWS[0]) );
  XOR2_X1 SBOX_3_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_3_and_3_Masked_z[1]), 
        .B(SBOX_3_xor_3_Masked_x[1]), .Z(SHIFTROWS[64]) );
  DFF_X1 SBOX_4_reg_1_s0_7_reg ( .D(SBOX_4_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_4_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_7_reg ( .D(SBOX_4_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_4_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_6_reg ( .D(SBOX_4_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_4_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_6_reg ( .D(SBOX_4_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_4_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_5_reg ( .D(SBOX_4_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[26]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_5_reg ( .D(SBOX_4_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[90]), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_4_reg ( .D(SBOX_4_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[27]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_4_reg ( .D(SBOX_4_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[91]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_6_reg ( .D(SBOX_4__s0_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_3_reg ( .D(SBOX_4_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_4__s0_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_6_reg ( .D(SBOX_4__s1_0), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_3_reg ( .D(SBOX_4_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_4__s1_0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_5_reg ( .D(SBOX_4_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_5_reg ( .D(SBOX_4_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_2_reg ( .D(SBOX_4_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_4_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_2_reg ( .D(SBOX_4_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_4_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_4_reg ( .D(SBOX_4_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_4_reg ( .D(SBOX_4_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_1_reg ( .D(SBOX_4_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_4_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_1_reg ( .D(SBOX_4_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_4_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_7_reg ( .D(SBOX_4__s0_3_), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_4_reg_1_s0_reg ( .D(SBOX_4_reg_0_s0), .CK(CLK), .Q(SBOX_4__s0_3_), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_7_reg ( .D(SBOX_4_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_4_reg_1_s1_reg ( .D(SBOX_4_reg_0_s1), .CK(CLK), .Q(
        SBOX_4_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_2_reg ( .D(SHARE2_IN[19]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_2_reg ( .D(SHARE1_IN[19]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_3_reg ( .D(SHARE2_IN[18]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_1_reg ( .D(SHARE1_IN[16]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_3_reg ( .D(SHARE1_IN[18]), .CK(CLK), .Q(
        SBOX_4_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_1_reg ( .D(SHARE2_IN[16]), .CK(CLK), .Q(
        SBOX_4_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_4_reg_0_s0_reg ( .D(SHARE1_IN[17]), .CK(CLK), .Q(SBOX_4_reg_0_s0), .QN() );
  DFF_X1 SBOX_4_reg_0_s1_reg ( .D(SHARE2_IN[17]), .CK(CLK), .Q(SBOX_4_reg_0_s1), .QN() );
  INV_X1 SBOX_4_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[19]), .ZN(
        SBOX_4_not_0_Masked_z_0_) );
  INV_X1 SBOX_4_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[18]), .ZN(
        SBOX_4_not_1_Masked_z_0_) );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[18]), .A2(
        SHARE2_IN[19]), .ZN(SBOX_4_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_4_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[19]), .A2(
        SBOX_4_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_4_and_0_Masked_and_hpc_U12 ( .A(SBOX_4_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[18]), .ZN(SBOX_4_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_4_and_0_Masked_and_hpc_U11 ( .A(RAND[16]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_4_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_4_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_4_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_4_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_U8 ( .A(SBOX_4_and_0_Masked_and_hpc_z[1]), .B(SBOX_4_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_4_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_4_and_0_Masked_and_hpc_n5), .Z(SBOX_4_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_U6 ( .A(SBOX_4_and_0_Masked_and_hpc_z[0]), .B(SBOX_4_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_4_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_4_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_4_and_0_Masked_and_hpc_n4), .Z(SBOX_4_and_0_Masked_z[0]) );
  AND2_X1 SBOX_4_and_0_Masked_and_hpc_U4 ( .A1(SBOX_4_not_1_Masked_z_0_), .A2(
        SBOX_4_not_0_Masked_z_0_), .ZN(SBOX_4_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_4_and_0_Masked_and_hpc_U3 ( .A1(SBOX_4_not_0_Masked_z_0_), .A2(
        SBOX_4_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_4_and_0_Masked_and_hpc_U2 ( .A(SBOX_4_and_0_Masked_and_hpc_n6), 
        .B(SBOX_4_not_1_Masked_z_0_), .ZN(
        SBOX_4_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_4_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[19]), .CK(CLK), .Q(SBOX_4_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_4_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_4_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_4_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_0_Masked_z[0]), 
        .B(SBOX_4_xor_0_Masked_x[0]), .Z(SBOX_4_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_0_Masked_z[1]), 
        .B(SBOX_4_xor_0_Masked_x[1]), .Z(SBOX_4_not_6_Masked_z[1]) );
  INV_X1 SBOX_4_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[18]), .ZN(
        SBOX_4_not_2_Masked_z_0_) );
  INV_X1 SBOX_4_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[17]), .ZN(
        SBOX_4_not_3_Masked_z_0_) );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[17]), .A2(
        SHARE2_IN[18]), .ZN(SBOX_4_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_4_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[18]), .A2(
        SBOX_4_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_4_and_1_Masked_and_hpc_U12 ( .A(SBOX_4_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[17]), .ZN(SBOX_4_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_4_and_1_Masked_and_hpc_U11 ( .A(RAND[17]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_4_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_4_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_4_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_4_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_U8 ( .A(SBOX_4_and_1_Masked_and_hpc_z[1]), .B(SBOX_4_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_4_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_4_and_1_Masked_and_hpc_n5), .Z(SBOX_4_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_U6 ( .A(SBOX_4_and_1_Masked_and_hpc_z[0]), .B(SBOX_4_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_4_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_4_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_4_and_1_Masked_and_hpc_n4), .Z(SBOX_4_and_1_Masked_z[0]) );
  AND2_X1 SBOX_4_and_1_Masked_and_hpc_U4 ( .A1(SBOX_4_not_3_Masked_z_0_), .A2(
        SBOX_4_not_2_Masked_z_0_), .ZN(SBOX_4_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_4_and_1_Masked_and_hpc_U3 ( .A1(SBOX_4_not_2_Masked_z_0_), .A2(
        SBOX_4_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_4_and_1_Masked_and_hpc_U2 ( .A(SBOX_4_and_1_Masked_and_hpc_n6), 
        .B(SBOX_4_not_3_Masked_z_0_), .ZN(
        SBOX_4_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_4_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[18]), .CK(CLK), .Q(SBOX_4_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_4_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_4_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_4_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_1_Masked_z[0]), 
        .B(SBOX_4_xor_1_Masked_x[0]), .Z(SBOX_4_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_4_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_1_Masked_z[1]), 
        .B(SBOX_4_xor_1_Masked_x[1]), .Z(SBOX_4_not_7_Masked_z[1]) );
  INV_X1 SBOX_4_not_4_Masked_not_hpc_U1 ( .A(SBOX_4__s0_3_), .ZN(
        SBOX_4_not_4_Masked_z[0]) );
  INV_X1 SBOX_4_not_5_Masked_not_hpc_U1 ( .A(SBOX_4_xor_0_Masked_z_0_), .ZN(
        SBOX_4_not_5_Masked_z_0_) );
  INV_X1 SBOX_4_and_2_Masked_and_hpc_U14 ( .A(RAND[18]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_4_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_4_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_4_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_4_and_2_Masked_and_hpc_n4), .Z(SBOX_4_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_4_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_4_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_4_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_4_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_4_and_2_Masked_and_hpc_n5), .Z(SBOX_4_and_2_Masked_z[1]) );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_4_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_4_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_4_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_4_and_2_Masked_and_hpc_U7 ( .A1(SBOX_4_not_4_Masked_z[1]), .A2(
        SBOX_4_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_U6 ( .A1(SBOX_4_not_6_Masked_z[1]), .A2(
        SBOX_4_not_4_Masked_z[1]), .ZN(SBOX_4_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_4_and_2_Masked_and_hpc_U5 ( .A1(SBOX_4_not_4_Masked_z[0]), .A2(
        SBOX_4_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_4_and_2_Masked_and_hpc_U4 ( .A1(SBOX_4_not_5_Masked_z_0_), .A2(
        SBOX_4_not_4_Masked_z[0]), .ZN(SBOX_4_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_4_and_2_Masked_and_hpc_U3 ( .A(SBOX_4_and_2_Masked_and_hpc_n6), 
        .B(SBOX_4_not_6_Masked_z[1]), .ZN(
        SBOX_4_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_4_and_2_Masked_and_hpc_U2 ( .A(SBOX_4_and_2_Masked_and_hpc_n6), 
        .B(SBOX_4_not_5_Masked_z_0_), .ZN(
        SBOX_4_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_4_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_4_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_4_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_4_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_4_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_2_Masked_z[0]), 
        .B(SBOX_4_xor_2_Masked_x[0]), .Z(SHIFTROWS[25]) );
  XOR2_X1 SBOX_4_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_2_Masked_z[1]), 
        .B(SBOX_4_xor_2_Masked_x[1]), .Z(SHIFTROWS[89]) );
  INV_X1 SBOX_4_not_6_Masked_not_hpc_U1 ( .A(SBOX_4_xor_0_Masked_z_0_), .ZN(
        SBOX_4_not_6_Masked_z[0]) );
  INV_X1 SBOX_4_not_7_Masked_not_hpc_U1 ( .A(SBOX_4_xor_1_Masked_z_0_), .ZN(
        SBOX_4_not_7_Masked_z[0]) );
  INV_X1 SBOX_4_and_3_Masked_and_hpc_U14 ( .A(RAND[19]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_4_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_4_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_4_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_4_and_3_Masked_and_hpc_n4), .Z(SBOX_4_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_4_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_4_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_4_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_4_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_4_and_3_Masked_and_hpc_n5), .Z(SBOX_4_and_3_Masked_z[1]) );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_4_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_4_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_4_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_4_and_3_Masked_and_hpc_U7 ( .A1(SBOX_4_not_6_Masked_z[1]), .A2(
        SBOX_4_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_4_and_3_Masked_and_hpc_U6 ( .A(SBOX_4_and_3_Masked_and_hpc_n6), 
        .B(SBOX_4_not_7_Masked_z[1]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_U5 ( .A1(SBOX_4_not_7_Masked_z[1]), .A2(
        SBOX_4_not_6_Masked_z[1]), .ZN(SBOX_4_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_4_and_3_Masked_and_hpc_U4 ( .A1(SBOX_4_not_6_Masked_z[0]), .A2(
        SBOX_4_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_4_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_4_and_3_Masked_and_hpc_U3 ( .A(SBOX_4_and_3_Masked_and_hpc_n6), 
        .B(SBOX_4_not_7_Masked_z[0]), .ZN(
        SBOX_4_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_4_and_3_Masked_and_hpc_U2 ( .A1(SBOX_4_not_7_Masked_z[0]), .A2(
        SBOX_4_not_6_Masked_z[0]), .ZN(SBOX_4_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_4_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_4_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_4_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_4_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_4_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_4_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_4_and_3_Masked_z[0]), 
        .B(SBOX_4_xor_3_Masked_x[0]), .Z(SHIFTROWS[24]) );
  XOR2_X1 SBOX_4_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_4_and_3_Masked_z[1]), 
        .B(SBOX_4_xor_3_Masked_x[1]), .Z(SHIFTROWS[88]) );
  DFF_X1 SBOX_5_reg_1_s0_7_reg ( .D(SBOX_5_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_5_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_7_reg ( .D(SBOX_5_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_5_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_6_reg ( .D(SBOX_5_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_5_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_6_reg ( .D(SBOX_5_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_5_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_5_reg ( .D(SBOX_5_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[30]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_5_reg ( .D(SBOX_5_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[94]), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_4_reg ( .D(SBOX_5_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[31]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_4_reg ( .D(SBOX_5_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[95]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_6_reg ( .D(SBOX_5__s0_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_3_reg ( .D(SBOX_5_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_5__s0_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_6_reg ( .D(SBOX_5__s1_0), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_3_reg ( .D(SBOX_5_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_5__s1_0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_5_reg ( .D(SBOX_5_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_5_reg ( .D(SBOX_5_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_2_reg ( .D(SBOX_5_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_5_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_2_reg ( .D(SBOX_5_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_5_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_4_reg ( .D(SBOX_5_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_4_reg ( .D(SBOX_5_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_1_reg ( .D(SBOX_5_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_5_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_1_reg ( .D(SBOX_5_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_5_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_7_reg ( .D(SBOX_5__s0_3_), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_5_reg_1_s0_reg ( .D(SBOX_5_reg_0_s0), .CK(CLK), .Q(SBOX_5__s0_3_), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_7_reg ( .D(SBOX_5_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_5_reg_1_s1_reg ( .D(SBOX_5_reg_0_s1), .CK(CLK), .Q(
        SBOX_5_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_2_reg ( .D(SHARE2_IN[23]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_2_reg ( .D(SHARE1_IN[23]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_3_reg ( .D(SHARE2_IN[22]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_1_reg ( .D(SHARE1_IN[20]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_3_reg ( .D(SHARE1_IN[22]), .CK(CLK), .Q(
        SBOX_5_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_1_reg ( .D(SHARE2_IN[20]), .CK(CLK), .Q(
        SBOX_5_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_5_reg_0_s0_reg ( .D(SHARE1_IN[21]), .CK(CLK), .Q(SBOX_5_reg_0_s0), .QN() );
  DFF_X1 SBOX_5_reg_0_s1_reg ( .D(SHARE2_IN[21]), .CK(CLK), .Q(SBOX_5_reg_0_s1), .QN() );
  INV_X1 SBOX_5_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[23]), .ZN(
        SBOX_5_not_0_Masked_z_0_) );
  INV_X1 SBOX_5_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[22]), .ZN(
        SBOX_5_not_1_Masked_z_0_) );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[22]), .A2(
        SHARE2_IN[23]), .ZN(SBOX_5_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_5_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[23]), .A2(
        SBOX_5_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_5_and_0_Masked_and_hpc_U12 ( .A(SBOX_5_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[22]), .ZN(SBOX_5_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_5_and_0_Masked_and_hpc_U11 ( .A(RAND[20]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_5_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_5_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_5_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_5_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_U8 ( .A(SBOX_5_and_0_Masked_and_hpc_z[1]), .B(SBOX_5_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_5_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_5_and_0_Masked_and_hpc_n5), .Z(SBOX_5_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_U6 ( .A(SBOX_5_and_0_Masked_and_hpc_z[0]), .B(SBOX_5_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_5_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_5_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_5_and_0_Masked_and_hpc_n4), .Z(SBOX_5_and_0_Masked_z[0]) );
  AND2_X1 SBOX_5_and_0_Masked_and_hpc_U4 ( .A1(SBOX_5_not_1_Masked_z_0_), .A2(
        SBOX_5_not_0_Masked_z_0_), .ZN(SBOX_5_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_5_and_0_Masked_and_hpc_U3 ( .A1(SBOX_5_not_0_Masked_z_0_), .A2(
        SBOX_5_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_5_and_0_Masked_and_hpc_U2 ( .A(SBOX_5_and_0_Masked_and_hpc_n6), 
        .B(SBOX_5_not_1_Masked_z_0_), .ZN(
        SBOX_5_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_5_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[23]), .CK(CLK), .Q(SBOX_5_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_5_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_5_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_5_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_0_Masked_z[0]), 
        .B(SBOX_5_xor_0_Masked_x[0]), .Z(SBOX_5_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_0_Masked_z[1]), 
        .B(SBOX_5_xor_0_Masked_x[1]), .Z(SBOX_5_not_6_Masked_z[1]) );
  INV_X1 SBOX_5_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[22]), .ZN(
        SBOX_5_not_2_Masked_z_0_) );
  INV_X1 SBOX_5_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[21]), .ZN(
        SBOX_5_not_3_Masked_z_0_) );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[21]), .A2(
        SHARE2_IN[22]), .ZN(SBOX_5_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_5_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[22]), .A2(
        SBOX_5_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_5_and_1_Masked_and_hpc_U12 ( .A(SBOX_5_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[21]), .ZN(SBOX_5_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_5_and_1_Masked_and_hpc_U11 ( .A(RAND[21]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_5_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_5_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_5_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_5_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_U8 ( .A(SBOX_5_and_1_Masked_and_hpc_z[1]), .B(SBOX_5_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_5_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_5_and_1_Masked_and_hpc_n5), .Z(SBOX_5_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_U6 ( .A(SBOX_5_and_1_Masked_and_hpc_z[0]), .B(SBOX_5_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_5_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_5_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_5_and_1_Masked_and_hpc_n4), .Z(SBOX_5_and_1_Masked_z[0]) );
  AND2_X1 SBOX_5_and_1_Masked_and_hpc_U4 ( .A1(SBOX_5_not_3_Masked_z_0_), .A2(
        SBOX_5_not_2_Masked_z_0_), .ZN(SBOX_5_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_5_and_1_Masked_and_hpc_U3 ( .A1(SBOX_5_not_2_Masked_z_0_), .A2(
        SBOX_5_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_5_and_1_Masked_and_hpc_U2 ( .A(SBOX_5_and_1_Masked_and_hpc_n6), 
        .B(SBOX_5_not_3_Masked_z_0_), .ZN(
        SBOX_5_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_5_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[22]), .CK(CLK), .Q(SBOX_5_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_5_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_5_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_5_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_1_Masked_z[0]), 
        .B(SBOX_5_xor_1_Masked_x[0]), .Z(SBOX_5_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_5_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_1_Masked_z[1]), 
        .B(SBOX_5_xor_1_Masked_x[1]), .Z(SBOX_5_not_7_Masked_z[1]) );
  INV_X1 SBOX_5_not_4_Masked_not_hpc_U1 ( .A(SBOX_5__s0_3_), .ZN(
        SBOX_5_not_4_Masked_z[0]) );
  INV_X1 SBOX_5_not_5_Masked_not_hpc_U1 ( .A(SBOX_5_xor_0_Masked_z_0_), .ZN(
        SBOX_5_not_5_Masked_z_0_) );
  INV_X1 SBOX_5_and_2_Masked_and_hpc_U14 ( .A(RAND[22]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_5_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_5_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_5_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_5_and_2_Masked_and_hpc_n4), .Z(SBOX_5_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_5_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_5_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_5_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_5_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_5_and_2_Masked_and_hpc_n5), .Z(SBOX_5_and_2_Masked_z[1]) );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_5_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_5_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_5_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_5_and_2_Masked_and_hpc_U7 ( .A1(SBOX_5_not_4_Masked_z[1]), .A2(
        SBOX_5_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_U6 ( .A1(SBOX_5_not_6_Masked_z[1]), .A2(
        SBOX_5_not_4_Masked_z[1]), .ZN(SBOX_5_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_5_and_2_Masked_and_hpc_U5 ( .A1(SBOX_5_not_4_Masked_z[0]), .A2(
        SBOX_5_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_5_and_2_Masked_and_hpc_U4 ( .A1(SBOX_5_not_5_Masked_z_0_), .A2(
        SBOX_5_not_4_Masked_z[0]), .ZN(SBOX_5_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_5_and_2_Masked_and_hpc_U3 ( .A(SBOX_5_and_2_Masked_and_hpc_n6), 
        .B(SBOX_5_not_6_Masked_z[1]), .ZN(
        SBOX_5_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_5_and_2_Masked_and_hpc_U2 ( .A(SBOX_5_and_2_Masked_and_hpc_n6), 
        .B(SBOX_5_not_5_Masked_z_0_), .ZN(
        SBOX_5_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_5_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_5_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_5_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_5_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_5_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_2_Masked_z[0]), 
        .B(SBOX_5_xor_2_Masked_x[0]), .Z(SHIFTROWS[29]) );
  XOR2_X1 SBOX_5_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_2_Masked_z[1]), 
        .B(SBOX_5_xor_2_Masked_x[1]), .Z(SHIFTROWS[93]) );
  INV_X1 SBOX_5_not_6_Masked_not_hpc_U1 ( .A(SBOX_5_xor_0_Masked_z_0_), .ZN(
        SBOX_5_not_6_Masked_z[0]) );
  INV_X1 SBOX_5_not_7_Masked_not_hpc_U1 ( .A(SBOX_5_xor_1_Masked_z_0_), .ZN(
        SBOX_5_not_7_Masked_z[0]) );
  INV_X1 SBOX_5_and_3_Masked_and_hpc_U14 ( .A(RAND[23]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_5_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_5_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_5_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_5_and_3_Masked_and_hpc_n4), .Z(SBOX_5_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_5_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_5_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_5_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_5_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_5_and_3_Masked_and_hpc_n5), .Z(SBOX_5_and_3_Masked_z[1]) );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_5_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_5_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_5_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_5_and_3_Masked_and_hpc_U7 ( .A1(SBOX_5_not_6_Masked_z[1]), .A2(
        SBOX_5_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_5_and_3_Masked_and_hpc_U6 ( .A(SBOX_5_and_3_Masked_and_hpc_n6), 
        .B(SBOX_5_not_7_Masked_z[1]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_U5 ( .A1(SBOX_5_not_7_Masked_z[1]), .A2(
        SBOX_5_not_6_Masked_z[1]), .ZN(SBOX_5_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_5_and_3_Masked_and_hpc_U4 ( .A1(SBOX_5_not_6_Masked_z[0]), .A2(
        SBOX_5_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_5_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_5_and_3_Masked_and_hpc_U3 ( .A(SBOX_5_and_3_Masked_and_hpc_n6), 
        .B(SBOX_5_not_7_Masked_z[0]), .ZN(
        SBOX_5_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_5_and_3_Masked_and_hpc_U2 ( .A1(SBOX_5_not_7_Masked_z[0]), .A2(
        SBOX_5_not_6_Masked_z[0]), .ZN(SBOX_5_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_5_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_5_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_5_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_5_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_5_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_5_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_5_and_3_Masked_z[0]), 
        .B(SBOX_5_xor_3_Masked_x[0]), .Z(SHIFTROWS[28]) );
  XOR2_X1 SBOX_5_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_5_and_3_Masked_z[1]), 
        .B(SBOX_5_xor_3_Masked_x[1]), .Z(SHIFTROWS[92]) );
  DFF_X1 SBOX_6_reg_1_s0_7_reg ( .D(SBOX_6_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_6_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_7_reg ( .D(SBOX_6_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_6_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_6_reg ( .D(SBOX_6_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_6_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_6_reg ( .D(SBOX_6_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_6_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_5_reg ( .D(SBOX_6_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[18]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_5_reg ( .D(SBOX_6_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[82]), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_4_reg ( .D(SBOX_6_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[19]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_4_reg ( .D(SBOX_6_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[83]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_6_reg ( .D(SBOX_6__s0_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_3_reg ( .D(SBOX_6_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_6__s0_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_6_reg ( .D(SBOX_6__s1_0), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_3_reg ( .D(SBOX_6_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_6__s1_0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_5_reg ( .D(SBOX_6_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_5_reg ( .D(SBOX_6_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_2_reg ( .D(SBOX_6_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_6_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_2_reg ( .D(SBOX_6_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_6_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_4_reg ( .D(SBOX_6_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_4_reg ( .D(SBOX_6_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_1_reg ( .D(SBOX_6_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_6_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_1_reg ( .D(SBOX_6_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_6_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_7_reg ( .D(SBOX_6__s0_3_), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_6_reg_1_s0_reg ( .D(SBOX_6_reg_0_s0), .CK(CLK), .Q(SBOX_6__s0_3_), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_7_reg ( .D(SBOX_6_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_6_reg_1_s1_reg ( .D(SBOX_6_reg_0_s1), .CK(CLK), .Q(
        SBOX_6_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_2_reg ( .D(SHARE2_IN[27]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_2_reg ( .D(SHARE1_IN[27]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_3_reg ( .D(SHARE2_IN[26]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_1_reg ( .D(SHARE1_IN[24]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_3_reg ( .D(SHARE1_IN[26]), .CK(CLK), .Q(
        SBOX_6_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_1_reg ( .D(SHARE2_IN[24]), .CK(CLK), .Q(
        SBOX_6_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_6_reg_0_s0_reg ( .D(SHARE1_IN[25]), .CK(CLK), .Q(SBOX_6_reg_0_s0), .QN() );
  DFF_X1 SBOX_6_reg_0_s1_reg ( .D(SHARE2_IN[25]), .CK(CLK), .Q(SBOX_6_reg_0_s1), .QN() );
  INV_X1 SBOX_6_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[27]), .ZN(
        SBOX_6_not_0_Masked_z_0_) );
  INV_X1 SBOX_6_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[26]), .ZN(
        SBOX_6_not_1_Masked_z_0_) );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[26]), .A2(
        SHARE2_IN[27]), .ZN(SBOX_6_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_6_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[27]), .A2(
        SBOX_6_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_6_and_0_Masked_and_hpc_U12 ( .A(SBOX_6_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[26]), .ZN(SBOX_6_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_6_and_0_Masked_and_hpc_U11 ( .A(RAND[24]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_6_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_6_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_6_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_6_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_U8 ( .A(SBOX_6_and_0_Masked_and_hpc_z[1]), .B(SBOX_6_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_6_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_6_and_0_Masked_and_hpc_n5), .Z(SBOX_6_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_U6 ( .A(SBOX_6_and_0_Masked_and_hpc_z[0]), .B(SBOX_6_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_6_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_6_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_6_and_0_Masked_and_hpc_n4), .Z(SBOX_6_and_0_Masked_z[0]) );
  AND2_X1 SBOX_6_and_0_Masked_and_hpc_U4 ( .A1(SBOX_6_not_1_Masked_z_0_), .A2(
        SBOX_6_not_0_Masked_z_0_), .ZN(SBOX_6_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_6_and_0_Masked_and_hpc_U3 ( .A1(SBOX_6_not_0_Masked_z_0_), .A2(
        SBOX_6_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_6_and_0_Masked_and_hpc_U2 ( .A(SBOX_6_and_0_Masked_and_hpc_n6), 
        .B(SBOX_6_not_1_Masked_z_0_), .ZN(
        SBOX_6_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_6_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[27]), .CK(CLK), .Q(SBOX_6_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_6_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_6_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_6_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_0_Masked_z[0]), 
        .B(SBOX_6_xor_0_Masked_x[0]), .Z(SBOX_6_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_0_Masked_z[1]), 
        .B(SBOX_6_xor_0_Masked_x[1]), .Z(SBOX_6_not_6_Masked_z[1]) );
  INV_X1 SBOX_6_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[26]), .ZN(
        SBOX_6_not_2_Masked_z_0_) );
  INV_X1 SBOX_6_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[25]), .ZN(
        SBOX_6_not_3_Masked_z_0_) );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[25]), .A2(
        SHARE2_IN[26]), .ZN(SBOX_6_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_6_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[26]), .A2(
        SBOX_6_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_6_and_1_Masked_and_hpc_U12 ( .A(SBOX_6_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[25]), .ZN(SBOX_6_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_6_and_1_Masked_and_hpc_U11 ( .A(RAND[25]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_6_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_6_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_6_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_6_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_U8 ( .A(SBOX_6_and_1_Masked_and_hpc_z[1]), .B(SBOX_6_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_6_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_6_and_1_Masked_and_hpc_n5), .Z(SBOX_6_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_U6 ( .A(SBOX_6_and_1_Masked_and_hpc_z[0]), .B(SBOX_6_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_6_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_6_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_6_and_1_Masked_and_hpc_n4), .Z(SBOX_6_and_1_Masked_z[0]) );
  AND2_X1 SBOX_6_and_1_Masked_and_hpc_U4 ( .A1(SBOX_6_not_3_Masked_z_0_), .A2(
        SBOX_6_not_2_Masked_z_0_), .ZN(SBOX_6_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_6_and_1_Masked_and_hpc_U3 ( .A1(SBOX_6_not_2_Masked_z_0_), .A2(
        SBOX_6_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_6_and_1_Masked_and_hpc_U2 ( .A(SBOX_6_and_1_Masked_and_hpc_n6), 
        .B(SBOX_6_not_3_Masked_z_0_), .ZN(
        SBOX_6_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_6_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[26]), .CK(CLK), .Q(SBOX_6_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_6_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_6_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_6_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_1_Masked_z[0]), 
        .B(SBOX_6_xor_1_Masked_x[0]), .Z(SBOX_6_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_6_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_1_Masked_z[1]), 
        .B(SBOX_6_xor_1_Masked_x[1]), .Z(SBOX_6_not_7_Masked_z[1]) );
  INV_X1 SBOX_6_not_4_Masked_not_hpc_U1 ( .A(SBOX_6__s0_3_), .ZN(
        SBOX_6_not_4_Masked_z[0]) );
  INV_X1 SBOX_6_not_5_Masked_not_hpc_U1 ( .A(SBOX_6_xor_0_Masked_z_0_), .ZN(
        SBOX_6_not_5_Masked_z_0_) );
  INV_X1 SBOX_6_and_2_Masked_and_hpc_U14 ( .A(RAND[26]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_6_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_6_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_6_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_6_and_2_Masked_and_hpc_n4), .Z(SBOX_6_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_6_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_6_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_6_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_6_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_6_and_2_Masked_and_hpc_n5), .Z(SBOX_6_and_2_Masked_z[1]) );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_6_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_6_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_6_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_6_and_2_Masked_and_hpc_U7 ( .A1(SBOX_6_not_4_Masked_z[1]), .A2(
        SBOX_6_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_U6 ( .A1(SBOX_6_not_6_Masked_z[1]), .A2(
        SBOX_6_not_4_Masked_z[1]), .ZN(SBOX_6_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_6_and_2_Masked_and_hpc_U5 ( .A1(SBOX_6_not_4_Masked_z[0]), .A2(
        SBOX_6_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_6_and_2_Masked_and_hpc_U4 ( .A1(SBOX_6_not_5_Masked_z_0_), .A2(
        SBOX_6_not_4_Masked_z[0]), .ZN(SBOX_6_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_6_and_2_Masked_and_hpc_U3 ( .A(SBOX_6_and_2_Masked_and_hpc_n6), 
        .B(SBOX_6_not_6_Masked_z[1]), .ZN(
        SBOX_6_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_6_and_2_Masked_and_hpc_U2 ( .A(SBOX_6_and_2_Masked_and_hpc_n6), 
        .B(SBOX_6_not_5_Masked_z_0_), .ZN(
        SBOX_6_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_6_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_6_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_6_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_6_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_6_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_2_Masked_z[0]), 
        .B(SBOX_6_xor_2_Masked_x[0]), .Z(SHIFTROWS[17]) );
  XOR2_X1 SBOX_6_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_2_Masked_z[1]), 
        .B(SBOX_6_xor_2_Masked_x[1]), .Z(SHIFTROWS[81]) );
  INV_X1 SBOX_6_not_6_Masked_not_hpc_U1 ( .A(SBOX_6_xor_0_Masked_z_0_), .ZN(
        SBOX_6_not_6_Masked_z[0]) );
  INV_X1 SBOX_6_not_7_Masked_not_hpc_U1 ( .A(SBOX_6_xor_1_Masked_z_0_), .ZN(
        SBOX_6_not_7_Masked_z[0]) );
  INV_X1 SBOX_6_and_3_Masked_and_hpc_U14 ( .A(RAND[27]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_6_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_6_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_6_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_6_and_3_Masked_and_hpc_n4), .Z(SBOX_6_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_6_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_6_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_6_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_6_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_6_and_3_Masked_and_hpc_n5), .Z(SBOX_6_and_3_Masked_z[1]) );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_6_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_6_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_6_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_6_and_3_Masked_and_hpc_U7 ( .A1(SBOX_6_not_6_Masked_z[1]), .A2(
        SBOX_6_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_6_and_3_Masked_and_hpc_U6 ( .A(SBOX_6_and_3_Masked_and_hpc_n6), 
        .B(SBOX_6_not_7_Masked_z[1]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_U5 ( .A1(SBOX_6_not_7_Masked_z[1]), .A2(
        SBOX_6_not_6_Masked_z[1]), .ZN(SBOX_6_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_6_and_3_Masked_and_hpc_U4 ( .A1(SBOX_6_not_6_Masked_z[0]), .A2(
        SBOX_6_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_6_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_6_and_3_Masked_and_hpc_U3 ( .A(SBOX_6_and_3_Masked_and_hpc_n6), 
        .B(SBOX_6_not_7_Masked_z[0]), .ZN(
        SBOX_6_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_6_and_3_Masked_and_hpc_U2 ( .A1(SBOX_6_not_7_Masked_z[0]), .A2(
        SBOX_6_not_6_Masked_z[0]), .ZN(SBOX_6_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_6_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_6_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_6_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_6_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_6_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_6_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_6_and_3_Masked_z[0]), 
        .B(SBOX_6_xor_3_Masked_x[0]), .Z(SHIFTROWS[16]) );
  XOR2_X1 SBOX_6_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_6_and_3_Masked_z[1]), 
        .B(SBOX_6_xor_3_Masked_x[1]), .Z(SHIFTROWS[80]) );
  DFF_X1 SBOX_7_reg_1_s0_7_reg ( .D(SBOX_7_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_7_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_7_reg ( .D(SBOX_7_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_7_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_6_reg ( .D(SBOX_7_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_7_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_6_reg ( .D(SBOX_7_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_7_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_5_reg ( .D(SBOX_7_reg_0_s0_5), .CK(CLK), .Q(
        SHIFTROWS[22]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_5_reg ( .D(SBOX_7_reg_0_s1_5), .CK(CLK), .Q(
        SHIFTROWS[86]), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_4_reg ( .D(SBOX_7_reg_0_s0_4), .CK(CLK), .Q(
        SHIFTROWS[23]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_4_reg ( .D(SBOX_7_reg_0_s1_4), .CK(CLK), .Q(
        SHIFTROWS[87]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_6_reg ( .D(SBOX_7__s0_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_3_reg ( .D(SBOX_7_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_7__s0_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_6_reg ( .D(SBOX_7__s1_0), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_3_reg ( .D(SBOX_7_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_7__s1_0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_5_reg ( .D(SBOX_7_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_5_reg ( .D(SBOX_7_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_2_reg ( .D(SBOX_7_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_7_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_2_reg ( .D(SBOX_7_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_7_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_4_reg ( .D(SBOX_7_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_4_reg ( .D(SBOX_7_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_1_reg ( .D(SBOX_7_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_7_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_1_reg ( .D(SBOX_7_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_7_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_7_reg ( .D(SBOX_7__s0_3_), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_7_reg_1_s0_reg ( .D(SBOX_7_reg_0_s0), .CK(CLK), .Q(SBOX_7__s0_3_), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_7_reg ( .D(SBOX_7_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_7_reg_1_s1_reg ( .D(SBOX_7_reg_0_s1), .CK(CLK), .Q(
        SBOX_7_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_2_reg ( .D(SHARE2_IN[31]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_2_reg ( .D(SHARE1_IN[31]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_3_reg ( .D(SHARE2_IN[30]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_1_reg ( .D(SHARE1_IN[28]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_3_reg ( .D(SHARE1_IN[30]), .CK(CLK), .Q(
        SBOX_7_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_1_reg ( .D(SHARE2_IN[28]), .CK(CLK), .Q(
        SBOX_7_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_7_reg_0_s0_reg ( .D(SHARE1_IN[29]), .CK(CLK), .Q(SBOX_7_reg_0_s0), .QN() );
  DFF_X1 SBOX_7_reg_0_s1_reg ( .D(SHARE2_IN[29]), .CK(CLK), .Q(SBOX_7_reg_0_s1), .QN() );
  INV_X1 SBOX_7_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[31]), .ZN(
        SBOX_7_not_0_Masked_z_0_) );
  INV_X1 SBOX_7_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[30]), .ZN(
        SBOX_7_not_1_Masked_z_0_) );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[30]), .A2(
        SHARE2_IN[31]), .ZN(SBOX_7_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_7_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[31]), .A2(
        SBOX_7_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_7_and_0_Masked_and_hpc_U12 ( .A(SBOX_7_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[30]), .ZN(SBOX_7_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_7_and_0_Masked_and_hpc_U11 ( .A(RAND[28]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_7_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_7_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_7_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_7_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_U8 ( .A(SBOX_7_and_0_Masked_and_hpc_z[1]), .B(SBOX_7_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_7_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_7_and_0_Masked_and_hpc_n5), .Z(SBOX_7_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_U6 ( .A(SBOX_7_and_0_Masked_and_hpc_z[0]), .B(SBOX_7_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_7_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_7_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_7_and_0_Masked_and_hpc_n4), .Z(SBOX_7_and_0_Masked_z[0]) );
  AND2_X1 SBOX_7_and_0_Masked_and_hpc_U4 ( .A1(SBOX_7_not_1_Masked_z_0_), .A2(
        SBOX_7_not_0_Masked_z_0_), .ZN(SBOX_7_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_7_and_0_Masked_and_hpc_U3 ( .A1(SBOX_7_not_0_Masked_z_0_), .A2(
        SBOX_7_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_7_and_0_Masked_and_hpc_U2 ( .A(SBOX_7_and_0_Masked_and_hpc_n6), 
        .B(SBOX_7_not_1_Masked_z_0_), .ZN(
        SBOX_7_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_7_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[31]), .CK(CLK), .Q(SBOX_7_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_7_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_7_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_7_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_0_Masked_z[0]), 
        .B(SBOX_7_xor_0_Masked_x[0]), .Z(SBOX_7_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_0_Masked_z[1]), 
        .B(SBOX_7_xor_0_Masked_x[1]), .Z(SBOX_7_not_6_Masked_z[1]) );
  INV_X1 SBOX_7_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[30]), .ZN(
        SBOX_7_not_2_Masked_z_0_) );
  INV_X1 SBOX_7_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[29]), .ZN(
        SBOX_7_not_3_Masked_z_0_) );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[29]), .A2(
        SHARE2_IN[30]), .ZN(SBOX_7_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_7_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[30]), .A2(
        SBOX_7_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_7_and_1_Masked_and_hpc_U12 ( .A(SBOX_7_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[29]), .ZN(SBOX_7_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_7_and_1_Masked_and_hpc_U11 ( .A(RAND[29]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_7_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_7_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_7_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_7_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_U8 ( .A(SBOX_7_and_1_Masked_and_hpc_z[1]), .B(SBOX_7_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_7_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_7_and_1_Masked_and_hpc_n5), .Z(SBOX_7_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_U6 ( .A(SBOX_7_and_1_Masked_and_hpc_z[0]), .B(SBOX_7_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_7_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_7_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_7_and_1_Masked_and_hpc_n4), .Z(SBOX_7_and_1_Masked_z[0]) );
  AND2_X1 SBOX_7_and_1_Masked_and_hpc_U4 ( .A1(SBOX_7_not_3_Masked_z_0_), .A2(
        SBOX_7_not_2_Masked_z_0_), .ZN(SBOX_7_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_7_and_1_Masked_and_hpc_U3 ( .A1(SBOX_7_not_2_Masked_z_0_), .A2(
        SBOX_7_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_7_and_1_Masked_and_hpc_U2 ( .A(SBOX_7_and_1_Masked_and_hpc_n6), 
        .B(SBOX_7_not_3_Masked_z_0_), .ZN(
        SBOX_7_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_7_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[30]), .CK(CLK), .Q(SBOX_7_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_7_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_7_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_7_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_1_Masked_z[0]), 
        .B(SBOX_7_xor_1_Masked_x[0]), .Z(SBOX_7_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_7_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_1_Masked_z[1]), 
        .B(SBOX_7_xor_1_Masked_x[1]), .Z(SBOX_7_not_7_Masked_z[1]) );
  INV_X1 SBOX_7_not_4_Masked_not_hpc_U1 ( .A(SBOX_7__s0_3_), .ZN(
        SBOX_7_not_4_Masked_z[0]) );
  INV_X1 SBOX_7_not_5_Masked_not_hpc_U1 ( .A(SBOX_7_xor_0_Masked_z_0_), .ZN(
        SBOX_7_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_7_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_7_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_7_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_7_and_2_Masked_and_hpc_n4), .Z(SBOX_7_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_7_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_7_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_7_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_7_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_7_and_2_Masked_and_hpc_n5), .Z(SBOX_7_and_2_Masked_z[1]) );
  INV_X1 SBOX_7_and_2_Masked_and_hpc_U10 ( .A(RAND[30]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_n6) );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_7_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_7_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_7_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_7_and_2_Masked_and_hpc_U7 ( .A1(SBOX_7_not_4_Masked_z[1]), .A2(
        SBOX_7_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_U6 ( .A1(SBOX_7_not_6_Masked_z[1]), .A2(
        SBOX_7_not_4_Masked_z[1]), .ZN(SBOX_7_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_7_and_2_Masked_and_hpc_U5 ( .A1(SBOX_7_not_4_Masked_z[0]), .A2(
        SBOX_7_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_7_and_2_Masked_and_hpc_U4 ( .A1(SBOX_7_not_5_Masked_z_0_), .A2(
        SBOX_7_not_4_Masked_z[0]), .ZN(SBOX_7_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_7_and_2_Masked_and_hpc_U3 ( .A(SBOX_7_and_2_Masked_and_hpc_n6), 
        .B(SBOX_7_not_6_Masked_z[1]), .ZN(
        SBOX_7_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_7_and_2_Masked_and_hpc_U2 ( .A(SBOX_7_and_2_Masked_and_hpc_n6), 
        .B(SBOX_7_not_5_Masked_z_0_), .ZN(
        SBOX_7_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_7_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_7_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_7_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_7_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_7_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_2_Masked_z[0]), 
        .B(SBOX_7_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[29]) );
  XOR2_X1 SBOX_7_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_2_Masked_z[1]), 
        .B(SBOX_7_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[93]) );
  INV_X1 SBOX_7_not_6_Masked_not_hpc_U1 ( .A(SBOX_7_xor_0_Masked_z_0_), .ZN(
        SBOX_7_not_6_Masked_z[0]) );
  INV_X1 SBOX_7_not_7_Masked_not_hpc_U1 ( .A(SBOX_7_xor_1_Masked_z_0_), .ZN(
        SBOX_7_not_7_Masked_z[0]) );
  INV_X1 SBOX_7_and_3_Masked_and_hpc_U14 ( .A(RAND[31]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_7_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_7_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_7_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_7_and_3_Masked_and_hpc_n4), .Z(SBOX_7_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_7_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_7_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_7_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_7_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_7_and_3_Masked_and_hpc_n5), .Z(SBOX_7_and_3_Masked_z[1]) );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_7_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_7_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_7_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_7_and_3_Masked_and_hpc_U7 ( .A1(SBOX_7_not_6_Masked_z[1]), .A2(
        SBOX_7_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_7_and_3_Masked_and_hpc_U6 ( .A(SBOX_7_and_3_Masked_and_hpc_n6), 
        .B(SBOX_7_not_7_Masked_z[1]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_U5 ( .A1(SBOX_7_not_7_Masked_z[1]), .A2(
        SBOX_7_not_6_Masked_z[1]), .ZN(SBOX_7_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_7_and_3_Masked_and_hpc_U4 ( .A1(SBOX_7_not_6_Masked_z[0]), .A2(
        SBOX_7_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_7_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_7_and_3_Masked_and_hpc_U3 ( .A(SBOX_7_and_3_Masked_and_hpc_n6), 
        .B(SBOX_7_not_7_Masked_z[0]), .ZN(
        SBOX_7_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_7_and_3_Masked_and_hpc_U2 ( .A1(SBOX_7_not_7_Masked_z[0]), .A2(
        SBOX_7_not_6_Masked_z[0]), .ZN(SBOX_7_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_7_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_7_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_7_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_7_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_7_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_7_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_7_and_3_Masked_z[0]), 
        .B(SBOX_7_xor_3_Masked_x[0]), .Z(SHIFTROWS[20]) );
  XOR2_X1 SBOX_7_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_7_and_3_Masked_z[1]), 
        .B(SBOX_7_xor_3_Masked_x[1]), .Z(SHIFTROWS[84]) );
  DFF_X1 SBOX_8_reg_1_s0_7_reg ( .D(SBOX_8_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_8_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_7_reg ( .D(SBOX_8_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_8_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_6_reg ( .D(SBOX_8_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_8_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_6_reg ( .D(SBOX_8_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_8_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_5_reg ( .D(SBOX_8_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[34]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_5_reg ( .D(SBOX_8_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[98]), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_4_reg ( .D(SBOX_8_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[35]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_4_reg ( .D(SBOX_8_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[99]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_6_reg ( .D(SBOX_8__s0_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_3_reg ( .D(SBOX_8_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_8__s0_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_6_reg ( .D(SBOX_8__s1_0), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_3_reg ( .D(SBOX_8_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_8__s1_0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_5_reg ( .D(SBOX_8_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_5_reg ( .D(SBOX_8_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_2_reg ( .D(SBOX_8_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_8_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_2_reg ( .D(SBOX_8_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_8_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_4_reg ( .D(SBOX_8_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_4_reg ( .D(SBOX_8_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_1_reg ( .D(SBOX_8_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_8_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_1_reg ( .D(SBOX_8_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_8_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_7_reg ( .D(SBOX_8__s0_3_), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_8_reg_1_s0_reg ( .D(SBOX_8_reg_0_s0), .CK(CLK), .Q(SBOX_8__s0_3_), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_7_reg ( .D(SBOX_8_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_8_reg_1_s1_reg ( .D(SBOX_8_reg_0_s1), .CK(CLK), .Q(
        SBOX_8_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_2_reg ( .D(SHARE2_IN[35]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_2_reg ( .D(SHARE1_IN[35]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_3_reg ( .D(SHARE2_IN[34]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_1_reg ( .D(SHARE1_IN[32]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_3_reg ( .D(SHARE1_IN[34]), .CK(CLK), .Q(
        SBOX_8_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_1_reg ( .D(SHARE2_IN[32]), .CK(CLK), .Q(
        SBOX_8_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_8_reg_0_s0_reg ( .D(SHARE1_IN[33]), .CK(CLK), .Q(SBOX_8_reg_0_s0), .QN() );
  DFF_X1 SBOX_8_reg_0_s1_reg ( .D(SHARE2_IN[33]), .CK(CLK), .Q(SBOX_8_reg_0_s1), .QN() );
  INV_X1 SBOX_8_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[35]), .ZN(
        SBOX_8_not_0_Masked_z_0_) );
  INV_X1 SBOX_8_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[34]), .ZN(
        SBOX_8_not_1_Masked_z_0_) );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[34]), .A2(
        SHARE2_IN[35]), .ZN(SBOX_8_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_8_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[35]), .A2(
        SBOX_8_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_8_and_0_Masked_and_hpc_U12 ( .A(SBOX_8_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[34]), .ZN(SBOX_8_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_8_and_0_Masked_and_hpc_U11 ( .A(RAND[32]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_8_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_8_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_8_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_8_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_U8 ( .A(SBOX_8_and_0_Masked_and_hpc_z[1]), .B(SBOX_8_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_8_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_8_and_0_Masked_and_hpc_n5), .Z(SBOX_8_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_U6 ( .A(SBOX_8_and_0_Masked_and_hpc_z[0]), .B(SBOX_8_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_8_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_8_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_8_and_0_Masked_and_hpc_n4), .Z(SBOX_8_and_0_Masked_z[0]) );
  AND2_X1 SBOX_8_and_0_Masked_and_hpc_U4 ( .A1(SBOX_8_not_1_Masked_z_0_), .A2(
        SBOX_8_not_0_Masked_z_0_), .ZN(SBOX_8_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_8_and_0_Masked_and_hpc_U3 ( .A1(SBOX_8_not_0_Masked_z_0_), .A2(
        SBOX_8_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_8_and_0_Masked_and_hpc_U2 ( .A(SBOX_8_and_0_Masked_and_hpc_n6), 
        .B(SBOX_8_not_1_Masked_z_0_), .ZN(
        SBOX_8_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_8_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[35]), .CK(CLK), .Q(SBOX_8_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_8_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_8_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_8_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_0_Masked_z[0]), 
        .B(SBOX_8_xor_0_Masked_x[0]), .Z(SBOX_8_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_0_Masked_z[1]), 
        .B(SBOX_8_xor_0_Masked_x[1]), .Z(SBOX_8_not_6_Masked_z[1]) );
  INV_X1 SBOX_8_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[34]), .ZN(
        SBOX_8_not_2_Masked_z_0_) );
  INV_X1 SBOX_8_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[33]), .ZN(
        SBOX_8_not_3_Masked_z_0_) );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[33]), .A2(
        SHARE2_IN[34]), .ZN(SBOX_8_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_8_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[34]), .A2(
        SBOX_8_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_8_and_1_Masked_and_hpc_U12 ( .A(SBOX_8_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[33]), .ZN(SBOX_8_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_8_and_1_Masked_and_hpc_U11 ( .A(RAND[33]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_8_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_8_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_8_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_8_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_U8 ( .A(SBOX_8_and_1_Masked_and_hpc_z[1]), .B(SBOX_8_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_8_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_8_and_1_Masked_and_hpc_n5), .Z(SBOX_8_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_U6 ( .A(SBOX_8_and_1_Masked_and_hpc_z[0]), .B(SBOX_8_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_8_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_8_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_8_and_1_Masked_and_hpc_n4), .Z(SBOX_8_and_1_Masked_z[0]) );
  AND2_X1 SBOX_8_and_1_Masked_and_hpc_U4 ( .A1(SBOX_8_not_3_Masked_z_0_), .A2(
        SBOX_8_not_2_Masked_z_0_), .ZN(SBOX_8_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_8_and_1_Masked_and_hpc_U3 ( .A1(SBOX_8_not_2_Masked_z_0_), .A2(
        SBOX_8_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_8_and_1_Masked_and_hpc_U2 ( .A(SBOX_8_and_1_Masked_and_hpc_n6), 
        .B(SBOX_8_not_3_Masked_z_0_), .ZN(
        SBOX_8_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_8_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[34]), .CK(CLK), .Q(SBOX_8_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_8_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_8_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_8_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_1_Masked_z[0]), 
        .B(SBOX_8_xor_1_Masked_x[0]), .Z(SBOX_8_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_8_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_1_Masked_z[1]), 
        .B(SBOX_8_xor_1_Masked_x[1]), .Z(SBOX_8_not_7_Masked_z[1]) );
  INV_X1 SBOX_8_not_4_Masked_not_hpc_U1 ( .A(SBOX_8__s0_3_), .ZN(
        SBOX_8_not_4_Masked_z[0]) );
  INV_X1 SBOX_8_not_5_Masked_not_hpc_U1 ( .A(SBOX_8_xor_0_Masked_z_0_), .ZN(
        SBOX_8_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_8_and_2_Masked_and_hpc_n4), .Z(SBOX_8_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_8_and_2_Masked_and_hpc_n5), .Z(SBOX_8_and_2_Masked_z[1]) );
  INV_X1 SBOX_8_and_2_Masked_and_hpc_U12 ( .A(RAND[34]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_8_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_8_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_8_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_8_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_8_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_8_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_8_and_2_Masked_and_hpc_n5) );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_8_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_8_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_8_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_8_and_2_Masked_and_hpc_U7 ( .A1(SBOX_8_not_4_Masked_z[1]), .A2(
        SBOX_8_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_U6 ( .A1(SBOX_8_not_6_Masked_z[1]), .A2(
        SBOX_8_not_4_Masked_z[1]), .ZN(SBOX_8_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_8_and_2_Masked_and_hpc_U5 ( .A1(SBOX_8_not_4_Masked_z[0]), .A2(
        SBOX_8_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_8_and_2_Masked_and_hpc_U4 ( .A1(SBOX_8_not_5_Masked_z_0_), .A2(
        SBOX_8_not_4_Masked_z[0]), .ZN(SBOX_8_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_8_and_2_Masked_and_hpc_U3 ( .A(SBOX_8_and_2_Masked_and_hpc_n6), 
        .B(SBOX_8_not_6_Masked_z[1]), .ZN(
        SBOX_8_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_8_and_2_Masked_and_hpc_U2 ( .A(SBOX_8_and_2_Masked_and_hpc_n6), 
        .B(SBOX_8_not_5_Masked_z_0_), .ZN(
        SBOX_8_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_8_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_8_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_8_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_8_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_8_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_2_Masked_z[0]), 
        .B(SBOX_8_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[33]) );
  XOR2_X1 SBOX_8_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_2_Masked_z[1]), 
        .B(SBOX_8_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[97]) );
  INV_X1 SBOX_8_not_6_Masked_not_hpc_U1 ( .A(SBOX_8_xor_0_Masked_z_0_), .ZN(
        SBOX_8_not_6_Masked_z[0]) );
  INV_X1 SBOX_8_not_7_Masked_not_hpc_U1 ( .A(SBOX_8_xor_1_Masked_z_0_), .ZN(
        SBOX_8_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_8_and_3_Masked_and_hpc_n4), .Z(SBOX_8_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_8_and_3_Masked_and_hpc_n5), .Z(SBOX_8_and_3_Masked_z[1]) );
  INV_X1 SBOX_8_and_3_Masked_and_hpc_U12 ( .A(RAND[35]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_8_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_8_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_8_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_8_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_8_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_8_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_8_and_3_Masked_and_hpc_n5) );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_8_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_8_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_8_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_8_and_3_Masked_and_hpc_U7 ( .A1(SBOX_8_not_6_Masked_z[1]), .A2(
        SBOX_8_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_8_and_3_Masked_and_hpc_U6 ( .A(SBOX_8_and_3_Masked_and_hpc_n6), 
        .B(SBOX_8_not_7_Masked_z[1]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_U5 ( .A1(SBOX_8_not_7_Masked_z[1]), .A2(
        SBOX_8_not_6_Masked_z[1]), .ZN(SBOX_8_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_8_and_3_Masked_and_hpc_U4 ( .A1(SBOX_8_not_6_Masked_z[0]), .A2(
        SBOX_8_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_8_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_8_and_3_Masked_and_hpc_U3 ( .A(SBOX_8_and_3_Masked_and_hpc_n6), 
        .B(SBOX_8_not_7_Masked_z[0]), .ZN(
        SBOX_8_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_8_and_3_Masked_and_hpc_U2 ( .A1(SBOX_8_not_7_Masked_z[0]), .A2(
        SBOX_8_not_6_Masked_z[0]), .ZN(SBOX_8_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_8_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_8_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_8_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_8_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_8_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_8_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_8_and_3_Masked_z[0]), 
        .B(SBOX_8_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[32]) );
  XOR2_X1 SBOX_8_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_8_and_3_Masked_z[1]), 
        .B(SBOX_8_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[96]) );
  DFF_X1 SBOX_9_reg_1_s0_7_reg ( .D(SBOX_9_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_9_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_7_reg ( .D(SBOX_9_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_9_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_6_reg ( .D(SBOX_9_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_9_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_6_reg ( .D(SBOX_9_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_9_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_5_reg ( .D(SBOX_9_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[38]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_5_reg ( .D(SBOX_9_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[102]), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_4_reg ( .D(SBOX_9_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[39]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_4_reg ( .D(SBOX_9_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[103]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_6_reg ( .D(SBOX_9__s0_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_3_reg ( .D(SBOX_9_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_9__s0_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_6_reg ( .D(SBOX_9__s1_0), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_3_reg ( .D(SBOX_9_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_9__s1_0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_5_reg ( .D(SBOX_9_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_5_reg ( .D(SBOX_9_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_2_reg ( .D(SBOX_9_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_9_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_2_reg ( .D(SBOX_9_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_9_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_4_reg ( .D(SBOX_9_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_4_reg ( .D(SBOX_9_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_1_reg ( .D(SBOX_9_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_9_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_1_reg ( .D(SBOX_9_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_9_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_7_reg ( .D(SBOX_9__s0_3_), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_9_reg_1_s0_reg ( .D(SBOX_9_reg_0_s0), .CK(CLK), .Q(SBOX_9__s0_3_), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_7_reg ( .D(SBOX_9_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_9_reg_1_s1_reg ( .D(SBOX_9_reg_0_s1), .CK(CLK), .Q(
        SBOX_9_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_2_reg ( .D(SHARE2_IN[39]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_2_reg ( .D(SHARE1_IN[39]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_3_reg ( .D(SHARE2_IN[38]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_1_reg ( .D(SHARE1_IN[36]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_3_reg ( .D(SHARE1_IN[38]), .CK(CLK), .Q(
        SBOX_9_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_1_reg ( .D(SHARE2_IN[36]), .CK(CLK), .Q(
        SBOX_9_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_9_reg_0_s0_reg ( .D(SHARE1_IN[37]), .CK(CLK), .Q(SBOX_9_reg_0_s0), .QN() );
  DFF_X1 SBOX_9_reg_0_s1_reg ( .D(SHARE2_IN[37]), .CK(CLK), .Q(SBOX_9_reg_0_s1), .QN() );
  INV_X1 SBOX_9_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[39]), .ZN(
        SBOX_9_not_0_Masked_z_0_) );
  INV_X1 SBOX_9_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[38]), .ZN(
        SBOX_9_not_1_Masked_z_0_) );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[38]), .A2(
        SHARE2_IN[39]), .ZN(SBOX_9_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_9_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[39]), .A2(
        SBOX_9_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_9_and_0_Masked_and_hpc_U12 ( .A(SBOX_9_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[38]), .ZN(SBOX_9_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_9_and_0_Masked_and_hpc_U11 ( .A(RAND[36]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_9_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_9_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_9_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_9_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_U8 ( .A(SBOX_9_and_0_Masked_and_hpc_z[1]), .B(SBOX_9_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_9_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_9_and_0_Masked_and_hpc_n5), .Z(SBOX_9_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_U6 ( .A(SBOX_9_and_0_Masked_and_hpc_z[0]), .B(SBOX_9_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_9_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_9_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_9_and_0_Masked_and_hpc_n4), .Z(SBOX_9_and_0_Masked_z[0]) );
  AND2_X1 SBOX_9_and_0_Masked_and_hpc_U4 ( .A1(SBOX_9_not_1_Masked_z_0_), .A2(
        SBOX_9_not_0_Masked_z_0_), .ZN(SBOX_9_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_9_and_0_Masked_and_hpc_U3 ( .A1(SBOX_9_not_0_Masked_z_0_), .A2(
        SBOX_9_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_9_and_0_Masked_and_hpc_U2 ( .A(SBOX_9_and_0_Masked_and_hpc_n6), 
        .B(SBOX_9_not_1_Masked_z_0_), .ZN(
        SBOX_9_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_9_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[39]), .CK(CLK), .Q(SBOX_9_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_9_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_9_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_9_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_0_Masked_z[0]), 
        .B(SBOX_9_xor_0_Masked_x[0]), .Z(SBOX_9_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_0_Masked_z[1]), 
        .B(SBOX_9_xor_0_Masked_x[1]), .Z(SBOX_9_not_6_Masked_z[1]) );
  INV_X1 SBOX_9_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[38]), .ZN(
        SBOX_9_not_2_Masked_z_0_) );
  INV_X1 SBOX_9_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[37]), .ZN(
        SBOX_9_not_3_Masked_z_0_) );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[37]), .A2(
        SHARE2_IN[38]), .ZN(SBOX_9_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_9_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[38]), .A2(
        SBOX_9_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_9_and_1_Masked_and_hpc_U12 ( .A(SBOX_9_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[37]), .ZN(SBOX_9_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_9_and_1_Masked_and_hpc_U11 ( .A(RAND[37]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_9_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_9_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_9_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_9_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_U8 ( .A(SBOX_9_and_1_Masked_and_hpc_z[1]), .B(SBOX_9_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_9_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_9_and_1_Masked_and_hpc_n5), .Z(SBOX_9_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_U6 ( .A(SBOX_9_and_1_Masked_and_hpc_z[0]), .B(SBOX_9_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_9_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_9_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_9_and_1_Masked_and_hpc_n4), .Z(SBOX_9_and_1_Masked_z[0]) );
  AND2_X1 SBOX_9_and_1_Masked_and_hpc_U4 ( .A1(SBOX_9_not_3_Masked_z_0_), .A2(
        SBOX_9_not_2_Masked_z_0_), .ZN(SBOX_9_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_9_and_1_Masked_and_hpc_U3 ( .A1(SBOX_9_not_2_Masked_z_0_), .A2(
        SBOX_9_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_9_and_1_Masked_and_hpc_U2 ( .A(SBOX_9_and_1_Masked_and_hpc_n6), 
        .B(SBOX_9_not_3_Masked_z_0_), .ZN(
        SBOX_9_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_9_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[38]), .CK(CLK), .Q(SBOX_9_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_9_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_9_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_9_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_1_Masked_z[0]), 
        .B(SBOX_9_xor_1_Masked_x[0]), .Z(SBOX_9_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_9_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_1_Masked_z[1]), 
        .B(SBOX_9_xor_1_Masked_x[1]), .Z(SBOX_9_not_7_Masked_z[1]) );
  INV_X1 SBOX_9_not_4_Masked_not_hpc_U1 ( .A(SBOX_9__s0_3_), .ZN(
        SBOX_9_not_4_Masked_z[0]) );
  INV_X1 SBOX_9_not_5_Masked_not_hpc_U1 ( .A(SBOX_9_xor_0_Masked_z_0_), .ZN(
        SBOX_9_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_9_and_2_Masked_and_hpc_n4), .Z(SBOX_9_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_9_and_2_Masked_and_hpc_n5), .Z(SBOX_9_and_2_Masked_z[1]) );
  INV_X1 SBOX_9_and_2_Masked_and_hpc_U12 ( .A(RAND[38]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_9_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_9_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_9_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_9_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_9_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_9_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_9_and_2_Masked_and_hpc_n5) );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_9_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_9_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_9_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_9_and_2_Masked_and_hpc_U7 ( .A1(SBOX_9_not_4_Masked_z[1]), .A2(
        SBOX_9_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_U6 ( .A1(SBOX_9_not_6_Masked_z[1]), .A2(
        SBOX_9_not_4_Masked_z[1]), .ZN(SBOX_9_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_9_and_2_Masked_and_hpc_U5 ( .A1(SBOX_9_not_4_Masked_z[0]), .A2(
        SBOX_9_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_9_and_2_Masked_and_hpc_U4 ( .A1(SBOX_9_not_5_Masked_z_0_), .A2(
        SBOX_9_not_4_Masked_z[0]), .ZN(SBOX_9_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_9_and_2_Masked_and_hpc_U3 ( .A(SBOX_9_and_2_Masked_and_hpc_n6), 
        .B(SBOX_9_not_6_Masked_z[1]), .ZN(
        SBOX_9_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_9_and_2_Masked_and_hpc_U2 ( .A(SBOX_9_and_2_Masked_and_hpc_n6), 
        .B(SBOX_9_not_5_Masked_z_0_), .ZN(
        SBOX_9_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_9_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_9_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_9_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_9_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_9_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_2_Masked_z[0]), 
        .B(SBOX_9_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[37]) );
  XOR2_X1 SBOX_9_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_2_Masked_z[1]), 
        .B(SBOX_9_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[101]) );
  INV_X1 SBOX_9_not_6_Masked_not_hpc_U1 ( .A(SBOX_9_xor_0_Masked_z_0_), .ZN(
        SBOX_9_not_6_Masked_z[0]) );
  INV_X1 SBOX_9_not_7_Masked_not_hpc_U1 ( .A(SBOX_9_xor_1_Masked_z_0_), .ZN(
        SBOX_9_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_9_and_3_Masked_and_hpc_n4), .Z(SBOX_9_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_9_and_3_Masked_and_hpc_n5), .Z(SBOX_9_and_3_Masked_z[1]) );
  INV_X1 SBOX_9_and_3_Masked_and_hpc_U12 ( .A(RAND[39]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_9_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_9_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_9_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_9_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_9_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_9_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_9_and_3_Masked_and_hpc_n5) );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_9_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_9_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_9_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_9_and_3_Masked_and_hpc_U7 ( .A1(SBOX_9_not_6_Masked_z[1]), .A2(
        SBOX_9_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_9_and_3_Masked_and_hpc_U6 ( .A(SBOX_9_and_3_Masked_and_hpc_n6), 
        .B(SBOX_9_not_7_Masked_z[1]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_U5 ( .A1(SBOX_9_not_7_Masked_z[1]), .A2(
        SBOX_9_not_6_Masked_z[1]), .ZN(SBOX_9_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_9_and_3_Masked_and_hpc_U4 ( .A1(SBOX_9_not_6_Masked_z[0]), .A2(
        SBOX_9_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_9_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_9_and_3_Masked_and_hpc_U3 ( .A(SBOX_9_and_3_Masked_and_hpc_n6), 
        .B(SBOX_9_not_7_Masked_z[0]), .ZN(
        SBOX_9_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_9_and_3_Masked_and_hpc_U2 ( .A1(SBOX_9_not_7_Masked_z[0]), .A2(
        SBOX_9_not_6_Masked_z[0]), .ZN(SBOX_9_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_9_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_9_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_9_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_9_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_9_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_9_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_9_and_3_Masked_z[0]), 
        .B(SBOX_9_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[36]) );
  XOR2_X1 SBOX_9_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_9_and_3_Masked_z[1]), 
        .B(SBOX_9_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[100]) );
  DFF_X1 SBOX_10_reg_1_s0_7_reg ( .D(SBOX_10_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_10_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_7_reg ( .D(SBOX_10_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_10_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_6_reg ( .D(SBOX_10_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_10_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_6_reg ( .D(SBOX_10_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_10_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_5_reg ( .D(SBOX_10_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[42]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_5_reg ( .D(SBOX_10_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[106]), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_4_reg ( .D(SBOX_10_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[43]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_4_reg ( .D(SBOX_10_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[107]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_6_reg ( .D(SBOX_10__s0_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_3_reg ( .D(SBOX_10_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_10__s0_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_6_reg ( .D(SBOX_10__s1_0), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_3_reg ( .D(SBOX_10_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_10__s1_0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_5_reg ( .D(SBOX_10_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_5_reg ( .D(SBOX_10_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_2_reg ( .D(SBOX_10_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_10_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_2_reg ( .D(SBOX_10_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_10_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_4_reg ( .D(SBOX_10_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_4_reg ( .D(SBOX_10_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_1_reg ( .D(SBOX_10_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_10_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_1_reg ( .D(SBOX_10_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_10_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_7_reg ( .D(SBOX_10__s0_3_), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_10_reg_1_s0_reg ( .D(SBOX_10_reg_0_s0), .CK(CLK), .Q(
        SBOX_10__s0_3_), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_7_reg ( .D(SBOX_10_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_10_reg_1_s1_reg ( .D(SBOX_10_reg_0_s1), .CK(CLK), .Q(
        SBOX_10_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_2_reg ( .D(SHARE2_IN[43]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_2_reg ( .D(SHARE1_IN[43]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_3_reg ( .D(SHARE2_IN[42]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_1_reg ( .D(SHARE1_IN[40]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_3_reg ( .D(SHARE1_IN[42]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_1_reg ( .D(SHARE2_IN[40]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_10_reg_0_s0_reg ( .D(SHARE1_IN[41]), .CK(CLK), .Q(
        SBOX_10_reg_0_s0), .QN() );
  DFF_X1 SBOX_10_reg_0_s1_reg ( .D(SHARE2_IN[41]), .CK(CLK), .Q(
        SBOX_10_reg_0_s1), .QN() );
  INV_X1 SBOX_10_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[43]), .ZN(
        SBOX_10_not_0_Masked_z_0_) );
  INV_X1 SBOX_10_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[42]), .ZN(
        SBOX_10_not_1_Masked_z_0_) );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[42]), .A2(
        SHARE2_IN[43]), .ZN(SBOX_10_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_10_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[43]), .A2(
        SBOX_10_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_10_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_10_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[42]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_10_and_0_Masked_and_hpc_U11 ( .A(RAND[40]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_10_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_10_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_10_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_10_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_10_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_10_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_10_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_10_and_0_Masked_and_hpc_n5), .Z(SBOX_10_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_10_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_10_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_10_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_10_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_10_and_0_Masked_and_hpc_n4), .Z(SBOX_10_and_0_Masked_z[0]) );
  AND2_X1 SBOX_10_and_0_Masked_and_hpc_U4 ( .A1(SBOX_10_not_1_Masked_z_0_), 
        .A2(SBOX_10_not_0_Masked_z_0_), .ZN(
        SBOX_10_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_10_and_0_Masked_and_hpc_U3 ( .A1(SBOX_10_not_0_Masked_z_0_), 
        .A2(SBOX_10_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_10_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_10_and_0_Masked_and_hpc_n6), .B(SBOX_10_not_1_Masked_z_0_), .ZN(
        SBOX_10_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_10_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[43]), .CK(CLK), .Q(SBOX_10_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_10_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_10_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_10_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_0_Masked_z[0]), .B(SBOX_10_xor_0_Masked_x[0]), .Z(SBOX_10_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_0_Masked_z[1]), .B(SBOX_10_xor_0_Masked_x[1]), .Z(SBOX_10_not_6_Masked_z[1]) );
  INV_X1 SBOX_10_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[42]), .ZN(
        SBOX_10_not_2_Masked_z_0_) );
  INV_X1 SBOX_10_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[41]), .ZN(
        SBOX_10_not_3_Masked_z_0_) );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[41]), .A2(
        SHARE2_IN[42]), .ZN(SBOX_10_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_10_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[42]), .A2(
        SBOX_10_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_10_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_10_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[41]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_10_and_1_Masked_and_hpc_U11 ( .A(RAND[41]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_10_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_10_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_10_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_10_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_10_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_10_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_10_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_10_and_1_Masked_and_hpc_n5), .Z(SBOX_10_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_10_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_10_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_10_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_10_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_10_and_1_Masked_and_hpc_n4), .Z(SBOX_10_and_1_Masked_z[0]) );
  AND2_X1 SBOX_10_and_1_Masked_and_hpc_U4 ( .A1(SBOX_10_not_3_Masked_z_0_), 
        .A2(SBOX_10_not_2_Masked_z_0_), .ZN(
        SBOX_10_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_10_and_1_Masked_and_hpc_U3 ( .A1(SBOX_10_not_2_Masked_z_0_), 
        .A2(SBOX_10_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_10_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_10_and_1_Masked_and_hpc_n6), .B(SBOX_10_not_3_Masked_z_0_), .ZN(
        SBOX_10_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_10_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[42]), .CK(CLK), .Q(SBOX_10_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_10_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_10_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_10_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_1_Masked_z[0]), .B(SBOX_10_xor_1_Masked_x[0]), .Z(SBOX_10_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_10_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_1_Masked_z[1]), .B(SBOX_10_xor_1_Masked_x[1]), .Z(SBOX_10_not_7_Masked_z[1]) );
  INV_X1 SBOX_10_not_4_Masked_not_hpc_U1 ( .A(SBOX_10__s0_3_), .ZN(
        SBOX_10_not_4_Masked_z[0]) );
  INV_X1 SBOX_10_not_5_Masked_not_hpc_U1 ( .A(SBOX_10_xor_0_Masked_z_0_), .ZN(
        SBOX_10_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_10_and_2_Masked_and_hpc_n4), .Z(SBOX_10_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_10_and_2_Masked_and_hpc_n5), .Z(SBOX_10_and_2_Masked_z[1]) );
  INV_X1 SBOX_10_and_2_Masked_and_hpc_U12 ( .A(RAND[42]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_10_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_10_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_10_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_10_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_10_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_10_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_10_and_2_Masked_and_hpc_n5) );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_10_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_10_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_10_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_10_and_2_Masked_and_hpc_U7 ( .A1(SBOX_10_not_4_Masked_z[1]), 
        .A2(SBOX_10_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_U6 ( .A1(SBOX_10_not_6_Masked_z[1]), 
        .A2(SBOX_10_not_4_Masked_z[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_10_and_2_Masked_and_hpc_U5 ( .A1(SBOX_10_not_4_Masked_z[0]), 
        .A2(SBOX_10_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_10_and_2_Masked_and_hpc_U4 ( .A1(SBOX_10_not_5_Masked_z_0_), 
        .A2(SBOX_10_not_4_Masked_z[0]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_10_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_10_and_2_Masked_and_hpc_n6), .B(SBOX_10_not_6_Masked_z[1]), .ZN(
        SBOX_10_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_10_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_10_and_2_Masked_and_hpc_n6), .B(SBOX_10_not_5_Masked_z_0_), .ZN(
        SBOX_10_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_10_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_10_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_10_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_10_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_10_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_2_Masked_z[0]), .B(SBOX_10_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[41]) );
  XOR2_X1 SBOX_10_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_2_Masked_z[1]), .B(SBOX_10_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[105]) );
  INV_X1 SBOX_10_not_6_Masked_not_hpc_U1 ( .A(SBOX_10_xor_0_Masked_z_0_), .ZN(
        SBOX_10_not_6_Masked_z[0]) );
  INV_X1 SBOX_10_not_7_Masked_not_hpc_U1 ( .A(SBOX_10_xor_1_Masked_z_0_), .ZN(
        SBOX_10_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_10_and_3_Masked_and_hpc_n4), .Z(SBOX_10_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_10_and_3_Masked_and_hpc_n5), .Z(SBOX_10_and_3_Masked_z[1]) );
  INV_X1 SBOX_10_and_3_Masked_and_hpc_U12 ( .A(RAND[43]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_10_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_10_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_10_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_10_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_10_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_10_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_10_and_3_Masked_and_hpc_n5) );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_10_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_10_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_10_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_10_and_3_Masked_and_hpc_U7 ( .A1(SBOX_10_not_6_Masked_z[1]), 
        .A2(SBOX_10_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_10_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_10_and_3_Masked_and_hpc_n6), .B(SBOX_10_not_7_Masked_z[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_U5 ( .A1(SBOX_10_not_7_Masked_z[1]), 
        .A2(SBOX_10_not_6_Masked_z[1]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_10_and_3_Masked_and_hpc_U4 ( .A1(SBOX_10_not_6_Masked_z[0]), 
        .A2(SBOX_10_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_10_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_10_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_10_and_3_Masked_and_hpc_n6), .B(SBOX_10_not_7_Masked_z[0]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_10_and_3_Masked_and_hpc_U2 ( .A1(SBOX_10_not_7_Masked_z[0]), 
        .A2(SBOX_10_not_6_Masked_z[0]), .ZN(
        SBOX_10_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_10_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_10_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_10_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_10_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_10_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_10_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_10_and_3_Masked_z[0]), .B(SBOX_10_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[40]) );
  XOR2_X1 SBOX_10_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_10_and_3_Masked_z[1]), .B(SBOX_10_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[104]) );
  DFF_X1 SBOX_11_reg_1_s0_7_reg ( .D(SBOX_11_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_11_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_7_reg ( .D(SBOX_11_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_11_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_6_reg ( .D(SBOX_11_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_11_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_6_reg ( .D(SBOX_11_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_11_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_5_reg ( .D(SBOX_11_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[46]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_5_reg ( .D(SBOX_11_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[110]), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_4_reg ( .D(SBOX_11_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[47]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_4_reg ( .D(SBOX_11_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[111]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_6_reg ( .D(SBOX_11__s0_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_3_reg ( .D(SBOX_11_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_11__s0_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_6_reg ( .D(SBOX_11__s1_0), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_3_reg ( .D(SBOX_11_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_11__s1_0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_5_reg ( .D(SBOX_11_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_5_reg ( .D(SBOX_11_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_2_reg ( .D(SBOX_11_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_11_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_2_reg ( .D(SBOX_11_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_11_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_4_reg ( .D(SBOX_11_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_4_reg ( .D(SBOX_11_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_1_reg ( .D(SBOX_11_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_11_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_1_reg ( .D(SBOX_11_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_11_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_7_reg ( .D(SBOX_11__s0_3_), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_11_reg_1_s0_reg ( .D(SBOX_11_reg_0_s0), .CK(CLK), .Q(
        SBOX_11__s0_3_), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_7_reg ( .D(SBOX_11_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_11_reg_1_s1_reg ( .D(SBOX_11_reg_0_s1), .CK(CLK), .Q(
        SBOX_11_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_2_reg ( .D(SHARE2_IN[47]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_2_reg ( .D(SHARE1_IN[47]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_3_reg ( .D(SHARE2_IN[46]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_1_reg ( .D(SHARE1_IN[44]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_3_reg ( .D(SHARE1_IN[46]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_1_reg ( .D(SHARE2_IN[44]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_11_reg_0_s0_reg ( .D(SHARE1_IN[45]), .CK(CLK), .Q(
        SBOX_11_reg_0_s0), .QN() );
  DFF_X1 SBOX_11_reg_0_s1_reg ( .D(SHARE2_IN[45]), .CK(CLK), .Q(
        SBOX_11_reg_0_s1), .QN() );
  INV_X1 SBOX_11_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[47]), .ZN(
        SBOX_11_not_0_Masked_z_0_) );
  INV_X1 SBOX_11_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[46]), .ZN(
        SBOX_11_not_1_Masked_z_0_) );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[46]), .A2(
        SHARE2_IN[47]), .ZN(SBOX_11_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_11_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[47]), .A2(
        SBOX_11_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_11_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_11_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[46]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_11_and_0_Masked_and_hpc_U11 ( .A(RAND[44]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_11_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_11_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_11_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_11_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_11_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_11_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_11_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_11_and_0_Masked_and_hpc_n5), .Z(SBOX_11_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_11_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_11_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_11_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_11_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_11_and_0_Masked_and_hpc_n4), .Z(SBOX_11_and_0_Masked_z[0]) );
  AND2_X1 SBOX_11_and_0_Masked_and_hpc_U4 ( .A1(SBOX_11_not_1_Masked_z_0_), 
        .A2(SBOX_11_not_0_Masked_z_0_), .ZN(
        SBOX_11_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_11_and_0_Masked_and_hpc_U3 ( .A1(SBOX_11_not_0_Masked_z_0_), 
        .A2(SBOX_11_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_11_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_11_and_0_Masked_and_hpc_n6), .B(SBOX_11_not_1_Masked_z_0_), .ZN(
        SBOX_11_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_11_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[47]), .CK(CLK), .Q(SBOX_11_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_11_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_11_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_11_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_0_Masked_z[0]), .B(SBOX_11_xor_0_Masked_x[0]), .Z(SBOX_11_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_0_Masked_z[1]), .B(SBOX_11_xor_0_Masked_x[1]), .Z(SBOX_11_not_6_Masked_z[1]) );
  INV_X1 SBOX_11_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[46]), .ZN(
        SBOX_11_not_2_Masked_z_0_) );
  INV_X1 SBOX_11_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[45]), .ZN(
        SBOX_11_not_3_Masked_z_0_) );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[45]), .A2(
        SHARE2_IN[46]), .ZN(SBOX_11_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_11_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[46]), .A2(
        SBOX_11_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_11_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_11_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[45]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_11_and_1_Masked_and_hpc_U11 ( .A(RAND[45]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_11_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_11_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_11_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_11_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_11_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_11_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_11_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_11_and_1_Masked_and_hpc_n5), .Z(SBOX_11_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_11_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_11_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_11_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_11_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_11_and_1_Masked_and_hpc_n4), .Z(SBOX_11_and_1_Masked_z[0]) );
  AND2_X1 SBOX_11_and_1_Masked_and_hpc_U4 ( .A1(SBOX_11_not_3_Masked_z_0_), 
        .A2(SBOX_11_not_2_Masked_z_0_), .ZN(
        SBOX_11_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_11_and_1_Masked_and_hpc_U3 ( .A1(SBOX_11_not_2_Masked_z_0_), 
        .A2(SBOX_11_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_11_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_11_and_1_Masked_and_hpc_n6), .B(SBOX_11_not_3_Masked_z_0_), .ZN(
        SBOX_11_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_11_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[46]), .CK(CLK), .Q(SBOX_11_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_11_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_11_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_11_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_1_Masked_z[0]), .B(SBOX_11_xor_1_Masked_x[0]), .Z(SBOX_11_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_11_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_1_Masked_z[1]), .B(SBOX_11_xor_1_Masked_x[1]), .Z(SBOX_11_not_7_Masked_z[1]) );
  INV_X1 SBOX_11_not_4_Masked_not_hpc_U1 ( .A(SBOX_11__s0_3_), .ZN(
        SBOX_11_not_4_Masked_z[0]) );
  INV_X1 SBOX_11_not_5_Masked_not_hpc_U1 ( .A(SBOX_11_xor_0_Masked_z_0_), .ZN(
        SBOX_11_not_5_Masked_z_0_) );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_U14 ( .A(
        SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_11_and_2_Masked_and_hpc_n5), .Z(SBOX_11_and_2_Masked_z[1]) );
  INV_X1 SBOX_11_and_2_Masked_and_hpc_U13 ( .A(RAND[46]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_11_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_11_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_11_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_11_and_2_Masked_and_hpc_n4), .Z(SBOX_11_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_11_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_11_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_11_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_11_and_2_Masked_and_hpc_n5) );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_11_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_11_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_11_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_11_and_2_Masked_and_hpc_U7 ( .A1(SBOX_11_not_4_Masked_z[1]), 
        .A2(SBOX_11_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_U6 ( .A1(SBOX_11_not_6_Masked_z[1]), 
        .A2(SBOX_11_not_4_Masked_z[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_11_and_2_Masked_and_hpc_U5 ( .A1(SBOX_11_not_4_Masked_z[0]), 
        .A2(SBOX_11_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_11_and_2_Masked_and_hpc_U4 ( .A1(SBOX_11_not_5_Masked_z_0_), 
        .A2(SBOX_11_not_4_Masked_z[0]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_11_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_11_and_2_Masked_and_hpc_n6), .B(SBOX_11_not_6_Masked_z[1]), .ZN(
        SBOX_11_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_11_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_11_and_2_Masked_and_hpc_n6), .B(SBOX_11_not_5_Masked_z_0_), .ZN(
        SBOX_11_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_11_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_11_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_11_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_11_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_11_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_2_Masked_z[0]), .B(SBOX_11_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[45]) );
  XOR2_X1 SBOX_11_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_2_Masked_z[1]), .B(SBOX_11_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[109]) );
  INV_X1 SBOX_11_not_6_Masked_not_hpc_U1 ( .A(SBOX_11_xor_0_Masked_z_0_), .ZN(
        SBOX_11_not_6_Masked_z[0]) );
  INV_X1 SBOX_11_not_7_Masked_not_hpc_U1 ( .A(SBOX_11_xor_1_Masked_z_0_), .ZN(
        SBOX_11_not_7_Masked_z[0]) );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_U14 ( .A(
        SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_11_and_3_Masked_and_hpc_n5), .Z(SBOX_11_and_3_Masked_z[1]) );
  INV_X1 SBOX_11_and_3_Masked_and_hpc_U13 ( .A(RAND[47]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_11_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_11_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_11_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_11_and_3_Masked_and_hpc_n4), .Z(SBOX_11_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_11_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_11_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_11_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_11_and_3_Masked_and_hpc_n5) );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_11_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_11_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_11_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_11_and_3_Masked_and_hpc_U7 ( .A1(SBOX_11_not_6_Masked_z[1]), 
        .A2(SBOX_11_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_11_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_11_and_3_Masked_and_hpc_n6), .B(SBOX_11_not_7_Masked_z[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_U5 ( .A1(SBOX_11_not_7_Masked_z[1]), 
        .A2(SBOX_11_not_6_Masked_z[1]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_11_and_3_Masked_and_hpc_U4 ( .A1(SBOX_11_not_6_Masked_z[0]), 
        .A2(SBOX_11_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_11_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_11_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_11_and_3_Masked_and_hpc_n6), .B(SBOX_11_not_7_Masked_z[0]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_11_and_3_Masked_and_hpc_U2 ( .A1(SBOX_11_not_7_Masked_z[0]), 
        .A2(SBOX_11_not_6_Masked_z[0]), .ZN(
        SBOX_11_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_11_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_11_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_11_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_11_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_11_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_11_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_11_and_3_Masked_z[0]), .B(SBOX_11_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[44]) );
  XOR2_X1 SBOX_11_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_11_and_3_Masked_z[1]), .B(SBOX_11_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[108]) );
  DFF_X1 SBOX_12_reg_1_s0_7_reg ( .D(SBOX_12_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_12_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_7_reg ( .D(SBOX_12_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_12_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_6_reg ( .D(SBOX_12_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_12_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_6_reg ( .D(SBOX_12_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_12_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_5_reg ( .D(SBOX_12_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[50]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_5_reg ( .D(SBOX_12_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[114]), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_4_reg ( .D(SBOX_12_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[51]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_4_reg ( .D(SBOX_12_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[115]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_6_reg ( .D(SBOX_12__s0_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_3_reg ( .D(SBOX_12_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_12__s0_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_6_reg ( .D(SBOX_12__s1_0), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_3_reg ( .D(SBOX_12_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_12__s1_0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_5_reg ( .D(SBOX_12_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_5_reg ( .D(SBOX_12_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_2_reg ( .D(SBOX_12_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_12_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_2_reg ( .D(SBOX_12_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_12_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_4_reg ( .D(SBOX_12_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_4_reg ( .D(SBOX_12_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_1_reg ( .D(SBOX_12_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_12_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_1_reg ( .D(SBOX_12_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_12_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_7_reg ( .D(SBOX_12__s0_3_), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_12_reg_1_s0_reg ( .D(SBOX_12_reg_0_s0), .CK(CLK), .Q(
        SBOX_12__s0_3_), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_7_reg ( .D(SBOX_12_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_12_reg_1_s1_reg ( .D(SBOX_12_reg_0_s1), .CK(CLK), .Q(
        SBOX_12_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_2_reg ( .D(SHARE2_IN[51]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_2_reg ( .D(SHARE1_IN[51]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_3_reg ( .D(SHARE2_IN[50]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_1_reg ( .D(SHARE1_IN[48]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_3_reg ( .D(SHARE1_IN[50]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_1_reg ( .D(SHARE2_IN[48]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_12_reg_0_s0_reg ( .D(SHARE1_IN[49]), .CK(CLK), .Q(
        SBOX_12_reg_0_s0), .QN() );
  DFF_X1 SBOX_12_reg_0_s1_reg ( .D(SHARE2_IN[49]), .CK(CLK), .Q(
        SBOX_12_reg_0_s1), .QN() );
  INV_X1 SBOX_12_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[51]), .ZN(
        SBOX_12_not_0_Masked_z_0_) );
  INV_X1 SBOX_12_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[50]), .ZN(
        SBOX_12_not_1_Masked_z_0_) );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[50]), .A2(
        SHARE2_IN[51]), .ZN(SBOX_12_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_12_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[51]), .A2(
        SBOX_12_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_12_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_12_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[50]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_12_and_0_Masked_and_hpc_U11 ( .A(RAND[48]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_12_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_12_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_12_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_12_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_12_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_12_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_12_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_12_and_0_Masked_and_hpc_n5), .Z(SBOX_12_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_12_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_12_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_12_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_12_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_12_and_0_Masked_and_hpc_n4), .Z(SBOX_12_and_0_Masked_z[0]) );
  AND2_X1 SBOX_12_and_0_Masked_and_hpc_U4 ( .A1(SBOX_12_not_1_Masked_z_0_), 
        .A2(SBOX_12_not_0_Masked_z_0_), .ZN(
        SBOX_12_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_12_and_0_Masked_and_hpc_U3 ( .A1(SBOX_12_not_0_Masked_z_0_), 
        .A2(SBOX_12_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_12_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_12_and_0_Masked_and_hpc_n6), .B(SBOX_12_not_1_Masked_z_0_), .ZN(
        SBOX_12_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_12_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[51]), .CK(CLK), .Q(SBOX_12_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_12_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_12_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_12_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_0_Masked_z[0]), .B(SBOX_12_xor_0_Masked_x[0]), .Z(SBOX_12_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_0_Masked_z[1]), .B(SBOX_12_xor_0_Masked_x[1]), .Z(SBOX_12_not_6_Masked_z[1]) );
  INV_X1 SBOX_12_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[50]), .ZN(
        SBOX_12_not_2_Masked_z_0_) );
  INV_X1 SBOX_12_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[49]), .ZN(
        SBOX_12_not_3_Masked_z_0_) );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[49]), .A2(
        SHARE2_IN[50]), .ZN(SBOX_12_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_12_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[50]), .A2(
        SBOX_12_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_12_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_12_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[49]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_12_and_1_Masked_and_hpc_U11 ( .A(RAND[49]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_12_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_12_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_12_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_12_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_12_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_12_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_12_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_12_and_1_Masked_and_hpc_n5), .Z(SBOX_12_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_12_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_12_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_12_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_12_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_12_and_1_Masked_and_hpc_n4), .Z(SBOX_12_and_1_Masked_z[0]) );
  AND2_X1 SBOX_12_and_1_Masked_and_hpc_U4 ( .A1(SBOX_12_not_3_Masked_z_0_), 
        .A2(SBOX_12_not_2_Masked_z_0_), .ZN(
        SBOX_12_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_12_and_1_Masked_and_hpc_U3 ( .A1(SBOX_12_not_2_Masked_z_0_), 
        .A2(SBOX_12_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_12_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_12_and_1_Masked_and_hpc_n6), .B(SBOX_12_not_3_Masked_z_0_), .ZN(
        SBOX_12_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_12_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[50]), .CK(CLK), .Q(SBOX_12_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_12_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_12_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_12_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_1_Masked_z[0]), .B(SBOX_12_xor_1_Masked_x[0]), .Z(SBOX_12_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_12_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_1_Masked_z[1]), .B(SBOX_12_xor_1_Masked_x[1]), .Z(SBOX_12_not_7_Masked_z[1]) );
  INV_X1 SBOX_12_not_4_Masked_not_hpc_U1 ( .A(SBOX_12__s0_3_), .ZN(
        SBOX_12_not_4_Masked_z[0]) );
  INV_X1 SBOX_12_not_5_Masked_not_hpc_U1 ( .A(SBOX_12_xor_0_Masked_z_0_), .ZN(
        SBOX_12_not_5_Masked_z_0_) );
  INV_X1 SBOX_12_and_2_Masked_and_hpc_U14 ( .A(RAND[50]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_12_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_12_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_12_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_12_and_2_Masked_and_hpc_n4), .Z(SBOX_12_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_12_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_12_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_12_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_12_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_12_and_2_Masked_and_hpc_n5), .Z(SBOX_12_and_2_Masked_z[1]) );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_12_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_12_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_12_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_12_and_2_Masked_and_hpc_U7 ( .A1(SBOX_12_not_4_Masked_z[1]), 
        .A2(SBOX_12_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_U6 ( .A1(SBOX_12_not_6_Masked_z[1]), 
        .A2(SBOX_12_not_4_Masked_z[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_12_and_2_Masked_and_hpc_U5 ( .A1(SBOX_12_not_4_Masked_z[0]), 
        .A2(SBOX_12_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_12_and_2_Masked_and_hpc_U4 ( .A1(SBOX_12_not_5_Masked_z_0_), 
        .A2(SBOX_12_not_4_Masked_z[0]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_12_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_12_and_2_Masked_and_hpc_n6), .B(SBOX_12_not_6_Masked_z[1]), .ZN(
        SBOX_12_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_12_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_12_and_2_Masked_and_hpc_n6), .B(SBOX_12_not_5_Masked_z_0_), .ZN(
        SBOX_12_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_12_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_12_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_12_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_12_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_12_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_2_Masked_z[0]), .B(SBOX_12_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[49]) );
  XOR2_X1 SBOX_12_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_2_Masked_z[1]), .B(SBOX_12_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[113]) );
  INV_X1 SBOX_12_not_6_Masked_not_hpc_U1 ( .A(SBOX_12_xor_0_Masked_z_0_), .ZN(
        SBOX_12_not_6_Masked_z[0]) );
  INV_X1 SBOX_12_not_7_Masked_not_hpc_U1 ( .A(SBOX_12_xor_1_Masked_z_0_), .ZN(
        SBOX_12_not_7_Masked_z[0]) );
  INV_X1 SBOX_12_and_3_Masked_and_hpc_U14 ( .A(RAND[51]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_12_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_12_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_12_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_12_and_3_Masked_and_hpc_n4), .Z(SBOX_12_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_12_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_12_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_12_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_12_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_12_and_3_Masked_and_hpc_n5), .Z(SBOX_12_and_3_Masked_z[1]) );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_12_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_12_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_12_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_12_and_3_Masked_and_hpc_U7 ( .A1(SBOX_12_not_6_Masked_z[1]), 
        .A2(SBOX_12_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_12_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_12_and_3_Masked_and_hpc_n6), .B(SBOX_12_not_7_Masked_z[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_U5 ( .A1(SBOX_12_not_7_Masked_z[1]), 
        .A2(SBOX_12_not_6_Masked_z[1]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_12_and_3_Masked_and_hpc_U4 ( .A1(SBOX_12_not_6_Masked_z[0]), 
        .A2(SBOX_12_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_12_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_12_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_12_and_3_Masked_and_hpc_n6), .B(SBOX_12_not_7_Masked_z[0]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_12_and_3_Masked_and_hpc_U2 ( .A1(SBOX_12_not_7_Masked_z[0]), 
        .A2(SBOX_12_not_6_Masked_z[0]), .ZN(
        SBOX_12_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_12_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_12_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_12_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_12_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_12_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_12_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_12_and_3_Masked_z[0]), .B(SBOX_12_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[48]) );
  XOR2_X1 SBOX_12_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_12_and_3_Masked_z[1]), .B(SBOX_12_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[112]) );
  DFF_X1 SBOX_13_reg_1_s0_7_reg ( .D(SBOX_13_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_13_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_7_reg ( .D(SBOX_13_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_13_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_6_reg ( .D(SBOX_13_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_13_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_6_reg ( .D(SBOX_13_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_13_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_5_reg ( .D(SBOX_13_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[54]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_5_reg ( .D(SBOX_13_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[118]), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_4_reg ( .D(SBOX_13_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[55]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_4_reg ( .D(SBOX_13_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[119]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_6_reg ( .D(SBOX_13__s0_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_3_reg ( .D(SBOX_13_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_13__s0_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_6_reg ( .D(SBOX_13__s1_0), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_3_reg ( .D(SBOX_13_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_13__s1_0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_5_reg ( .D(SBOX_13_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_5_reg ( .D(SBOX_13_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_2_reg ( .D(SBOX_13_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_13_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_2_reg ( .D(SBOX_13_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_13_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_4_reg ( .D(SBOX_13_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_4_reg ( .D(SBOX_13_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_1_reg ( .D(SBOX_13_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_13_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_1_reg ( .D(SBOX_13_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_13_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_7_reg ( .D(SBOX_13__s0_3_), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_13_reg_1_s0_reg ( .D(SBOX_13_reg_0_s0), .CK(CLK), .Q(
        SBOX_13__s0_3_), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_7_reg ( .D(SBOX_13_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_13_reg_1_s1_reg ( .D(SBOX_13_reg_0_s1), .CK(CLK), .Q(
        SBOX_13_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_2_reg ( .D(SHARE2_IN[55]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_2_reg ( .D(SHARE1_IN[55]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_3_reg ( .D(SHARE2_IN[54]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_1_reg ( .D(SHARE1_IN[52]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_3_reg ( .D(SHARE1_IN[54]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_1_reg ( .D(SHARE2_IN[52]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_13_reg_0_s0_reg ( .D(SHARE1_IN[53]), .CK(CLK), .Q(
        SBOX_13_reg_0_s0), .QN() );
  DFF_X1 SBOX_13_reg_0_s1_reg ( .D(SHARE2_IN[53]), .CK(CLK), .Q(
        SBOX_13_reg_0_s1), .QN() );
  INV_X1 SBOX_13_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[55]), .ZN(
        SBOX_13_not_0_Masked_z_0_) );
  INV_X1 SBOX_13_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[54]), .ZN(
        SBOX_13_not_1_Masked_z_0_) );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[54]), .A2(
        SHARE2_IN[55]), .ZN(SBOX_13_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_13_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[55]), .A2(
        SBOX_13_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_13_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_13_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[54]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_13_and_0_Masked_and_hpc_U11 ( .A(RAND[52]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_13_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_13_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_13_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_13_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_13_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_13_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_13_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_13_and_0_Masked_and_hpc_n5), .Z(SBOX_13_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_13_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_13_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_13_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_13_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_13_and_0_Masked_and_hpc_n4), .Z(SBOX_13_and_0_Masked_z[0]) );
  AND2_X1 SBOX_13_and_0_Masked_and_hpc_U4 ( .A1(SBOX_13_not_1_Masked_z_0_), 
        .A2(SBOX_13_not_0_Masked_z_0_), .ZN(
        SBOX_13_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_13_and_0_Masked_and_hpc_U3 ( .A1(SBOX_13_not_0_Masked_z_0_), 
        .A2(SBOX_13_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_13_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_13_and_0_Masked_and_hpc_n6), .B(SBOX_13_not_1_Masked_z_0_), .ZN(
        SBOX_13_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_13_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[55]), .CK(CLK), .Q(SBOX_13_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_13_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_13_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_13_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_0_Masked_z[0]), .B(SBOX_13_xor_0_Masked_x[0]), .Z(SBOX_13_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_0_Masked_z[1]), .B(SBOX_13_xor_0_Masked_x[1]), .Z(SBOX_13_not_6_Masked_z[1]) );
  INV_X1 SBOX_13_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[54]), .ZN(
        SBOX_13_not_2_Masked_z_0_) );
  INV_X1 SBOX_13_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[53]), .ZN(
        SBOX_13_not_3_Masked_z_0_) );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[53]), .A2(
        SHARE2_IN[54]), .ZN(SBOX_13_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_13_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[54]), .A2(
        SBOX_13_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_13_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_13_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[53]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_13_and_1_Masked_and_hpc_U11 ( .A(RAND[53]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_13_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_13_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_13_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_13_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_13_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_13_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_13_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_13_and_1_Masked_and_hpc_n5), .Z(SBOX_13_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_13_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_13_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_13_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_13_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_13_and_1_Masked_and_hpc_n4), .Z(SBOX_13_and_1_Masked_z[0]) );
  AND2_X1 SBOX_13_and_1_Masked_and_hpc_U4 ( .A1(SBOX_13_not_3_Masked_z_0_), 
        .A2(SBOX_13_not_2_Masked_z_0_), .ZN(
        SBOX_13_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_13_and_1_Masked_and_hpc_U3 ( .A1(SBOX_13_not_2_Masked_z_0_), 
        .A2(SBOX_13_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_13_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_13_and_1_Masked_and_hpc_n6), .B(SBOX_13_not_3_Masked_z_0_), .ZN(
        SBOX_13_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_13_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[54]), .CK(CLK), .Q(SBOX_13_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_13_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_13_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_13_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_1_Masked_z[0]), .B(SBOX_13_xor_1_Masked_x[0]), .Z(SBOX_13_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_13_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_1_Masked_z[1]), .B(SBOX_13_xor_1_Masked_x[1]), .Z(SBOX_13_not_7_Masked_z[1]) );
  INV_X1 SBOX_13_not_4_Masked_not_hpc_U1 ( .A(SBOX_13__s0_3_), .ZN(
        SBOX_13_not_4_Masked_z[0]) );
  INV_X1 SBOX_13_not_5_Masked_not_hpc_U1 ( .A(SBOX_13_xor_0_Masked_z_0_), .ZN(
        SBOX_13_not_5_Masked_z_0_) );
  INV_X1 SBOX_13_and_2_Masked_and_hpc_U14 ( .A(RAND[54]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_13_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_13_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_13_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_13_and_2_Masked_and_hpc_n4), .Z(SBOX_13_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_13_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_13_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_13_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_13_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_13_and_2_Masked_and_hpc_n5), .Z(SBOX_13_and_2_Masked_z[1]) );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_13_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_13_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_13_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_13_and_2_Masked_and_hpc_U7 ( .A1(SBOX_13_not_4_Masked_z[1]), 
        .A2(SBOX_13_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_U6 ( .A1(SBOX_13_not_6_Masked_z[1]), 
        .A2(SBOX_13_not_4_Masked_z[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_13_and_2_Masked_and_hpc_U5 ( .A1(SBOX_13_not_4_Masked_z[0]), 
        .A2(SBOX_13_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_13_and_2_Masked_and_hpc_U4 ( .A1(SBOX_13_not_5_Masked_z_0_), 
        .A2(SBOX_13_not_4_Masked_z[0]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_13_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_13_and_2_Masked_and_hpc_n6), .B(SBOX_13_not_6_Masked_z[1]), .ZN(
        SBOX_13_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_13_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_13_and_2_Masked_and_hpc_n6), .B(SBOX_13_not_5_Masked_z_0_), .ZN(
        SBOX_13_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_13_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_13_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_13_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_13_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_13_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_2_Masked_z[0]), .B(SBOX_13_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[53]) );
  XOR2_X1 SBOX_13_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_2_Masked_z[1]), .B(SBOX_13_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[117]) );
  INV_X1 SBOX_13_not_6_Masked_not_hpc_U1 ( .A(SBOX_13_xor_0_Masked_z_0_), .ZN(
        SBOX_13_not_6_Masked_z[0]) );
  INV_X1 SBOX_13_not_7_Masked_not_hpc_U1 ( .A(SBOX_13_xor_1_Masked_z_0_), .ZN(
        SBOX_13_not_7_Masked_z[0]) );
  INV_X1 SBOX_13_and_3_Masked_and_hpc_U14 ( .A(RAND[55]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_13_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_13_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_13_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_13_and_3_Masked_and_hpc_n4), .Z(SBOX_13_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_13_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_13_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_13_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_13_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_13_and_3_Masked_and_hpc_n5), .Z(SBOX_13_and_3_Masked_z[1]) );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_13_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_13_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_13_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_13_and_3_Masked_and_hpc_U7 ( .A1(SBOX_13_not_6_Masked_z[1]), 
        .A2(SBOX_13_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_13_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_13_and_3_Masked_and_hpc_n6), .B(SBOX_13_not_7_Masked_z[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_U5 ( .A1(SBOX_13_not_7_Masked_z[1]), 
        .A2(SBOX_13_not_6_Masked_z[1]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_13_and_3_Masked_and_hpc_U4 ( .A1(SBOX_13_not_6_Masked_z[0]), 
        .A2(SBOX_13_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_13_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_13_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_13_and_3_Masked_and_hpc_n6), .B(SBOX_13_not_7_Masked_z[0]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_13_and_3_Masked_and_hpc_U2 ( .A1(SBOX_13_not_7_Masked_z[0]), 
        .A2(SBOX_13_not_6_Masked_z[0]), .ZN(
        SBOX_13_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_13_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_13_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_13_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_13_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_13_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_13_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_13_and_3_Masked_z[0]), .B(SBOX_13_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[52]) );
  XOR2_X1 SBOX_13_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_13_and_3_Masked_z[1]), .B(SBOX_13_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[116]) );
  DFF_X1 SBOX_14_reg_1_s0_7_reg ( .D(SBOX_14_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_14_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_7_reg ( .D(SBOX_14_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_14_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_6_reg ( .D(SBOX_14_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_14_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_6_reg ( .D(SBOX_14_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_14_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_5_reg ( .D(SBOX_14_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[58]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_5_reg ( .D(SBOX_14_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[122]), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_4_reg ( .D(SBOX_14_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[59]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_4_reg ( .D(SBOX_14_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[123]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_6_reg ( .D(SBOX_14__s0_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_3_reg ( .D(SBOX_14_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_14__s0_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_6_reg ( .D(SBOX_14__s1_0), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_3_reg ( .D(SBOX_14_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_14__s1_0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_5_reg ( .D(SBOX_14_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_5_reg ( .D(SBOX_14_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_2_reg ( .D(SBOX_14_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_14_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_2_reg ( .D(SBOX_14_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_14_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_4_reg ( .D(SBOX_14_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_4_reg ( .D(SBOX_14_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_1_reg ( .D(SBOX_14_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_14_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_1_reg ( .D(SBOX_14_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_14_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_7_reg ( .D(SBOX_14__s0_3_), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_14_reg_1_s0_reg ( .D(SBOX_14_reg_0_s0), .CK(CLK), .Q(
        SBOX_14__s0_3_), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_7_reg ( .D(SBOX_14_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_14_reg_1_s1_reg ( .D(SBOX_14_reg_0_s1), .CK(CLK), .Q(
        SBOX_14_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_2_reg ( .D(SHARE2_IN[59]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_2_reg ( .D(SHARE1_IN[59]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_3_reg ( .D(SHARE2_IN[58]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_1_reg ( .D(SHARE1_IN[56]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_3_reg ( .D(SHARE1_IN[58]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_1_reg ( .D(SHARE2_IN[56]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_14_reg_0_s0_reg ( .D(SHARE1_IN[57]), .CK(CLK), .Q(
        SBOX_14_reg_0_s0), .QN() );
  DFF_X1 SBOX_14_reg_0_s1_reg ( .D(SHARE2_IN[57]), .CK(CLK), .Q(
        SBOX_14_reg_0_s1), .QN() );
  INV_X1 SBOX_14_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[59]), .ZN(
        SBOX_14_not_0_Masked_z_0_) );
  INV_X1 SBOX_14_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[58]), .ZN(
        SBOX_14_not_1_Masked_z_0_) );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[58]), .A2(
        SHARE2_IN[59]), .ZN(SBOX_14_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_14_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[59]), .A2(
        SBOX_14_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_14_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_14_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[58]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_14_and_0_Masked_and_hpc_U11 ( .A(RAND[56]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_14_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_14_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_14_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_14_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_14_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_14_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_14_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_14_and_0_Masked_and_hpc_n5), .Z(SBOX_14_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_14_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_14_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_14_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_14_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_14_and_0_Masked_and_hpc_n4), .Z(SBOX_14_and_0_Masked_z[0]) );
  AND2_X1 SBOX_14_and_0_Masked_and_hpc_U4 ( .A1(SBOX_14_not_1_Masked_z_0_), 
        .A2(SBOX_14_not_0_Masked_z_0_), .ZN(
        SBOX_14_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_14_and_0_Masked_and_hpc_U3 ( .A1(SBOX_14_not_0_Masked_z_0_), 
        .A2(SBOX_14_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_14_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_14_and_0_Masked_and_hpc_n6), .B(SBOX_14_not_1_Masked_z_0_), .ZN(
        SBOX_14_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_14_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[59]), .CK(CLK), .Q(SBOX_14_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_14_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_14_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_14_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_0_Masked_z[0]), .B(SBOX_14_xor_0_Masked_x[0]), .Z(SBOX_14_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_0_Masked_z[1]), .B(SBOX_14_xor_0_Masked_x[1]), .Z(SBOX_14_not_6_Masked_z[1]) );
  INV_X1 SBOX_14_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[58]), .ZN(
        SBOX_14_not_2_Masked_z_0_) );
  INV_X1 SBOX_14_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[57]), .ZN(
        SBOX_14_not_3_Masked_z_0_) );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[57]), .A2(
        SHARE2_IN[58]), .ZN(SBOX_14_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_14_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[58]), .A2(
        SBOX_14_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_14_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_14_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[57]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_14_and_1_Masked_and_hpc_U11 ( .A(RAND[57]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_14_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_14_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_14_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_14_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_14_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_14_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_14_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_14_and_1_Masked_and_hpc_n5), .Z(SBOX_14_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_14_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_14_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_14_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_14_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_14_and_1_Masked_and_hpc_n4), .Z(SBOX_14_and_1_Masked_z[0]) );
  AND2_X1 SBOX_14_and_1_Masked_and_hpc_U4 ( .A1(SBOX_14_not_3_Masked_z_0_), 
        .A2(SBOX_14_not_2_Masked_z_0_), .ZN(
        SBOX_14_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_14_and_1_Masked_and_hpc_U3 ( .A1(SBOX_14_not_2_Masked_z_0_), 
        .A2(SBOX_14_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_14_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_14_and_1_Masked_and_hpc_n6), .B(SBOX_14_not_3_Masked_z_0_), .ZN(
        SBOX_14_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_14_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[58]), .CK(CLK), .Q(SBOX_14_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_14_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_14_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_14_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_1_Masked_z[0]), .B(SBOX_14_xor_1_Masked_x[0]), .Z(SBOX_14_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_14_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_1_Masked_z[1]), .B(SBOX_14_xor_1_Masked_x[1]), .Z(SBOX_14_not_7_Masked_z[1]) );
  INV_X1 SBOX_14_not_4_Masked_not_hpc_U1 ( .A(SBOX_14__s0_3_), .ZN(
        SBOX_14_not_4_Masked_z[0]) );
  INV_X1 SBOX_14_not_5_Masked_not_hpc_U1 ( .A(SBOX_14_xor_0_Masked_z_0_), .ZN(
        SBOX_14_not_5_Masked_z_0_) );
  INV_X1 SBOX_14_and_2_Masked_and_hpc_U14 ( .A(RAND[58]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_14_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_14_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_14_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_14_and_2_Masked_and_hpc_n4), .Z(SBOX_14_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_14_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_14_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_14_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_14_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_14_and_2_Masked_and_hpc_n5), .Z(SBOX_14_and_2_Masked_z[1]) );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_14_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_14_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_14_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_14_and_2_Masked_and_hpc_U7 ( .A1(SBOX_14_not_4_Masked_z[1]), 
        .A2(SBOX_14_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_U6 ( .A1(SBOX_14_not_6_Masked_z[1]), 
        .A2(SBOX_14_not_4_Masked_z[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_14_and_2_Masked_and_hpc_U5 ( .A1(SBOX_14_not_4_Masked_z[0]), 
        .A2(SBOX_14_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_14_and_2_Masked_and_hpc_U4 ( .A1(SBOX_14_not_5_Masked_z_0_), 
        .A2(SBOX_14_not_4_Masked_z[0]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_14_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_14_and_2_Masked_and_hpc_n6), .B(SBOX_14_not_6_Masked_z[1]), .ZN(
        SBOX_14_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_14_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_14_and_2_Masked_and_hpc_n6), .B(SBOX_14_not_5_Masked_z_0_), .ZN(
        SBOX_14_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_14_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_14_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_14_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_14_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_14_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_2_Masked_z[0]), .B(SBOX_14_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[57]) );
  XOR2_X1 SBOX_14_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_2_Masked_z[1]), .B(SBOX_14_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[121]) );
  INV_X1 SBOX_14_not_6_Masked_not_hpc_U1 ( .A(SBOX_14_xor_0_Masked_z_0_), .ZN(
        SBOX_14_not_6_Masked_z[0]) );
  INV_X1 SBOX_14_not_7_Masked_not_hpc_U1 ( .A(SBOX_14_xor_1_Masked_z_0_), .ZN(
        SBOX_14_not_7_Masked_z[0]) );
  INV_X1 SBOX_14_and_3_Masked_and_hpc_U14 ( .A(RAND[59]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_14_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_14_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_14_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_14_and_3_Masked_and_hpc_n4), .Z(SBOX_14_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_14_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_14_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_14_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_14_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_14_and_3_Masked_and_hpc_n5), .Z(SBOX_14_and_3_Masked_z[1]) );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_14_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_14_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_14_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_14_and_3_Masked_and_hpc_U7 ( .A1(SBOX_14_not_6_Masked_z[1]), 
        .A2(SBOX_14_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_14_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_14_and_3_Masked_and_hpc_n6), .B(SBOX_14_not_7_Masked_z[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_U5 ( .A1(SBOX_14_not_7_Masked_z[1]), 
        .A2(SBOX_14_not_6_Masked_z[1]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_14_and_3_Masked_and_hpc_U4 ( .A1(SBOX_14_not_6_Masked_z[0]), 
        .A2(SBOX_14_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_14_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_14_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_14_and_3_Masked_and_hpc_n6), .B(SBOX_14_not_7_Masked_z[0]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_14_and_3_Masked_and_hpc_U2 ( .A1(SBOX_14_not_7_Masked_z[0]), 
        .A2(SBOX_14_not_6_Masked_z[0]), .ZN(
        SBOX_14_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_14_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_14_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_14_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_14_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_14_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_14_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_14_and_3_Masked_z[0]), .B(SBOX_14_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[56]) );
  XOR2_X1 SBOX_14_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_14_and_3_Masked_z[1]), .B(SBOX_14_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[120]) );
  DFF_X1 SBOX_15_reg_1_s0_7_reg ( .D(SBOX_15_reg_0_s0_7), .CK(CLK), .Q(
        SBOX_15_xor_3_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_7_reg ( .D(SBOX_15_reg_0_s1_7), .CK(CLK), .Q(
        SBOX_15_xor_3_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_6_reg ( .D(SBOX_15_reg_0_s0_6), .CK(CLK), .Q(
        SBOX_15_xor_2_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_6_reg ( .D(SBOX_15_reg_0_s1_6), .CK(CLK), .Q(
        SBOX_15_xor_2_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_5_reg ( .D(SBOX_15_reg_0_s0_5), .CK(CLK), .Q(
        SUBSTITUTE2[62]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_5_reg ( .D(SBOX_15_reg_0_s1_5), .CK(CLK), .Q(
        SUBSTITUTE2[126]), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_4_reg ( .D(SBOX_15_reg_0_s0_4), .CK(CLK), .Q(
        SUBSTITUTE2[63]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_4_reg ( .D(SBOX_15_reg_0_s1_4), .CK(CLK), .Q(
        SUBSTITUTE2[127]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_6_reg ( .D(SBOX_15__s0_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_6), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_3_reg ( .D(SBOX_15_reg_0_s0_3), .CK(CLK), .Q(
        SBOX_15__s0_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_6_reg ( .D(SBOX_15__s1_0), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_6), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_3_reg ( .D(SBOX_15_reg_0_s1_3), .CK(CLK), .Q(
        SBOX_15__s1_0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_5_reg ( .D(SBOX_15_not_7_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_5), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_5_reg ( .D(SBOX_15_xor_1_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_5), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_2_reg ( .D(SBOX_15_reg_0_s0_2), .CK(CLK), .Q(
        SBOX_15_xor_1_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_2_reg ( .D(SBOX_15_reg_0_s1_2), .CK(CLK), .Q(
        SBOX_15_xor_1_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_4_reg ( .D(SBOX_15_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_4), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_4_reg ( .D(SBOX_15_xor_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_4), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_1_reg ( .D(SBOX_15_reg_0_s0_1), .CK(CLK), .Q(
        SBOX_15_xor_0_Masked_x[0]), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_1_reg ( .D(SBOX_15_reg_0_s1_1), .CK(CLK), .Q(
        SBOX_15_xor_0_Masked_x[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_7_reg ( .D(SBOX_15__s0_3_), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_7), .QN() );
  DFF_X1 SBOX_15_reg_1_s0_reg ( .D(SBOX_15_reg_0_s0), .CK(CLK), .Q(
        SBOX_15__s0_3_), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_7_reg ( .D(SBOX_15_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_7), .QN() );
  DFF_X1 SBOX_15_reg_1_s1_reg ( .D(SBOX_15_reg_0_s1), .CK(CLK), .Q(
        SBOX_15_not_4_Masked_z[1]), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_2_reg ( .D(SHARE2_IN[63]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_2), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_2_reg ( .D(SHARE1_IN[63]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_2), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_3_reg ( .D(SHARE2_IN[62]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_3), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_1_reg ( .D(SHARE1_IN[60]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_3_reg ( .D(SHARE1_IN[62]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0_3), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_1_reg ( .D(SHARE2_IN[60]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1_1), .QN() );
  DFF_X1 SBOX_15_reg_0_s0_reg ( .D(SHARE1_IN[61]), .CK(CLK), .Q(
        SBOX_15_reg_0_s0), .QN() );
  DFF_X1 SBOX_15_reg_0_s1_reg ( .D(SHARE2_IN[61]), .CK(CLK), .Q(
        SBOX_15_reg_0_s1), .QN() );
  INV_X1 SBOX_15_not_0_Masked_not_hpc_U1 ( .A(SHARE1_IN[63]), .ZN(
        SBOX_15_not_0_Masked_z_0_) );
  INV_X1 SBOX_15_not_1_Masked_not_hpc_U1 ( .A(SHARE1_IN[62]), .ZN(
        SBOX_15_not_1_Masked_z_0_) );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_U14 ( .A1(SHARE2_IN[62]), .A2(
        SHARE2_IN[63]), .ZN(SBOX_15_and_0_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_15_and_0_Masked_and_hpc_U13 ( .A1(SHARE2_IN[63]), .A2(
        SBOX_15_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_0_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_15_and_0_Masked_and_hpc_U12 ( .A(
        SBOX_15_and_0_Masked_and_hpc_n6), .B(SHARE2_IN[62]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_15_and_0_Masked_and_hpc_U11 ( .A(RAND[60]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_n6) );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_U10 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_15_and_0_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_U9 ( .A1(
        SBOX_15_and_0_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_15_and_0_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_15_and_0_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_U8 ( .A(
        SBOX_15_and_0_Masked_and_hpc_z[1]), .B(
        SBOX_15_and_0_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_15_and_0_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_U7 ( .A(
        SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_15_and_0_Masked_and_hpc_n5), .Z(SBOX_15_and_0_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_U6 ( .A(
        SBOX_15_and_0_Masked_and_hpc_z[0]), .B(
        SBOX_15_and_0_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_15_and_0_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_15_and_0_Masked_and_hpc_U5 ( .A(
        SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_15_and_0_Masked_and_hpc_n4), .Z(SBOX_15_and_0_Masked_z[0]) );
  AND2_X1 SBOX_15_and_0_Masked_and_hpc_U4 ( .A1(SBOX_15_not_1_Masked_z_0_), 
        .A2(SBOX_15_not_0_Masked_z_0_), .ZN(
        SBOX_15_and_0_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_15_and_0_Masked_and_hpc_U3 ( .A1(SBOX_15_not_0_Masked_z_0_), 
        .A2(SBOX_15_and_0_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_0_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_15_and_0_Masked_and_hpc_U2 ( .A(
        SBOX_15_and_0_Masked_and_hpc_n6), .B(SBOX_15_not_1_Masked_z_0_), .ZN(
        SBOX_15_and_0_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_15_not_0_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[63]), .CK(CLK), .Q(SBOX_15_and_0_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_0_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_15_and_0_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_15_and_0_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_15_xor_0_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_0_Masked_z[0]), .B(SBOX_15_xor_0_Masked_x[0]), .Z(SBOX_15_xor_0_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_0_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_0_Masked_z[1]), .B(SBOX_15_xor_0_Masked_x[1]), .Z(SBOX_15_not_6_Masked_z[1]) );
  INV_X1 SBOX_15_not_2_Masked_not_hpc_U1 ( .A(SHARE1_IN[62]), .ZN(
        SBOX_15_not_2_Masked_z_0_) );
  INV_X1 SBOX_15_not_3_Masked_not_hpc_U1 ( .A(SHARE1_IN[61]), .ZN(
        SBOX_15_not_3_Masked_z_0_) );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_U14 ( .A1(SHARE2_IN[61]), .A2(
        SHARE2_IN[62]), .ZN(SBOX_15_and_1_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_15_and_1_Masked_and_hpc_U13 ( .A1(SHARE2_IN[62]), .A2(
        SBOX_15_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_1_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_15_and_1_Masked_and_hpc_U12 ( .A(
        SBOX_15_and_1_Masked_and_hpc_n6), .B(SHARE2_IN[61]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_s_in_0__1_) );
  INV_X1 SBOX_15_and_1_Masked_and_hpc_U11 ( .A(RAND[61]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_n6) );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_U10 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_15_and_1_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_U9 ( .A1(
        SBOX_15_and_1_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_15_and_1_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_15_and_1_Masked_and_hpc_p_1_in_0__1_) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_U8 ( .A(
        SBOX_15_and_1_Masked_and_hpc_z[1]), .B(
        SBOX_15_and_1_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_15_and_1_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_U7 ( .A(
        SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_15_and_1_Masked_and_hpc_n5), .Z(SBOX_15_and_1_Masked_z[1]) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_U6 ( .A(
        SBOX_15_and_1_Masked_and_hpc_z[0]), .B(
        SBOX_15_and_1_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_15_and_1_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_15_and_1_Masked_and_hpc_U5 ( .A(
        SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_15_and_1_Masked_and_hpc_n4), .Z(SBOX_15_and_1_Masked_z[0]) );
  AND2_X1 SBOX_15_and_1_Masked_and_hpc_U4 ( .A1(SBOX_15_not_3_Masked_z_0_), 
        .A2(SBOX_15_not_2_Masked_z_0_), .ZN(
        SBOX_15_and_1_Masked_and_hpc_mul[0]) );
  NOR2_X1 SBOX_15_and_1_Masked_and_hpc_U3 ( .A1(SBOX_15_not_2_Masked_z_0_), 
        .A2(SBOX_15_and_1_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_1_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_15_and_1_Masked_and_hpc_U2 ( .A(
        SBOX_15_and_1_Masked_and_hpc_n6), .B(SBOX_15_not_3_Masked_z_0_), .ZN(
        SBOX_15_and_1_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_15_not_2_Masked_z_0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SHARE2_IN[62]), .CK(CLK), .Q(SBOX_15_and_1_Masked_and_hpc_a_reg[1]), 
        .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_1_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_15_and_1_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_15_and_1_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_15_xor_1_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_1_Masked_z[0]), .B(SBOX_15_xor_1_Masked_x[0]), .Z(SBOX_15_xor_1_Masked_z_0_) );
  XOR2_X1 SBOX_15_xor_1_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_1_Masked_z[1]), .B(SBOX_15_xor_1_Masked_x[1]), .Z(SBOX_15_not_7_Masked_z[1]) );
  INV_X1 SBOX_15_not_4_Masked_not_hpc_U1 ( .A(SBOX_15__s0_3_), .ZN(
        SBOX_15_not_4_Masked_z[0]) );
  INV_X1 SBOX_15_not_5_Masked_not_hpc_U1 ( .A(SBOX_15_xor_0_Masked_z_0_), .ZN(
        SBOX_15_not_5_Masked_z_0_) );
  INV_X1 SBOX_15_and_2_Masked_and_hpc_U14 ( .A(RAND[62]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_U13 ( .A(
        SBOX_15_and_2_Masked_and_hpc_z[0]), .B(
        SBOX_15_and_2_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_15_and_2_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_U12 ( .A(
        SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_15_and_2_Masked_and_hpc_n4), .Z(SBOX_15_and_2_Masked_z[0]) );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_U11 ( .A(
        SBOX_15_and_2_Masked_and_hpc_z[1]), .B(
        SBOX_15_and_2_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_15_and_2_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_15_and_2_Masked_and_hpc_U10 ( .A(
        SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_15_and_2_Masked_and_hpc_n5), .Z(SBOX_15_and_2_Masked_z[1]) );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_U9 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_15_and_2_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_U8 ( .A1(
        SBOX_15_and_2_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_15_and_2_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_15_and_2_Masked_and_hpc_U7 ( .A1(SBOX_15_not_4_Masked_z[1]), 
        .A2(SBOX_15_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_2_Masked_and_hpc_p_0_in_1__0_) );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_U6 ( .A1(SBOX_15_not_6_Masked_z[1]), 
        .A2(SBOX_15_not_4_Masked_z[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_15_and_2_Masked_and_hpc_U5 ( .A1(SBOX_15_not_4_Masked_z[0]), 
        .A2(SBOX_15_and_2_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_2_Masked_and_hpc_p_0_in_0__1_) );
  AND2_X1 SBOX_15_and_2_Masked_and_hpc_U4 ( .A1(SBOX_15_not_5_Masked_z_0_), 
        .A2(SBOX_15_not_4_Masked_z[0]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_mul[0]) );
  XNOR2_X1 SBOX_15_and_2_Masked_and_hpc_U3 ( .A(
        SBOX_15_and_2_Masked_and_hpc_n6), .B(SBOX_15_not_6_Masked_z[1]), .ZN(
        SBOX_15_and_2_Masked_and_hpc_s_in_0__1_) );
  XNOR2_X1 SBOX_15_and_2_Masked_and_hpc_U2 ( .A(
        SBOX_15_and_2_Masked_and_hpc_n6), .B(SBOX_15_not_5_Masked_z_0_), .ZN(
        SBOX_15_and_2_Masked_and_hpc_s_in_1__0_) );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_15_not_4_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_15_not_4_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_2_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_15_and_2_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_15_and_2_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_15_xor_2_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_2_Masked_z[0]), .B(SBOX_15_xor_2_Masked_x[0]), .Z(SUBSTITUTE2[61]) );
  XOR2_X1 SBOX_15_xor_2_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_2_Masked_z[1]), .B(SBOX_15_xor_2_Masked_x[1]), .Z(SUBSTITUTE2[125]) );
  INV_X1 SBOX_15_not_6_Masked_not_hpc_U1 ( .A(SBOX_15_xor_0_Masked_z_0_), .ZN(
        SBOX_15_not_6_Masked_z[0]) );
  INV_X1 SBOX_15_not_7_Masked_not_hpc_U1 ( .A(SBOX_15_xor_1_Masked_z_0_), .ZN(
        SBOX_15_not_7_Masked_z[0]) );
  INV_X1 SBOX_15_and_3_Masked_and_hpc_U14 ( .A(RAND[63]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_n6) );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_U13 ( .A(
        SBOX_15_and_3_Masked_and_hpc_z[0]), .B(
        SBOX_15_and_3_Masked_and_hpc_p_1_out_0__1_), .Z(
        SBOX_15_and_3_Masked_and_hpc_n4) );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_U12 ( .A(
        SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .B(
        SBOX_15_and_3_Masked_and_hpc_n4), .Z(SBOX_15_and_3_Masked_z[0]) );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_U11 ( .A(
        SBOX_15_and_3_Masked_and_hpc_z[1]), .B(
        SBOX_15_and_3_Masked_and_hpc_p_1_out_1__0_), .Z(
        SBOX_15_and_3_Masked_and_hpc_n5) );
  XOR2_X1 SBOX_15_and_3_Masked_and_hpc_U10 ( .A(
        SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .B(
        SBOX_15_and_3_Masked_and_hpc_n5), .Z(SBOX_15_and_3_Masked_z[1]) );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_U9 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_s_out_1__0_), .A2(
        SBOX_15_and_3_Masked_and_hpc_a_reg[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_p_1_in_1__0_) );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_U8 ( .A1(
        SBOX_15_and_3_Masked_and_hpc_s_out_0__1_), .A2(
        SBOX_15_and_3_Masked_and_hpc_a_reg[0]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_p_1_in_0__1_) );
  NOR2_X1 SBOX_15_and_3_Masked_and_hpc_U7 ( .A1(SBOX_15_not_6_Masked_z[1]), 
        .A2(SBOX_15_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_3_Masked_and_hpc_p_0_in_1__0_) );
  XNOR2_X1 SBOX_15_and_3_Masked_and_hpc_U6 ( .A(
        SBOX_15_and_3_Masked_and_hpc_n6), .B(SBOX_15_not_7_Masked_z[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_s_in_0__1_) );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_U5 ( .A1(SBOX_15_not_7_Masked_z[1]), 
        .A2(SBOX_15_not_6_Masked_z[1]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul[1]) );
  NOR2_X1 SBOX_15_and_3_Masked_and_hpc_U4 ( .A1(SBOX_15_not_6_Masked_z[0]), 
        .A2(SBOX_15_and_3_Masked_and_hpc_n6), .ZN(
        SBOX_15_and_3_Masked_and_hpc_p_0_in_0__1_) );
  XNOR2_X1 SBOX_15_and_3_Masked_and_hpc_U3 ( .A(
        SBOX_15_and_3_Masked_and_hpc_n6), .B(SBOX_15_not_7_Masked_z[0]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_s_in_1__0_) );
  AND2_X1 SBOX_15_and_3_Masked_and_hpc_U2 ( .A1(SBOX_15_not_7_Masked_z[0]), 
        .A2(SBOX_15_not_6_Masked_z[0]), .ZN(
        SBOX_15_and_3_Masked_and_hpc_mul[0]) );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_pipe_s1_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul[0]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_mul_s1_out[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_pipe_s2_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_s1_out[0]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_z[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_a_i_0_s_current_state_reg ( .D(
        SBOX_15_not_6_Masked_z[0]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_a_reg[0]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_s_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_s_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_s_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_0_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_0_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_0_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_1_reg_0_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_1_in_0__1_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_1_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_0_pipe_0_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_0_out_0__1_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_0__1_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_pipe_s1_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul[1]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_mul_s1_out[1]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_mul_pipe_s2_1_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_mul_s1_out[1]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_z[1]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_a_i_1_s_current_state_reg ( .D(
        SBOX_15_not_6_Masked_z[1]), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_a_reg[1]), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_s_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_s_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_s_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_0_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_0_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_0_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_1_reg_1_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_1_in_1__0_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_1_out_1__0_), .QN() );
  DFF_X1 SBOX_15_and_3_Masked_and_hpc_p_0_pipe_1_0_s_current_state_reg ( .D(
        SBOX_15_and_3_Masked_and_hpc_p_0_out_1__0_), .CK(CLK), .Q(
        SBOX_15_and_3_Masked_and_hpc_p_0_pipe_out_1__0_), .QN() );
  XOR2_X1 SBOX_15_xor_3_Masked_xor_hpc_Ins_0_U1 ( .A(SBOX_15_and_3_Masked_z[0]), .B(SBOX_15_xor_3_Masked_x[0]), .Z(SUBSTITUTE2[60]) );
  XOR2_X1 SBOX_15_xor_3_Masked_xor_hpc_Ins_1_U1 ( .A(SBOX_15_and_3_Masked_z[1]), .B(SBOX_15_xor_3_Masked_x[1]), .Z(SUBSTITUTE2[124]) );
  XOR2_X1 KA1_U39 ( .A(ROUND_KEY1[41]), .B(SUBSTITUTE2[41]), .Z(SHIFTROWS[37])
         );
  XOR2_X1 KA1_U38 ( .A(ROUND_KEY1[35]), .B(SUBSTITUTE2[35]), .Z(SHIFTROWS[47])
         );
  XOR2_X1 KA1_U37 ( .A(ROUND_KEY1[34]), .B(SUBSTITUTE2[34]), .Z(SHIFTROWS[46])
         );
  XOR2_X1 KA1_U36 ( .A(ROUND_KEY1[47]), .B(SUBSTITUTE2[47]), .Z(SHIFTROWS[43])
         );
  XOR2_X1 KA1_U35 ( .A(ROUND_KEY1[46]), .B(SUBSTITUTE2[46]), .Z(SHIFTROWS[42])
         );
  XOR2_X1 KA1_U34 ( .A(ROUND_KEY1[43]), .B(SUBSTITUTE2[43]), .Z(SHIFTROWS[39])
         );
  XOR2_X1 KA1_U33 ( .A(ROUND_KEY1[42]), .B(SUBSTITUTE2[42]), .Z(SHIFTROWS[38])
         );
  XOR2_X1 KA1_U32 ( .A(ROUND_KEY1[39]), .B(SUBSTITUTE2[39]), .Z(SHIFTROWS[35])
         );
  XOR2_X1 KA1_U31 ( .A(ROUND_KEY1[38]), .B(SUBSTITUTE2[38]), .Z(SHIFTROWS[34])
         );
  XOR2_X1 KA1_U30 ( .A(ROUND_KEY1[33]), .B(SUBSTITUTE2[33]), .Z(SHIFTROWS[45])
         );
  XOR2_X1 KA1_U29 ( .A(ROUND_KEY1[32]), .B(SUBSTITUTE2[32]), .Z(SHIFTROWS[44])
         );
  XOR2_X1 KA1_U28 ( .A(ROUND_KEY1[45]), .B(SUBSTITUTE2[45]), .Z(KA1_n6) );
  XOR2_X1 KA1_U27 ( .A(ROUND_CST[5]), .B(KA1_n6), .Z(SHIFTROWS[41]) );
  XOR2_X1 KA1_U26 ( .A(ROUND_KEY1[44]), .B(SUBSTITUTE2[44]), .Z(KA1_n7) );
  XOR2_X1 KA1_U25 ( .A(ROUND_CST[4]), .B(KA1_n7), .Z(SHIFTROWS[40]) );
  XOR2_X1 KA1_U24 ( .A(ROUND_KEY1[40]), .B(SUBSTITUTE2[40]), .Z(SHIFTROWS[36])
         );
  XOR2_X1 KA1_U23 ( .A(ROUND_KEY1[37]), .B(SUBSTITUTE2[37]), .Z(SHIFTROWS[33])
         );
  XOR2_X1 KA1_U22 ( .A(ROUND_KEY1[36]), .B(SUBSTITUTE2[36]), .Z(SHIFTROWS[32])
         );
  INV_X1 KA1_U21 ( .A(SUBSTITUTE2[29]), .ZN(SHIFTROWS[21]) );
  XOR2_X1 KA1_U20 ( .A(ROUND_KEY1[63]), .B(SUBSTITUTE2[63]), .Z(KA1_n2) );
  XOR2_X1 KA1_U19 ( .A(ROUND_CST[3]), .B(KA1_n2), .Z(SHARE1_OUT[47]) );
  XOR2_X1 KA1_U18 ( .A(ROUND_KEY1[62]), .B(SUBSTITUTE2[62]), .Z(KA1_n3) );
  XOR2_X1 KA1_U17 ( .A(ROUND_CST[2]), .B(KA1_n3), .Z(SHARE1_OUT[46]) );
  XOR2_X1 KA1_U16 ( .A(ROUND_KEY1[61]), .B(SUBSTITUTE2[61]), .Z(KA1_n4) );
  XOR2_X1 KA1_U15 ( .A(ROUND_CST[1]), .B(KA1_n4), .Z(SHARE1_OUT[45]) );
  XOR2_X1 KA1_U14 ( .A(ROUND_KEY1[60]), .B(SUBSTITUTE2[60]), .Z(KA1_n5) );
  XOR2_X1 KA1_U13 ( .A(ROUND_CST[0]), .B(KA1_n5), .Z(SHARE1_OUT[44]) );
  XOR2_X1 KA1_U12 ( .A(ROUND_KEY1[59]), .B(SUBSTITUTE2[59]), .Z(SHARE1_OUT[43]) );
  XOR2_X1 KA1_U11 ( .A(ROUND_KEY1[58]), .B(SUBSTITUTE2[58]), .Z(SHARE1_OUT[42]) );
  XOR2_X1 KA1_U10 ( .A(ROUND_KEY1[57]), .B(SUBSTITUTE2[57]), .Z(SHARE1_OUT[41]) );
  XOR2_X1 KA1_U9 ( .A(ROUND_KEY1[56]), .B(SUBSTITUTE2[56]), .Z(SHARE1_OUT[40])
         );
  XOR2_X1 KA1_U8 ( .A(ROUND_KEY1[55]), .B(SUBSTITUTE2[55]), .Z(SHARE1_OUT[39])
         );
  XOR2_X1 KA1_U7 ( .A(ROUND_KEY1[54]), .B(SUBSTITUTE2[54]), .Z(SHARE1_OUT[38])
         );
  XOR2_X1 KA1_U6 ( .A(ROUND_KEY1[53]), .B(SUBSTITUTE2[53]), .Z(SHARE1_OUT[37])
         );
  XOR2_X1 KA1_U5 ( .A(ROUND_KEY1[52]), .B(SUBSTITUTE2[52]), .Z(SHARE1_OUT[36])
         );
  XOR2_X1 KA1_U4 ( .A(ROUND_KEY1[51]), .B(SUBSTITUTE2[51]), .Z(SHARE1_OUT[35])
         );
  XOR2_X1 KA1_U3 ( .A(ROUND_KEY1[50]), .B(SUBSTITUTE2[50]), .Z(SHARE1_OUT[34])
         );
  XOR2_X1 KA1_U2 ( .A(ROUND_KEY1[49]), .B(SUBSTITUTE2[49]), .Z(SHARE1_OUT[33])
         );
  XOR2_X1 KA1_U1 ( .A(ROUND_KEY1[48]), .B(SUBSTITUTE2[48]), .Z(SHARE1_OUT[32])
         );
  XOR2_X1 KA2_U33 ( .A(ROUND_KEY2[41]), .B(SUBSTITUTE2[105]), .Z(
        SHIFTROWS[101]) );
  XOR2_X1 KA2_U32 ( .A(ROUND_KEY2[35]), .B(SUBSTITUTE2[99]), .Z(SHIFTROWS[111]) );
  XOR2_X1 KA2_U31 ( .A(ROUND_KEY2[34]), .B(SUBSTITUTE2[98]), .Z(SHIFTROWS[110]) );
  XOR2_X1 KA2_U30 ( .A(ROUND_KEY2[47]), .B(SUBSTITUTE2[111]), .Z(
        SHIFTROWS[107]) );
  XOR2_X1 KA2_U29 ( .A(ROUND_KEY2[46]), .B(SUBSTITUTE2[110]), .Z(
        SHIFTROWS[106]) );
  XOR2_X1 KA2_U28 ( .A(ROUND_KEY2[43]), .B(SUBSTITUTE2[107]), .Z(
        SHIFTROWS[103]) );
  XOR2_X1 KA2_U27 ( .A(ROUND_KEY2[42]), .B(SUBSTITUTE2[106]), .Z(
        SHIFTROWS[102]) );
  XOR2_X1 KA2_U26 ( .A(ROUND_KEY2[39]), .B(SUBSTITUTE2[103]), .Z(SHIFTROWS[99]) );
  XOR2_X1 KA2_U25 ( .A(ROUND_KEY2[38]), .B(SUBSTITUTE2[102]), .Z(SHIFTROWS[98]) );
  XOR2_X1 KA2_U24 ( .A(ROUND_KEY2[33]), .B(SUBSTITUTE2[97]), .Z(SHIFTROWS[109]) );
  XOR2_X1 KA2_U23 ( .A(ROUND_KEY2[32]), .B(SUBSTITUTE2[96]), .Z(SHIFTROWS[108]) );
  XOR2_X1 KA2_U22 ( .A(ROUND_KEY2[45]), .B(SUBSTITUTE2[109]), .Z(
        SHIFTROWS[105]) );
  XOR2_X1 KA2_U21 ( .A(ROUND_KEY2[44]), .B(SUBSTITUTE2[108]), .Z(
        SHIFTROWS[104]) );
  XOR2_X1 KA2_U20 ( .A(ROUND_KEY2[40]), .B(SUBSTITUTE2[104]), .Z(
        SHIFTROWS[100]) );
  XOR2_X1 KA2_U19 ( .A(ROUND_KEY2[37]), .B(SUBSTITUTE2[101]), .Z(SHIFTROWS[97]) );
  XOR2_X1 KA2_U18 ( .A(ROUND_KEY2[36]), .B(SUBSTITUTE2[100]), .Z(SHIFTROWS[96]) );
  INV_X1 KA2_U17 ( .A(SUBSTITUTE2[93]), .ZN(SHIFTROWS[85]) );
  XOR2_X1 KA2_U16 ( .A(ROUND_KEY2[63]), .B(SUBSTITUTE2[127]), .Z(
        SHARE2_OUT[47]) );
  XOR2_X1 KA2_U15 ( .A(ROUND_KEY2[62]), .B(SUBSTITUTE2[126]), .Z(
        SHARE2_OUT[46]) );
  XOR2_X1 KA2_U14 ( .A(ROUND_KEY2[61]), .B(SUBSTITUTE2[125]), .Z(
        SHARE2_OUT[45]) );
  XOR2_X1 KA2_U13 ( .A(ROUND_KEY2[60]), .B(SUBSTITUTE2[124]), .Z(
        SHARE2_OUT[44]) );
  XOR2_X1 KA2_U12 ( .A(ROUND_KEY2[59]), .B(SUBSTITUTE2[123]), .Z(
        SHARE2_OUT[43]) );
  XOR2_X1 KA2_U11 ( .A(ROUND_KEY2[58]), .B(SUBSTITUTE2[122]), .Z(
        SHARE2_OUT[42]) );
  XOR2_X1 KA2_U10 ( .A(ROUND_KEY2[57]), .B(SUBSTITUTE2[121]), .Z(
        SHARE2_OUT[41]) );
  XOR2_X1 KA2_U9 ( .A(ROUND_KEY2[56]), .B(SUBSTITUTE2[120]), .Z(SHARE2_OUT[40]) );
  XOR2_X1 KA2_U8 ( .A(ROUND_KEY2[55]), .B(SUBSTITUTE2[119]), .Z(SHARE2_OUT[39]) );
  XOR2_X1 KA2_U7 ( .A(ROUND_KEY2[54]), .B(SUBSTITUTE2[118]), .Z(SHARE2_OUT[38]) );
  XOR2_X1 KA2_U6 ( .A(ROUND_KEY2[53]), .B(SUBSTITUTE2[117]), .Z(SHARE2_OUT[37]) );
  XOR2_X1 KA2_U5 ( .A(ROUND_KEY2[52]), .B(SUBSTITUTE2[116]), .Z(SHARE2_OUT[36]) );
  XOR2_X1 KA2_U4 ( .A(ROUND_KEY2[51]), .B(SUBSTITUTE2[115]), .Z(SHARE2_OUT[35]) );
  XOR2_X1 KA2_U3 ( .A(ROUND_KEY2[50]), .B(SUBSTITUTE2[114]), .Z(SHARE2_OUT[34]) );
  XOR2_X1 KA2_U2 ( .A(ROUND_KEY2[49]), .B(SUBSTITUTE2[113]), .Z(SHARE2_OUT[33]) );
  XOR2_X1 KA2_U1 ( .A(ROUND_KEY2[48]), .B(SUBSTITUTE2[112]), .Z(SHARE2_OUT[32]) );
  XOR2_X1 MC1_U48 ( .A(SHIFTROWS[5]), .B(SHARE1_OUT[5]), .Z(SHARE1_OUT[53]) );
  XOR2_X1 MC1_U47 ( .A(SHIFTROWS[37]), .B(SHIFTROWS[21]), .Z(SHARE1_OUT[21])
         );
  XOR2_X1 MC1_U46 ( .A(SHIFTROWS[15]), .B(SHARE1_OUT[15]), .Z(SHARE1_OUT[63])
         );
  XOR2_X1 MC1_U45 ( .A(SHIFTROWS[14]), .B(SHARE1_OUT[14]), .Z(SHARE1_OUT[62])
         );
  XOR2_X1 MC1_U44 ( .A(SHIFTROWS[11]), .B(SHARE1_OUT[11]), .Z(SHARE1_OUT[59])
         );
  XOR2_X1 MC1_U43 ( .A(SHIFTROWS[10]), .B(SHARE1_OUT[10]), .Z(SHARE1_OUT[58])
         );
  XOR2_X1 MC1_U42 ( .A(SHIFTROWS[7]), .B(SHARE1_OUT[7]), .Z(SHARE1_OUT[55]) );
  XOR2_X1 MC1_U41 ( .A(SHIFTROWS[6]), .B(SHARE1_OUT[6]), .Z(SHARE1_OUT[54]) );
  XOR2_X1 MC1_U40 ( .A(SHIFTROWS[3]), .B(SHARE1_OUT[3]), .Z(SHARE1_OUT[51]) );
  XOR2_X1 MC1_U39 ( .A(SHIFTROWS[2]), .B(SHARE1_OUT[2]), .Z(SHARE1_OUT[50]) );
  XOR2_X1 MC1_U38 ( .A(SHIFTROWS[13]), .B(SHARE1_OUT[13]), .Z(SHARE1_OUT[61])
         );
  XOR2_X1 MC1_U37 ( .A(SHIFTROWS[12]), .B(SHARE1_OUT[12]), .Z(SHARE1_OUT[60])
         );
  XOR2_X1 MC1_U36 ( .A(SHIFTROWS[9]), .B(SHARE1_OUT[9]), .Z(SHARE1_OUT[57]) );
  XOR2_X1 MC1_U35 ( .A(SHIFTROWS[8]), .B(SHARE1_OUT[8]), .Z(SHARE1_OUT[56]) );
  XOR2_X1 MC1_U34 ( .A(SHIFTROWS[4]), .B(SHARE1_OUT[4]), .Z(SHARE1_OUT[52]) );
  XOR2_X1 MC1_U33 ( .A(SHIFTROWS[1]), .B(SHARE1_OUT[1]), .Z(SHARE1_OUT[49]) );
  XOR2_X1 MC1_U32 ( .A(SHIFTROWS[0]), .B(SHARE1_OUT[0]), .Z(SHARE1_OUT[48]) );
  XOR2_X1 MC1_U31 ( .A(SHIFTROWS[47]), .B(SHIFTROWS[31]), .Z(SHARE1_OUT[31])
         );
  XOR2_X1 MC1_U30 ( .A(SHIFTROWS[46]), .B(SHIFTROWS[30]), .Z(SHARE1_OUT[30])
         );
  XOR2_X1 MC1_U29 ( .A(SHIFTROWS[43]), .B(SHIFTROWS[27]), .Z(SHARE1_OUT[27])
         );
  XOR2_X1 MC1_U28 ( .A(SHIFTROWS[42]), .B(SHIFTROWS[26]), .Z(SHARE1_OUT[26])
         );
  XOR2_X1 MC1_U27 ( .A(SHIFTROWS[39]), .B(SHIFTROWS[23]), .Z(SHARE1_OUT[23])
         );
  XOR2_X1 MC1_U26 ( .A(SHIFTROWS[38]), .B(SHIFTROWS[22]), .Z(SHARE1_OUT[22])
         );
  XOR2_X1 MC1_U25 ( .A(SHIFTROWS[35]), .B(SHIFTROWS[19]), .Z(SHARE1_OUT[19])
         );
  XOR2_X1 MC1_U24 ( .A(SHIFTROWS[34]), .B(SHIFTROWS[18]), .Z(SHARE1_OUT[18])
         );
  XOR2_X1 MC1_U23 ( .A(SHIFTROWS[45]), .B(SHIFTROWS[29]), .Z(SHARE1_OUT[29])
         );
  XOR2_X1 MC1_U22 ( .A(SHIFTROWS[44]), .B(SHIFTROWS[28]), .Z(SHARE1_OUT[28])
         );
  XOR2_X1 MC1_U21 ( .A(SHIFTROWS[41]), .B(SHIFTROWS[25]), .Z(SHARE1_OUT[25])
         );
  XOR2_X1 MC1_U20 ( .A(SHIFTROWS[40]), .B(SHIFTROWS[24]), .Z(SHARE1_OUT[24])
         );
  XOR2_X1 MC1_U19 ( .A(SHIFTROWS[36]), .B(SHIFTROWS[20]), .Z(SHARE1_OUT[20])
         );
  XOR2_X1 MC1_U18 ( .A(SHIFTROWS[33]), .B(SHIFTROWS[17]), .Z(SHARE1_OUT[17])
         );
  XOR2_X1 MC1_U17 ( .A(SHIFTROWS[32]), .B(SHIFTROWS[16]), .Z(SHARE1_OUT[16])
         );
  XOR2_X1 MC1_U16 ( .A(SHIFTROWS[31]), .B(SHARE1_OUT[47]), .Z(SHARE1_OUT[15])
         );
  XOR2_X1 MC1_U15 ( .A(SHIFTROWS[30]), .B(SHARE1_OUT[46]), .Z(SHARE1_OUT[14])
         );
  XOR2_X1 MC1_U14 ( .A(SHIFTROWS[27]), .B(SHARE1_OUT[43]), .Z(SHARE1_OUT[11])
         );
  XOR2_X1 MC1_U13 ( .A(SHIFTROWS[26]), .B(SHARE1_OUT[42]), .Z(SHARE1_OUT[10])
         );
  XOR2_X1 MC1_U12 ( .A(SHIFTROWS[23]), .B(SHARE1_OUT[39]), .Z(SHARE1_OUT[7])
         );
  XOR2_X1 MC1_U11 ( .A(SHIFTROWS[22]), .B(SHARE1_OUT[38]), .Z(SHARE1_OUT[6])
         );
  XOR2_X1 MC1_U10 ( .A(SHIFTROWS[19]), .B(SHARE1_OUT[35]), .Z(SHARE1_OUT[3])
         );
  XOR2_X1 MC1_U9 ( .A(SHIFTROWS[18]), .B(SHARE1_OUT[34]), .Z(SHARE1_OUT[2]) );
  XOR2_X1 MC1_U8 ( .A(SHIFTROWS[29]), .B(SHARE1_OUT[45]), .Z(SHARE1_OUT[13])
         );
  XOR2_X1 MC1_U7 ( .A(SHIFTROWS[28]), .B(SHARE1_OUT[44]), .Z(SHARE1_OUT[12])
         );
  XOR2_X1 MC1_U6 ( .A(SHIFTROWS[25]), .B(SHARE1_OUT[41]), .Z(SHARE1_OUT[9]) );
  XOR2_X1 MC1_U5 ( .A(SHIFTROWS[24]), .B(SHARE1_OUT[40]), .Z(SHARE1_OUT[8]) );
  XOR2_X1 MC1_U4 ( .A(SHIFTROWS[20]), .B(SHARE1_OUT[36]), .Z(SHARE1_OUT[4]) );
  XOR2_X1 MC1_U3 ( .A(SHIFTROWS[17]), .B(SHARE1_OUT[33]), .Z(SHARE1_OUT[1]) );
  XOR2_X1 MC1_U2 ( .A(SHIFTROWS[16]), .B(SHARE1_OUT[32]), .Z(SHARE1_OUT[0]) );
  XOR2_X1 MC1_U1 ( .A(SHIFTROWS[21]), .B(SHARE1_OUT[37]), .Z(SHARE1_OUT[5]) );
  XOR2_X1 MC2_U48 ( .A(SHIFTROWS[69]), .B(SHARE2_OUT[5]), .Z(SHARE2_OUT[53])
         );
  XOR2_X1 MC2_U47 ( .A(SHIFTROWS[101]), .B(SHIFTROWS[85]), .Z(SHARE2_OUT[21])
         );
  XOR2_X1 MC2_U46 ( .A(SHIFTROWS[79]), .B(SHARE2_OUT[15]), .Z(SHARE2_OUT[63])
         );
  XOR2_X1 MC2_U45 ( .A(SHIFTROWS[78]), .B(SHARE2_OUT[14]), .Z(SHARE2_OUT[62])
         );
  XOR2_X1 MC2_U44 ( .A(SHIFTROWS[75]), .B(SHARE2_OUT[11]), .Z(SHARE2_OUT[59])
         );
  XOR2_X1 MC2_U43 ( .A(SHIFTROWS[74]), .B(SHARE2_OUT[10]), .Z(SHARE2_OUT[58])
         );
  XOR2_X1 MC2_U42 ( .A(SHIFTROWS[71]), .B(SHARE2_OUT[7]), .Z(SHARE2_OUT[55])
         );
  XOR2_X1 MC2_U41 ( .A(SHIFTROWS[70]), .B(SHARE2_OUT[6]), .Z(SHARE2_OUT[54])
         );
  XOR2_X1 MC2_U40 ( .A(SHIFTROWS[67]), .B(SHARE2_OUT[3]), .Z(SHARE2_OUT[51])
         );
  XOR2_X1 MC2_U39 ( .A(SHIFTROWS[66]), .B(SHARE2_OUT[2]), .Z(SHARE2_OUT[50])
         );
  XOR2_X1 MC2_U38 ( .A(SHIFTROWS[77]), .B(SHARE2_OUT[13]), .Z(SHARE2_OUT[61])
         );
  XOR2_X1 MC2_U37 ( .A(SHIFTROWS[76]), .B(SHARE2_OUT[12]), .Z(SHARE2_OUT[60])
         );
  XOR2_X1 MC2_U36 ( .A(SHIFTROWS[73]), .B(SHARE2_OUT[9]), .Z(SHARE2_OUT[57])
         );
  XOR2_X1 MC2_U35 ( .A(SHIFTROWS[72]), .B(SHARE2_OUT[8]), .Z(SHARE2_OUT[56])
         );
  XOR2_X1 MC2_U34 ( .A(SHIFTROWS[68]), .B(SHARE2_OUT[4]), .Z(SHARE2_OUT[52])
         );
  XOR2_X1 MC2_U33 ( .A(SHIFTROWS[65]), .B(SHARE2_OUT[1]), .Z(SHARE2_OUT[49])
         );
  XOR2_X1 MC2_U32 ( .A(SHIFTROWS[64]), .B(SHARE2_OUT[0]), .Z(SHARE2_OUT[48])
         );
  XOR2_X1 MC2_U31 ( .A(SHIFTROWS[111]), .B(SHIFTROWS[95]), .Z(SHARE2_OUT[31])
         );
  XOR2_X1 MC2_U30 ( .A(SHIFTROWS[110]), .B(SHIFTROWS[94]), .Z(SHARE2_OUT[30])
         );
  XOR2_X1 MC2_U29 ( .A(SHIFTROWS[107]), .B(SHIFTROWS[91]), .Z(SHARE2_OUT[27])
         );
  XOR2_X1 MC2_U28 ( .A(SHIFTROWS[106]), .B(SHIFTROWS[90]), .Z(SHARE2_OUT[26])
         );
  XOR2_X1 MC2_U27 ( .A(SHIFTROWS[103]), .B(SHIFTROWS[87]), .Z(SHARE2_OUT[23])
         );
  XOR2_X1 MC2_U26 ( .A(SHIFTROWS[102]), .B(SHIFTROWS[86]), .Z(SHARE2_OUT[22])
         );
  XOR2_X1 MC2_U25 ( .A(SHIFTROWS[99]), .B(SHIFTROWS[83]), .Z(SHARE2_OUT[19])
         );
  XOR2_X1 MC2_U24 ( .A(SHIFTROWS[98]), .B(SHIFTROWS[82]), .Z(SHARE2_OUT[18])
         );
  XOR2_X1 MC2_U23 ( .A(SHIFTROWS[109]), .B(SHIFTROWS[93]), .Z(SHARE2_OUT[29])
         );
  XOR2_X1 MC2_U22 ( .A(SHIFTROWS[108]), .B(SHIFTROWS[92]), .Z(SHARE2_OUT[28])
         );
  XOR2_X1 MC2_U21 ( .A(SHIFTROWS[105]), .B(SHIFTROWS[89]), .Z(SHARE2_OUT[25])
         );
  XOR2_X1 MC2_U20 ( .A(SHIFTROWS[104]), .B(SHIFTROWS[88]), .Z(SHARE2_OUT[24])
         );
  XOR2_X1 MC2_U19 ( .A(SHIFTROWS[100]), .B(SHIFTROWS[84]), .Z(SHARE2_OUT[20])
         );
  XOR2_X1 MC2_U18 ( .A(SHIFTROWS[97]), .B(SHIFTROWS[81]), .Z(SHARE2_OUT[17])
         );
  XOR2_X1 MC2_U17 ( .A(SHIFTROWS[96]), .B(SHIFTROWS[80]), .Z(SHARE2_OUT[16])
         );
  XOR2_X1 MC2_U16 ( .A(SHIFTROWS[95]), .B(SHARE2_OUT[47]), .Z(SHARE2_OUT[15])
         );
  XOR2_X1 MC2_U15 ( .A(SHIFTROWS[94]), .B(SHARE2_OUT[46]), .Z(SHARE2_OUT[14])
         );
  XOR2_X1 MC2_U14 ( .A(SHIFTROWS[91]), .B(SHARE2_OUT[43]), .Z(SHARE2_OUT[11])
         );
  XOR2_X1 MC2_U13 ( .A(SHIFTROWS[90]), .B(SHARE2_OUT[42]), .Z(SHARE2_OUT[10])
         );
  XOR2_X1 MC2_U12 ( .A(SHIFTROWS[87]), .B(SHARE2_OUT[39]), .Z(SHARE2_OUT[7])
         );
  XOR2_X1 MC2_U11 ( .A(SHIFTROWS[86]), .B(SHARE2_OUT[38]), .Z(SHARE2_OUT[6])
         );
  XOR2_X1 MC2_U10 ( .A(SHIFTROWS[83]), .B(SHARE2_OUT[35]), .Z(SHARE2_OUT[3])
         );
  XOR2_X1 MC2_U9 ( .A(SHIFTROWS[82]), .B(SHARE2_OUT[34]), .Z(SHARE2_OUT[2]) );
  XOR2_X1 MC2_U8 ( .A(SHIFTROWS[93]), .B(SHARE2_OUT[45]), .Z(SHARE2_OUT[13])
         );
  XOR2_X1 MC2_U7 ( .A(SHIFTROWS[92]), .B(SHARE2_OUT[44]), .Z(SHARE2_OUT[12])
         );
  XOR2_X1 MC2_U6 ( .A(SHIFTROWS[89]), .B(SHARE2_OUT[41]), .Z(SHARE2_OUT[9]) );
  XOR2_X1 MC2_U5 ( .A(SHIFTROWS[88]), .B(SHARE2_OUT[40]), .Z(SHARE2_OUT[8]) );
  XOR2_X1 MC2_U4 ( .A(SHIFTROWS[84]), .B(SHARE2_OUT[36]), .Z(SHARE2_OUT[4]) );
  XOR2_X1 MC2_U3 ( .A(SHIFTROWS[81]), .B(SHARE2_OUT[33]), .Z(SHARE2_OUT[1]) );
  XOR2_X1 MC2_U2 ( .A(SHIFTROWS[80]), .B(SHARE2_OUT[32]), .Z(SHARE2_OUT[0]) );
  XOR2_X1 MC2_U1 ( .A(SHIFTROWS[85]), .B(SHARE2_OUT[37]), .Z(SHARE2_OUT[5]) );
endmodule

