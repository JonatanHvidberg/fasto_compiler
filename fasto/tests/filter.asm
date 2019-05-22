	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_tmp_3_,_param_x_1_,0
# 	ori	_write_intres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_x_4_, 2, 0
# 	ori	_arr_reg_7_,_param_x_4_,0
	lw	$16, 0($10)
# was:	lw	_size_reg_6_, 0(_arr_reg_7_)
	ori	$17, $28, 0
# was:	ori	_write_int_arrres_5_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_int_arrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_int_arrres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_11_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_8_, _arr_reg_7_, 4
_loop_beg_12_:
	sub	$10, $19, $16
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_6_
	bgez	$10, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	lw	$2, 0($20)
# was:	lw	_res_reg_9_, 0(_elem_reg_8_)
# 	ori	2,_res_reg_9_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_15_,2,0
# 	ori	_res_reg_9_,_tmp_reg_15_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_8_, _elem_reg_8_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_9_, 0(_addr_reg_10_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_10_, _addr_reg_10_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	ori	$2, $17, 0
# was:	ori	2, _write_int_arrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isMul16
isMul16:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_17_,2,0
# 	ori	_divide_L_23_,_param_a_17_,0
	ori	$10, $0, 16
# was:	ori	_divide_R_24_, 0, 16
	div	$11, $2, $10
# was:	div	_times_L_21_, _divide_L_23_, _divide_R_24_
	ori	$10, $0, 16
# was:	ori	_times_R_22_, 0, 16
	mul	$10, $11, $10
# was:	mul	_eq_L_19_, _times_L_21_, _times_R_22_
# 	ori	_eq_R_20_,_param_a_17_,0
	ori	$11, $0, 0
# was:	ori	_isMul16res_18_, 0, 0
	bne	$10, $2, _false_26_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_26_
	ori	$11, $0, 1
# was:	ori	_isMul16res_18_, 0, 1
_false_26_:
	ori	$2, $11, 0
# was:	ori	2, _isMul16res_18_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$23, -36($29)
	sw	$22, -32($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -40
	jal	getint
# was:	jal	getint, 2
	ori	$10, $2, 0
# was:	ori	_letBind_28_, 2, 0
# 	ori	_size_reg_35_,_letBind_28_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_35_, _size_reg_35_, -1
	bgez	$10, _safe_lab_36_
# was:	bgez	_size_reg_35_, _safe_lab_36_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_36_:
	addi	$10, $10, 1
# was:	addi	_size_reg_35_, _size_reg_35_, 1
	ori	$16, $28, 0
# was:	ori	_arr_reg_32_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_42_, _size_reg_35_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_42_, _tmp_42_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_42_
	sw	$10, 0($16)
# was:	sw	_size_reg_35_, 0(_arr_reg_32_)
	addi	$12, $16, 4
# was:	addi	_addr_reg_37_, _arr_reg_32_, 4
	ori	$11, $0, 0
# was:	ori	_i_reg_38_, 0, 0
_loop_beg_39_:
	sub	$13, $11, $10
# was:	sub	_tmp_reg_41_, _i_reg_38_, _size_reg_35_
	bgez	$13, _loop_end_40_
# was:	bgez	_tmp_reg_41_, _loop_end_40_
	sw	$11, 0($12)
# was:	sw	_i_reg_38_, 0(_addr_reg_37_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_37_, _addr_reg_37_, 4
	addi	$11, $11, 1
# was:	addi	_i_reg_38_, _i_reg_38_, 1
	j	_loop_beg_39_
_loop_end_40_:
	lw	$11, 0($16)
# was:	lw	_size_in_reg_30_, 0(_arr_reg_32_)
	ori	$10, $28, 0
# was:	ori	_letBind_29_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_60_, _size_in_reg_30_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_60_, _tmp_60_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_60_
	sw	$11, 0($10)
# was:	sw	_size_in_reg_30_, 0(_letBind_29_)
	addi	$15, $10, 4
# was:	addi	_addr_reg_43_, _letBind_29_, 4
	addi	$13, $10, 0
# was:	addi	_set_size_reg_45_, _letBind_29_, 0
	ori	$14, $0, 0
# was:	ori	_i_reg_44_, 0, 0
	ori	$12, $0, 0
# was:	ori	_size_out_reg_31_, 0, 0
	addi	$16, $16, 4
# was:	addi	_elem_reg_33_, _arr_reg_32_, 4
_loop_beg_46_:
	sub	$17, $14, $11
# was:	sub	_tmp_reg_48_, _i_reg_44_, _size_in_reg_30_
	bgez	$17, _loop_end_47_
# was:	bgez	_tmp_reg_48_, _loop_end_47_
	lw	$19, 0($16)
# was:	lw	_res_reg_34_, 0(_elem_reg_33_)
# 	ori	_eq_L_51_,_res_reg_34_,0
	ori	$18, $19, 0
# was:	ori	_divide_L_55_, _res_reg_34_, 0
	ori	$17, $0, 2
# was:	ori	_divide_R_56_, 0, 2
	div	$17, $18, $17
# was:	div	_times_L_53_, _divide_L_55_, _divide_R_56_
	ori	$18, $0, 2
# was:	ori	_times_R_54_, 0, 2
	mul	$18, $17, $18
# was:	mul	_eq_R_52_, _times_L_53_, _times_R_54_
	ori	$17, $0, 0
# was:	ori	_fun_arg_res_50_, 0, 0
	bne	$19, $18, _false_58_
# was:	bne	_eq_L_51_, _eq_R_52_, _false_58_
	ori	$17, $0, 1
# was:	ori	_fun_arg_res_50_, 0, 1
_false_58_:
# 	ori	_tmp_bool_49_,_fun_arg_res_50_,0
	addi	$16, $16, 4
# was:	addi	_elem_reg_33_, _elem_reg_33_, 4
	beq	$17, $0, _falseLabel_59_
# was:	beq	_tmp_bool_49_, 0, _falseLabel_59_
	sw	$19, 0($15)
# was:	sw	_res_reg_34_, 0(_addr_reg_43_)
	addi	$12, $12, 1
# was:	addi	_size_out_reg_31_, _size_out_reg_31_, 1
	addi	$15, $15, 4
# was:	addi	_addr_reg_43_, _addr_reg_43_, 4
_falseLabel_59_:
	addi	$14, $14, 1
# was:	addi	_i_reg_44_, _i_reg_44_, 1
	j	_loop_beg_46_
_loop_end_47_:
	sw	$12, 0($13)
# was:	sw	_size_out_reg_31_, 0(_set_size_reg_45_)
# 	ori	_arr_reg_63_,_letBind_29_,0
	lw	$13, 0($10)
# was:	lw	_size_reg_62_, 0(_arr_reg_63_)
	ori	$12, $28, 0
# was:	ori	_letBind_61_, 28, 0
	sll	$11, $13, 2
# was:	sll	_tmp_74_, _size_reg_62_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_74_, _tmp_74_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_74_
	sw	$13, 0($12)
# was:	sw	_size_reg_62_, 0(_letBind_61_)
	addi	$11, $12, 4
# was:	addi	_addr_reg_66_, _letBind_61_, 4
	ori	$14, $0, 0
# was:	ori	_i_reg_67_, 0, 0
	addi	$15, $10, 4
# was:	addi	_elem_reg_64_, _arr_reg_63_, 4
_loop_beg_68_:
	sub	$10, $14, $13
# was:	sub	_tmp_reg_70_, _i_reg_67_, _size_reg_62_
	bgez	$10, _loop_end_69_
# was:	bgez	_tmp_reg_70_, _loop_end_69_
	lw	$10, 0($15)
# was:	lw	_res_reg_65_, 0(_elem_reg_64_)
	ori	$16, $10, 0
# was:	ori	_times_L_72_, _res_reg_65_, 0
# 	ori	_times_R_73_,_res_reg_65_,0
	mul	$10, $16, $10
# was:	mul	_fun_arg_res_71_, _times_L_72_, _times_R_73_
# 	ori	_res_reg_65_,_fun_arg_res_71_,0
	addi	$15, $15, 4
# was:	addi	_elem_reg_64_, _elem_reg_64_, 4
	sw	$10, 0($11)
# was:	sw	_res_reg_65_, 0(_addr_reg_66_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_66_, _addr_reg_66_, 4
	addi	$14, $14, 1
# was:	addi	_i_reg_67_, _i_reg_67_, 1
	j	_loop_beg_68_
_loop_end_69_:
	ori	$10, $12, 0
# was:	ori	_arr_reg_78_, _letBind_61_, 0
	lw	$16, 0($10)
# was:	lw	_size_in_reg_76_, 0(_arr_reg_78_)
	ori	$17, $28, 0
# was:	ori	_letBind_75_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_90_, _size_in_reg_76_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_90_, _tmp_90_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_90_
	sw	$16, 0($17)
# was:	sw	_size_in_reg_76_, 0(_letBind_75_)
	addi	$20, $17, 4
# was:	addi	_addr_reg_81_, _letBind_75_, 4
	addi	$19, $17, 0
# was:	addi	_set_size_reg_83_, _letBind_75_, 0
	ori	$21, $0, 0
# was:	ori	_i_reg_82_, 0, 0
	ori	$18, $0, 0
# was:	ori	_size_out_reg_77_, 0, 0
	addi	$22, $10, 4
# was:	addi	_elem_reg_79_, _arr_reg_78_, 4
_loop_beg_84_:
	sub	$10, $21, $16
# was:	sub	_tmp_reg_86_, _i_reg_82_, _size_in_reg_76_
	bgez	$10, _loop_end_85_
# was:	bgez	_tmp_reg_86_, _loop_end_85_
	lw	$23, 0($22)
# was:	lw	_res_reg_80_, 0(_elem_reg_79_)
	ori	$2, $23, 0
# was:	ori	2, _res_reg_80_, 0
	jal	isMul16
# was:	jal	isMul16, 2
	ori	$10, $2, 0
# was:	ori	_tmp_reg_88_, 2, 0
# 	ori	_tmp_bool_87_,_tmp_reg_88_,0
	addi	$22, $22, 4
# was:	addi	_elem_reg_79_, _elem_reg_79_, 4
	beq	$10, $0, _falseLabel_89_
# was:	beq	_tmp_bool_87_, 0, _falseLabel_89_
	sw	$23, 0($20)
# was:	sw	_res_reg_80_, 0(_addr_reg_81_)
	addi	$18, $18, 1
# was:	addi	_size_out_reg_77_, _size_out_reg_77_, 1
	addi	$20, $20, 4
# was:	addi	_addr_reg_81_, _addr_reg_81_, 4
_falseLabel_89_:
	addi	$21, $21, 1
# was:	addi	_i_reg_82_, _i_reg_82_, 1
	j	_loop_beg_84_
_loop_end_85_:
	sw	$18, 0($19)
# was:	sw	_size_out_reg_77_, 0(_set_size_reg_83_)
# 	ori	_arg_91_,_letBind_75_,0
	ori	$2, $17, 0
# was:	ori	2, _arg_91_, 0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_mainres_27_,2,0
# 	ori	2,_mainres_27_,0
	addi	$29, $29, 40
	lw	$23, -36($29)
	lw	$22, -32($29)
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000