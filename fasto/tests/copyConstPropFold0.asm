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
# Function f
f:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$11, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_param_y_2_,3,0
# 	ori	_plus_L_6_,_param_x_1_,0
	ori	$10, $0, 2
# was:	ori	_plus_R_7_, 0, 2
	add	$10, $11, $10
# was:	add	_times_L_4_, _plus_L_6_, _plus_R_7_
# 	ori	_minus_L_8_,_param_y_2_,0
	ori	$11, $0, 2
# was:	ori	_minus_R_9_, 0, 2
	sub	$11, $3, $11
# was:	sub	_times_R_5_, _minus_L_8_, _minus_R_9_
	mul	$2, $10, $11
# was:	mul	_fres_3_, _times_L_4_, _times_R_5_
# 	ori	2,_fres_3_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	jal	getint
# was:	jal	getint, 2
	ori	$12, $2, 0
# was:	ori	_letBind_11_, 2, 0
# 	ori	_letBind_13_,_letBind_11_,0
	ori	$10, $0, 2
# was:	ori	_letBind_14_, 0, 2
# 	ori	_plus_L_17_,_letBind_13_,0
	ori	$11, $0, 2
# was:	ori	_plus_R_18_, 0, 2
	add	$11, $12, $11
# was:	add	_times_L_15_, _plus_L_17_, _plus_R_18_
# 	ori	_minus_L_19_,_letBind_14_,0
	ori	$12, $0, 2
# was:	ori	_minus_R_20_, 0, 2
	sub	$10, $10, $12
# was:	sub	_times_R_16_, _minus_L_19_, _minus_R_20_
	mul	$16, $11, $10
# was:	mul	_letBind_12_, _times_L_15_, _times_R_16_
# 	ori	_tmp_21_,_letBind_12_,0
# 	ori	_mainres_10_,_tmp_21_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_10_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_10_, 0
	addi	$29, $29, 12
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