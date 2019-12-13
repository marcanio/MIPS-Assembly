

addi $8, $0, 1
addi $8, $8, 1
addi $8, $8, 1
addi $9, $0, 1
addi $10, $0, 2
addi $11, $0, 3
add $12, $10, $11
addi $12, $0 1569
addiu $10, $10, -9
addu $10, $10, $10
addi $13, $0, 9
and $9, $9, $9
and $9, $9, $8
andi $9, $9, 1234
lui $6, 5869
nor $6, $6, $7
xor $6, $9, 12
xori $7, $10, 11
or $7, $7, $9
ori $7, $7, 810
addi $4, $0, 2
addi $5, $0, -3
slt $15, $4, $5
slt $15, $5, $4
slti $9, $15, 4
sltu $15, $4, $5
sltu $15, $5, $4
addi $7, $0, -3
add $4, $4, $7
addi $0, $0, 9
addi $7, $0, 999999
addi $7, $0, -3
addi $7, $0, 999999
addi $7, $0, -3
sll $1, $0, 9
addi $1, $0, 99
sll $2, $1, 30
srl $2, $1, 30
addi $0, $1, 5
ori	$2, $0,0xffff
ori	$3, $0,0xffbf
and	$4, $2, $3
or $6, $2, $3
xor $7, $2, $3
nor $8, $2, $3
andi $5, $2, 0xffbf
lui $2, 0xffff
ori	$2, $2, 65533
lui $3, 0xffff
ori	$3, $3, 65534
slt $9, $2, $3
sltu $10, $2, $3
slti $11, $2, 0
addi $2, $0, 0x00ff
srl $3, $2, 1
sll $4, $3, 25
srl $5, $4, 1
sra $6, $4, 1


addi $7, $0, 1
addi $8, $0, 25
srlv $9, $2, $7
sllv $10, $9, $8
srlv $11, $10, $7
srav $12, $10, $7
addi $6, $0, 1
addi $7, $0, 2
addi $6, $0, 0
sub $6, $6, $2

jal skip

lui $3, 0xffff
ori	$3, $3, 65534
slt $9, $2, $3
sltu $10, $2, $3
slti $11, $2, 0
addi $2, $0, 0x00ff
srl $3, $2, 1
sll $4, $3, 25
srl $5, $4, 1
sra $6, $4, 1
addi $7, $0, 1
addi $8, $0, 25
srlv $9, $2, $7
sllv $10, $9, $8
srlv $11, $10, $7
srav $12, $10, $7
skip:

j herp
back:
addi  $1,  $0,  1 		# Place “1” in $1
addiu  $2,  $0,  2		# Place “2” in $2
addi  $3,  $0,  3		# Place “3” in $3
herp: 
addi $2, $0, 1
addi  $4,  $0,  4		# Place “4” in $4
addi  $5,  $0,  5		# Place “5” in $5
addi  $6,  $0,  6		# Place “6” in $6
addi  $7,  $0,  7		# Place “7” in $7
addi  $8,  $0,  8		# Place “8” in $8
addi  $9,  $0,  9		# Place “9” in $9
addi  $10, $0,  10		# Place “10” in $10
bne $2, $1 back
add	 $6, $1,  $2		# $11 = $1 + $2
sub 	 $12, $11, $3 		# $12 = $11 - $3
add 	 $13, $12, $4		# $13 = $12 + $4
subu	 $14, $13, $5			# $14 = $13 - $5
addu   $15, $14, $6			# $15 = $14 + $6
sub 	 $16, $15, $7		# $16 = $15 - $7
add   $17, $16, $8			# $17 = $16 + $8
sub 	 $18, $17, $9		# $18 = $17 - $9
add   $19, $18, $10 		# $19 = $18 + $10
addi  $20, $0,  35			# Place “35” in $20
add 	 $21, $19, $20	 	# $21 = $19 + $20
andi $4, $6, 255			# r4 = r6 && 255
lui $4, 300
lw $4, 0($11)
xori $3, $7, 7
ori $2, $3, 255
slti $3, $2, 2
sltiu $3, $2, 4

jal meep
ori $2, $3, 255
slti $3, $2, 2
sltiu $3, $2, 4
meep:
ori $2, $3, 255
slti $3, $2, 2
sltiu $3, $2, 4

and $2, $2, $2
nor $3, $3, $3
xor $3, $2, $2
or $3, $2, $2
slt $9, $2, $5
sltu $8, $5, $2
addi $4, $zero, 7 
sll $4, $4, 8
srl $4, $4, 2
sra $4, $4, 2
sllv $10, $3, $8
srlv $9, $3, $8
srav $7, $10, $10

sw $6, 0($11)

addi $7, $0, -3
add $4, $4, $7
addi $0, $0, 9

addi $7, $0, 999999
addi $7, $0, -3
addi $7, $0, 999999
addi $7, $0, -3
sll $1, $0, 9
addi $1, $0, 99
sll $2, $1, 30
srl $2, $1, 30
addi $0, $1, 5
ori	$2, $0,0xffff
ori	$3, $0,0xffbf
and	$4, $2, $3
or $6, $2, $3
xor $7, $2, $3
nor $8, $2, $3
andi $5, $2, 0xffbf
lui $2, 0xffff
ori	$2, $2, 65533
lui $3, 0xffff
ori	$3, $3, 65534
slt $9, $2, $3
sltu $10, $2, $3
slti $11, $2, 0
addi $2, $0, 0x00ff
srl $3, $2, 1
sll $4, $3, 25
srl $5, $4, 1
sra $6, $4, 1
addi $7, $0, 1
addi $8, $0, 25
srlv $9, $2, $7
sllv $10, $9, $8
srlv $11, $10, $7
srav $12, $10, $7
addi $6, $12, 1
addi $7, $12, 2
addi $6, $12, 0
beq $6, $12, skip

addi $0, $0, 0
skip:
addi $7, $0, 2
loop:
addi $6, $6, 1
bne $6, $7, loop
addi  $2,  $0,  10              # Place "10" in $v0 to signal an "exit" or "halt"
syscall                         # Actually cause the halt