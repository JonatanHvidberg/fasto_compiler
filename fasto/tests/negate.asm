	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _a__str__8_
# was:	la	_a__str__8__addr, _a__str__8_
	ori	$10, $0, 1
# was:	ori	_a__str__8__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__8__init, 0(_a__str__8__addr)
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
# Function write_nl
write_nl:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_b_1_, 2, 0
# 	ori	_tmp_4_,_param_b_1_,0
# 	ori	_letBind_3_,_tmp_4_,0
	la	$2, _true
# was:	la	2, _true
	bne	$16, $0, _wBoolF_5_
# was:	bne	_letBind_3_, 0, _wBoolF_5_
	la	$2, _false
# was:	la	2, _false
_wBoolF_5_:
	jal	putstring
# was:	jal	putstring, 2
	la	$2, _a__str__8_
# was:	la	_tmp_7_, _a__str__8_
# _a__str__8_: string "\n"
# 	ori	_letBind_6_,_tmp_7_,0
# 	ori	2,_tmp_7_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_write_nlres_2_,_letBind_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_nlres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -20
	ori	$10, $0, 3
# was:	ori	_divide_L_14_, 0, 3
	ori	$11, $0, 2
# was:	ori	_divide_R_15_, 0, 2
	beq	$11, $0, _IllegalDivision_
# was:	beq	_divide_R_15_, 0, _IllegalDivision_
	div	$10, $10, $11
# was:	div	_eq_L_12_, _divide_L_14_, _divide_R_15_
	ori	$11, $0, 1
# was:	ori	_eq_R_13_, 0, 1
	ori	$2, $0, 0
# was:	ori	_arg_11_, 0, 0
	bne	$10, $11, _false_17_
# was:	bne	_eq_L_12_, _eq_R_13_, _false_17_
	ori	$2, $0, 1
# was:	ori	_arg_11_, 0, 1
_false_17_:
# 	ori	2,_arg_11_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$17, $2, 0
# was:	ori	_letBind_10_, 2, 0
	ori	$10, $0, 3
# was:	ori	_neg_25_, 0, 3
	sub	$10, $0, $10
# was:	sub	_divide_L_22_, 0, _neg_25_
	ori	$11, $0, 2
# was:	ori	_divide_R_23_, 0, 2
	beq	$11, $0, _IllegalDivision_
# was:	beq	_divide_R_23_, 0, _IllegalDivision_
	div	$10, $10, $11
# was:	div	_eq_L_20_, _divide_L_22_, _divide_R_23_
	ori	$11, $0, 2
# was:	ori	_neg_26_, 0, 2
	sub	$11, $0, $11
# was:	sub	_eq_R_21_, 0, _neg_26_
	ori	$2, $0, 0
# was:	ori	_arg_19_, 0, 0
	bne	$10, $11, _false_27_
# was:	bne	_eq_L_20_, _eq_R_21_, _false_27_
	ori	$2, $0, 1
# was:	ori	_arg_19_, 0, 1
_false_27_:
# 	ori	2,_arg_19_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$16, $2, 0
# was:	ori	_letBind_18_, 2, 0
	ori	$10, $0, 3
# was:	ori	_divide_L_32_, 0, 3
	ori	$11, $0, 2
# was:	ori	_neg_35_, 0, 2
	sub	$11, $0, $11
# was:	sub	_divide_R_33_, 0, _neg_35_
	beq	$11, $0, _IllegalDivision_
# was:	beq	_divide_R_33_, 0, _IllegalDivision_
	div	$10, $10, $11
# was:	div	_eq_L_30_, _divide_L_32_, _divide_R_33_
	ori	$11, $0, 2
# was:	ori	_neg_36_, 0, 2
	sub	$11, $0, $11
# was:	sub	_eq_R_31_, 0, _neg_36_
	ori	$2, $0, 0
# was:	ori	_arg_29_, 0, 0
	bne	$10, $11, _false_37_
# was:	bne	_eq_L_30_, _eq_R_31_, _false_37_
	ori	$2, $0, 1
# was:	ori	_arg_29_, 0, 1
_false_37_:
# 	ori	2,_arg_29_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$18, $2, 0
# was:	ori	_letBind_28_, 2, 0
	ori	$10, $0, 3
# was:	ori	_neg_45_, 0, 3
	sub	$10, $0, $10
# was:	sub	_divide_L_42_, 0, _neg_45_
	ori	$11, $0, 2
# was:	ori	_neg_46_, 0, 2
	sub	$11, $0, $11
# was:	sub	_divide_R_43_, 0, _neg_46_
	beq	$11, $0, _IllegalDivision_
# was:	beq	_divide_R_43_, 0, _IllegalDivision_
	div	$10, $10, $11
# was:	div	_eq_L_40_, _divide_L_42_, _divide_R_43_
	ori	$11, $0, 1
# was:	ori	_eq_R_41_, 0, 1
	ori	$2, $0, 0
# was:	ori	_arg_39_, 0, 0
	bne	$10, $11, _false_47_
# was:	bne	_eq_L_40_, _eq_R_41_, _false_47_
	ori	$2, $0, 1
# was:	ori	_arg_39_, 0, 1
_false_47_:
# 	ori	2,_arg_39_,0
	jal	write_nl
# was:	jal	write_nl, 2
# 	ori	_letBind_38_,2,0
# 	ori	_and_L_49_,_letBind_10_,0
	bne	$17, $0, _trueLabel_51_
# was:	bne	_and_L_49_, 0, _trueLabel_51_
	add	$2, $17, $0
# was:	add	_arg_48_, _and_L_49_, 0
	j	_endLabel_52_
_trueLabel_51_:
# 	ori	_and_L_53_,_letBind_18_,0
	bne	$16, $0, _trueLabel_55_
# was:	bne	_and_L_53_, 0, _trueLabel_55_
	add	$10, $16, $0
# was:	add	_and_R_50_, _and_L_53_, 0
	j	_endLabel_56_
_trueLabel_55_:
# 	ori	_and_L_57_,_letBind_28_,0
	bne	$18, $0, _trueLabel_59_
# was:	bne	_and_L_57_, 0, _trueLabel_59_
	add	$10, $18, $0
# was:	add	_and_R_54_, _and_L_57_, 0
	j	_endLabel_60_
_trueLabel_59_:
# 	ori	_and_R_58_,_letBind_38_,0
	and	$10, $18, $2
# was:	and	_and_R_54_, _and_L_57_, _and_R_58_
_endLabel_60_:
	and	$10, $16, $10
# was:	and	_and_R_50_, _and_L_53_, _and_R_54_
_endLabel_56_:
	and	$2, $17, $10
# was:	and	_arg_48_, _and_L_49_, _and_R_50_
_endLabel_52_:
# 	ori	2,_arg_48_,0
	jal	write_nl
# was:	jal	write_nl, 2
# 	ori	_mainres_9_,2,0
# 	ori	2,_mainres_9_,0
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
_a__str__8_:
	.space	4
	.asciiz	"\n"
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