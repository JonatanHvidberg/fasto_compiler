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
# Function incr
incr:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_1_,2,0
# 	ori	_param_b_2_,3,0
# 	ori	_plus_L_4_,_param_a_1_,0
# 	ori	_plus_R_5_,_param_b_2_,0
	add	$2, $2, $3
# was:	add	_incrres_3_, _plus_L_4_, _plus_R_5_
# 	ori	2,_incrres_3_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function writeInt
writeInt:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_n_6_, 2, 0
# 	ori	_tmp_8_,_param_n_6_,0
# 	ori	_writeIntres_7_,_tmp_8_,0
	ori	$2, $16, 0
# was:	ori	2, _writeIntres_7_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _writeIntres_7_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$12, $0, 3
# was:	ori	_size_reg_11_, 0, 3
	ori	$10, $28, 0
# was:	ori	_letBind_10_, 28, 0
	sll	$11, $12, 2
# was:	sll	_tmp_14_, _size_reg_11_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_14_, _tmp_14_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_14_
	sw	$12, 0($10)
# was:	sw	_size_reg_11_, 0(_letBind_10_)
	addi	$12, $10, 4
# was:	addi	_addr_reg_12_, _letBind_10_, 4
	ori	$11, $0, 1
# was:	ori	_tmp_reg_13_, 0, 1
	sw	$11, 0($12)
# was:	sw	_tmp_reg_13_, 0(_addr_reg_12_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_12_, _addr_reg_12_, 4
	ori	$11, $0, 2
# was:	ori	_tmp_reg_13_, 0, 2
	sw	$11, 0($12)
# was:	sw	_tmp_reg_13_, 0(_addr_reg_12_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_12_, _addr_reg_12_, 4
	ori	$11, $0, 3
# was:	ori	_tmp_reg_13_, 0, 3
	sw	$11, 0($12)
# was:	sw	_tmp_reg_13_, 0(_addr_reg_12_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_12_, _addr_reg_12_, 4
	ori	$3, $0, 0
# was:	ori	_val_reg_17_, 0, 0
# 	ori	_arg_reg_18_,_letBind_10_,0
	lw	$17, 0($10)
# was:	lw	_size_reg_16_, 0(_arg_reg_18_)
	ori	$16, $28, 0
# was:	ori	_letBind_15_, 28, 0
	sll	$11, $17, 2
# was:	sll	_tmp_27_, _size_reg_16_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_27_, _tmp_27_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_27_
	sw	$17, 0($16)
# was:	sw	_size_reg_16_, 0(_letBind_15_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_21_, _letBind_15_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_22_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_19_, _arg_reg_18_, 4
_loop_beg_23_:
	sub	$10, $18, $17
# was:	sub	_tmp_reg_25_, _i_reg_22_, _size_reg_16_
	bgez	$10, _loop_end_24_
# was:	bgez	_tmp_reg_25_, _loop_end_24_
	lw	$2, 0($20)
# was:	lw	_res_reg_20_, 0(_elem_reg_19_)
# 	ori	2,_res_reg_20_,0
# 	ori	3,_val_reg_17_,0
	jal	incr
# was:	jal	incr, 2 3
# 	ori	_tmp_reg_26_,2,0
	ori	$3, $2, 0
# was:	ori	_val_reg_17_, _tmp_reg_26_, 0
	addi	$20, $20, 4
# was:	addi	_elem_reg_19_, _elem_reg_19_, 4
	sw	$3, 0($19)
# was:	sw	_val_reg_17_, 0(_addr_reg_21_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_21_, _addr_reg_21_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_22_, _i_reg_22_, 1
	j	_loop_beg_23_
_loop_end_24_:
	ori	$10, $16, 0
# was:	ori	_arr_reg_29_, _letBind_15_, 0
	lw	$17, 0($10)
# was:	lw	_size_reg_28_, 0(_arr_reg_29_)
	ori	$16, $28, 0
# was:	ori	_mainres_9_, 28, 0
	sll	$11, $17, 2
# was:	sll	_tmp_38_, _size_reg_28_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_38_, _tmp_38_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_38_
	sw	$17, 0($16)
# was:	sw	_size_reg_28_, 0(_mainres_9_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_32_, _mainres_9_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_33_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_30_, _arr_reg_29_, 4
_loop_beg_34_:
	sub	$10, $19, $17
# was:	sub	_tmp_reg_36_, _i_reg_33_, _size_reg_28_
	bgez	$10, _loop_end_35_
# was:	bgez	_tmp_reg_36_, _loop_end_35_
	lw	$2, 0($20)
# was:	lw	_res_reg_31_, 0(_elem_reg_30_)
# 	ori	2,_res_reg_31_,0
	jal	writeInt
# was:	jal	writeInt, 2
# 	ori	_tmp_reg_37_,2,0
# 	ori	_res_reg_31_,_tmp_reg_37_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_30_, _elem_reg_30_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_31_, 0(_addr_reg_32_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_32_, _addr_reg_32_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_33_, _i_reg_33_, 1
	j	_loop_beg_34_
_loop_end_35_:
	ori	$2, $16, 0
# was:	ori	2, _mainres_9_, 0
	addi	$29, $29, 28
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
_IllegalDivision_:
	la	$4, _IllegalDivisionByZero_
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
_IllegalDivisionByZero_:
	.asciiz	"Error: Can't divide by zero"
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