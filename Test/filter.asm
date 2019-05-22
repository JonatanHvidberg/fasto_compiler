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
# Function readInt
readInt:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_17_,2,0
	jal	getint
# was:	jal	getint, 2
# 	ori	_readIntres_18_,2,0
# 	ori	2,_readIntres_18_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -20
	ori	$10, $0, 15
# was:	ori	_letBind_20_, 0, 15
# 	ori	_size_reg_22_,_letBind_20_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_22_, _size_reg_22_, -1
	bgez	$10, _safe_lab_23_
# was:	bgez	_size_reg_22_, _safe_lab_23_
	ori	$5, $0, 7
# was:	ori	5, 0, 7
	j	_IllegalArrSizeError_
_safe_lab_23_:
	addi	$10, $10, 1
# was:	addi	_size_reg_22_, _size_reg_22_, 1
	ori	$16, $28, 0
# was:	ori	_letBind_21_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_29_, _size_reg_22_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_29_, _tmp_29_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_29_
	sw	$10, 0($16)
# was:	sw	_size_reg_22_, 0(_letBind_21_)
	addi	$12, $16, 4
# was:	addi	_addr_reg_24_, _letBind_21_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_25_, 0, 0
_loop_beg_26_:
	sub	$11, $13, $10
# was:	sub	_tmp_reg_28_, _i_reg_25_, _size_reg_22_
	bgez	$11, _loop_end_27_
# was:	bgez	_tmp_reg_28_, _loop_end_27_
	sw	$13, 0($12)
# was:	sw	_i_reg_25_, 0(_addr_reg_24_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_24_, _addr_reg_24_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_25_, _i_reg_25_, 1
	j	_loop_beg_26_
_loop_end_27_:
# 	ori	_arr_reg_33_,_letBind_21_,0
	lw	$10, 0($16)
# was:	lw	_size_in_reg_31_, 0(_arr_reg_33_)
	ori	$11, $28, 0
# was:	ori	_letBind_30_, 28, 0
	sll	$12, $10, 2
# was:	sll	_tmp_47_, _size_in_reg_31_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_47_, _tmp_47_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_47_
	sw	$10, 0($11)
# was:	sw	_size_in_reg_31_, 0(_letBind_30_)
	addi	$13, $11, 4
# was:	addi	_addr_reg_36_, _letBind_30_, 4
	addi	$12, $11, 0
# was:	addi	_test_38_, _letBind_30_, 0
	ori	$15, $0, 0
# was:	ori	_i_reg_37_, 0, 0
	ori	$14, $0, 0
# was:	ori	_size_out_reg_32_, 0, 0
	addi	$16, $16, 4
# was:	addi	_elem_reg_34_, _arr_reg_33_, 4
_loop_beg_39_:
	sub	$17, $15, $10
# was:	sub	_tmp_reg_41_, _i_reg_37_, _size_in_reg_31_
	bgez	$17, _loop_end_40_
# was:	bgez	_tmp_reg_41_, _loop_end_40_
	lb	$17, 0($16)
# was:	lb	_res_reg_35_, 0(_elem_reg_34_)
# 	ori	_lt_L_44_,_res_reg_35_,0
	ori	$18, $0, 7
# was:	ori	_lt_R_45_, 0, 7
	slt	$18, $17, $18
# was:	slt	_fun_arg_res_43_, _lt_L_44_, _lt_R_45_
# 	ori	_tmp_bool_42_,_fun_arg_res_43_,0
	addi	$16, $16, 4
# was:	addi	_elem_reg_34_, _elem_reg_34_, 4
	beq	$18, $0, _falseLabel_46_
# was:	beq	_tmp_bool_42_, 0, _falseLabel_46_
	sw	$17, 0($13)
# was:	sw	_res_reg_35_, 0(_addr_reg_36_)
	addi	$14, $14, 1
# was:	addi	_size_out_reg_32_, _size_out_reg_32_, 1
	addi	$13, $13, 4
# was:	addi	_addr_reg_36_, _addr_reg_36_, 4
_falseLabel_46_:
	addi	$15, $15, 1
# was:	addi	_i_reg_37_, _i_reg_37_, 1
	j	_loop_beg_39_
_loop_end_40_:
	sw	$14, 0($12)
# was:	sw	_size_out_reg_32_, 0(_test_38_)
# 	ori	_arg_48_,_letBind_30_,0
	ori	$2, $11, 0
# was:	ori	2, _arg_48_, 0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_mainres_19_,2,0
# 	ori	2,_mainres_19_,0
	addi	$29, $29, 20
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