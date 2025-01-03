// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module systolic_array_systolic_array_Pipeline_VITIS_LOOP_27_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp,
        i_1_t33_mid2,
        local_A_V_0_0_1_reload,
        local_A_V_0_1_1_reload,
        local_A_V_0_2_1_reload,
        local_A_V_0_3_1_reload,
        local_A_V_1_0_1_reload,
        local_A_V_1_1_1_reload,
        local_A_V_1_2_1_reload,
        local_A_V_1_3_1_reload,
        local_A_V_2_0_1_reload,
        local_A_V_2_1_1_reload,
        local_A_V_2_2_1_reload,
        local_A_V_2_3_1_reload,
        local_A_V_3_0_1_reload,
        local_A_V_3_1_1_reload,
        local_A_V_3_2_1_reload,
        local_A_V_3_3_1_reload,
        j_1_t,
        local_B_V_0_0_1_reload,
        local_B_V_0_1_1_reload,
        local_B_V_0_2_1_reload,
        local_B_V_0_3_1_reload,
        local_B_V_1_0_1_reload,
        local_B_V_1_1_1_reload,
        local_B_V_1_2_1_reload,
        local_B_V_1_3_1_reload,
        local_B_V_2_0_1_reload,
        local_B_V_2_1_1_reload,
        local_B_V_2_2_1_reload,
        local_B_V_2_3_1_reload,
        local_B_V_3_0_1_reload,
        local_B_V_3_1_1_reload,
        local_B_V_3_2_1_reload,
        local_B_V_3_3_1_reload,
        buffer_V_3_0_out,
        buffer_V_3_0_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] tmp;
input  [1:0] i_1_t33_mid2;
input  [15:0] local_A_V_0_0_1_reload;
input  [15:0] local_A_V_0_1_1_reload;
input  [15:0] local_A_V_0_2_1_reload;
input  [15:0] local_A_V_0_3_1_reload;
input  [15:0] local_A_V_1_0_1_reload;
input  [15:0] local_A_V_1_1_1_reload;
input  [15:0] local_A_V_1_2_1_reload;
input  [15:0] local_A_V_1_3_1_reload;
input  [15:0] local_A_V_2_0_1_reload;
input  [15:0] local_A_V_2_1_1_reload;
input  [15:0] local_A_V_2_2_1_reload;
input  [15:0] local_A_V_2_3_1_reload;
input  [15:0] local_A_V_3_0_1_reload;
input  [15:0] local_A_V_3_1_1_reload;
input  [15:0] local_A_V_3_2_1_reload;
input  [15:0] local_A_V_3_3_1_reload;
input  [1:0] j_1_t;
input  [15:0] local_B_V_0_0_1_reload;
input  [15:0] local_B_V_0_1_1_reload;
input  [15:0] local_B_V_0_2_1_reload;
input  [15:0] local_B_V_0_3_1_reload;
input  [15:0] local_B_V_1_0_1_reload;
input  [15:0] local_B_V_1_1_1_reload;
input  [15:0] local_B_V_1_2_1_reload;
input  [15:0] local_B_V_1_3_1_reload;
input  [15:0] local_B_V_2_0_1_reload;
input  [15:0] local_B_V_2_1_1_reload;
input  [15:0] local_B_V_2_2_1_reload;
input  [15:0] local_B_V_2_3_1_reload;
input  [15:0] local_B_V_3_0_1_reload;
input  [15:0] local_B_V_3_1_1_reload;
input  [15:0] local_B_V_3_2_1_reload;
input  [15:0] local_B_V_3_3_1_reload;
output  [15:0] buffer_V_3_0_out;
output   buffer_V_3_0_out_ap_vld;

reg ap_idle;
reg buffer_V_3_0_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln27_fu_352_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln27_reg_534;
reg   [0:0] icmp_ln27_reg_534_pp0_iter1_reg;
reg   [15:0] lhs_fu_114;
reg   [15:0] ap_sig_allocacmp_lhs_load_1;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg   [2:0] k_fu_118;
reg   [2:0] ap_sig_allocacmp_k_1;
wire   [2:0] add_ln27_fu_358_p2;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] trunc_ln1169_fu_364_p1;
wire   [3:0] tmp_4_fu_368_p3;
wire   [4:0] r_V_fu_380_p17;
wire  signed [15:0] r_V_fu_380_p18;
wire   [3:0] tmp_5_fu_422_p3;
wire   [4:0] tmp_2_fu_434_p17;
wire  signed [15:0] tmp_2_fu_434_p18;
wire  signed [23:0] trunc_ln1_fu_492_p1;
wire   [23:0] grp_fu_510_p3;
wire   [23:0] grp_fu_510_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

systolic_array_mux_165_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 16 ),
    .din9_WIDTH( 16 ),
    .din10_WIDTH( 16 ),
    .din11_WIDTH( 16 ),
    .din12_WIDTH( 16 ),
    .din13_WIDTH( 16 ),
    .din14_WIDTH( 16 ),
    .din15_WIDTH( 16 ),
    .din16_WIDTH( 5 ),
    .dout_WIDTH( 16 ))
mux_165_16_1_1_U81(
    .din0(local_A_V_0_0_1_reload),
    .din1(local_A_V_0_1_1_reload),
    .din2(local_A_V_0_2_1_reload),
    .din3(local_A_V_0_3_1_reload),
    .din4(local_A_V_1_0_1_reload),
    .din5(local_A_V_1_1_1_reload),
    .din6(local_A_V_1_2_1_reload),
    .din7(local_A_V_1_3_1_reload),
    .din8(local_A_V_2_0_1_reload),
    .din9(local_A_V_2_1_1_reload),
    .din10(local_A_V_2_2_1_reload),
    .din11(local_A_V_2_3_1_reload),
    .din12(local_A_V_3_0_1_reload),
    .din13(local_A_V_3_1_1_reload),
    .din14(local_A_V_3_2_1_reload),
    .din15(local_A_V_3_3_1_reload),
    .din16(r_V_fu_380_p17),
    .dout(r_V_fu_380_p18)
);

systolic_array_mux_165_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 16 ),
    .din9_WIDTH( 16 ),
    .din10_WIDTH( 16 ),
    .din11_WIDTH( 16 ),
    .din12_WIDTH( 16 ),
    .din13_WIDTH( 16 ),
    .din14_WIDTH( 16 ),
    .din15_WIDTH( 16 ),
    .din16_WIDTH( 5 ),
    .dout_WIDTH( 16 ))
mux_165_16_1_1_U82(
    .din0(local_B_V_0_0_1_reload),
    .din1(local_B_V_0_1_1_reload),
    .din2(local_B_V_0_2_1_reload),
    .din3(local_B_V_0_3_1_reload),
    .din4(local_B_V_1_0_1_reload),
    .din5(local_B_V_1_1_1_reload),
    .din6(local_B_V_1_2_1_reload),
    .din7(local_B_V_1_3_1_reload),
    .din8(local_B_V_2_0_1_reload),
    .din9(local_B_V_2_1_1_reload),
    .din10(local_B_V_2_2_1_reload),
    .din11(local_B_V_2_3_1_reload),
    .din12(local_B_V_3_0_1_reload),
    .din13(local_B_V_3_1_1_reload),
    .din14(local_B_V_3_2_1_reload),
    .din15(local_B_V_3_3_1_reload),
    .din16(tmp_2_fu_434_p17),
    .dout(tmp_2_fu_434_p18)
);

systolic_array_mac_muladd_16s_16s_24ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
mac_muladd_16s_16s_24ns_24_4_1_U83(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_2_fu_434_p18),
    .din1(r_V_fu_380_p18),
    .din2(grp_fu_510_p2),
    .ce(1'b1),
    .dout(grp_fu_510_p3)
);

systolic_array_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_352_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_118 <= add_ln27_fu_358_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_118 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_fu_114 <= tmp;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            lhs_fu_114 <= {{trunc_ln1_fu_492_p1[23:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln27_reg_534 <= icmp_ln27_fu_352_p2;
        icmp_ln27_reg_534_pp0_iter1_reg <= icmp_ln27_reg_534;
    end
end

always @ (*) begin
    if (((icmp_ln27_fu_352_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_k_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_118;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_sig_allocacmp_lhs_load_1 = {{trunc_ln1_fu_492_p1[23:8]}};
    end else begin
        ap_sig_allocacmp_lhs_load_1 = lhs_fu_114;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln27_reg_534_pp0_iter1_reg == 1'd1))) begin
        buffer_V_3_0_out_ap_vld = 1'b1;
    end else begin
        buffer_V_3_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln27_fu_358_p2 = (ap_sig_allocacmp_k_1 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buffer_V_3_0_out = lhs_fu_114;

assign grp_fu_510_p2 = {{ap_sig_allocacmp_lhs_load_1}, {8'd0}};

assign icmp_ln27_fu_352_p2 = ((ap_sig_allocacmp_k_1 == 3'd4) ? 1'b1 : 1'b0);

assign r_V_fu_380_p17 = tmp_4_fu_368_p3;

assign tmp_2_fu_434_p17 = tmp_5_fu_422_p3;

assign tmp_4_fu_368_p3 = {{i_1_t33_mid2}, {trunc_ln1169_fu_364_p1}};

assign tmp_5_fu_422_p3 = {{trunc_ln1169_fu_364_p1}, {j_1_t}};

assign trunc_ln1169_fu_364_p1 = ap_sig_allocacmp_k_1[1:0];

assign trunc_ln1_fu_492_p1 = grp_fu_510_p3;

endmodule //systolic_array_systolic_array_Pipeline_VITIS_LOOP_27_5
