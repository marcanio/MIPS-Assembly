#
# First part of the Lab 3 test program
#

# data section
.data
hexdigits: .ascii "654jfhgvhtsrjt"
# code/instruction section
.text


addi  $1,  $0,  1 		# Place “1” in $1
addiu  $2,  $0,  2		# Place “2” in $2
addi  $3,  $0,  3		# Place “3” in $3
j dumb
addi $0, $0, 0
addi $0, $0, 0
addi $0, $0, 0
addi $2, $0, 1
addi  $4,  $0,  4		# Place “4” in $4
addi  $5,  $0,  5		# Place “5” in $5
addi  $6,  $0,  6		# Place “6” in $6
addi  $7,  $0,  7		# Place “7” in $7
addi  $8,  $0,  8		# Place “8” in $8
addi  $9,  $0,  9		# Place “9” in $9
addi  $10, $0,  10		# Place “10” in $10
dumb:
add	 $6, $1,  $2		# $11 = $1 + $2
sub 	 $12, $11, $3 		# $12 = $11 - $3
add 	 $13, $3, $4		# $13 = $12 + $4 --
subu	 $14, $4, $5			# $14 = $13 - $5
addu   $15, $5, $6			# $15 = $14 + $6
sub 	 $16, $6, $7		# $16 = $15 - $7
add   $17, $7, $8			# $17 = $16 + $8
sub 	 $18, $8, $9		# $18 = $17 - $9
add   $19, $9, $10 		# $19 = $18 + $10
addi  $20, $0,  35			# Place “35” in $20
andi $4, $6, 255			# r4 = r6 && 255
lui $4, 300
xori $3, $7, 7
addi $0, $0, 0
ori $2, $5, 255
slti $3, $6, 2
sltiu $3, $7, 4
jal skip

addi $0, $0, 0
ori $2, $4, 255
slti $3, $6, 2
sltiu $3, $6, 4

ori $2, $6, 255
slti $3, $7, 2
sltiu $3, $7, 4

and $2, $6, $6
nor $3, $4, $5
xor $3, $6, $7
or $3, $4, $5
slt $9, $2, $5
sltu $8, $5, $2
addi $4, $zero, 7 
sll $4, $5, 8
srl $4, $6, 2
sra $4, $7, 2
sllv $10, $3, $8
srlv $9, $3, $8
srav $7, $8, $3


addi $7, $0, -3
add $4, $4, $8
addi $0, $0, 9
j out

addi $0, $0, 0
addi $7, $0, 9999
addi $7, $0, -3
skip:
addi $7, $0, 9999
addi $7, $0, -3
sll $1, $0, 9
addi $1, $0, 99
sll $2, $2, 30
srl $2, $3, 30
ori	$2, $0,0xffff
ori	$3, $0,0xffbf
and	$4, $5, $6
add $0, $0, $0
or $6, $6, $7
jr $ra

addi $0, $0, 0
xor $7, $2, $3
nor $8, $2, $3
andi $5, $2, 0xffbf
lui $11, 0xffff
ori	$3, $6, 65533
lui $3, 0xffff
ori	$3, $10, 65534
slt $9, $2, $10
add $16, $8, $2
sltu $10, $2, $8
slti $11, $2, 0
addi $2, $0, 0x00ff
srl $3, $5, 1
sll $4, $6, 25
srl $5, $7, 1
sra $6, $8, 1
addi $7, $0, 1
addi $0, $0, 0
out:
addi $0, $0, 0
addi $8, $0, 25
srlv $9, $2, $7
sllv $10, $11, $6
srlv $11, $2, $7
srav $12, $2, $7
addi $6, $0, 1
addi $7, $0, 2
addi $9, $0, 0


addi $0, $0, 0

addi $7, $0, 2
addi $6, $6, 1



addi  $2,  $0,  10              # Place "10" in $v0 to signal an "exit" or "halt"
syscall                         # Actually cause the halt
