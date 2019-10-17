.data

array1: .byte 1,200,200,200,200,200	
array2: .byte 1,1,1,1,1,1

array3: .byte 0,1,2,3
array4: .byte 0,0,0,0

array5: .byte 0,1,2,3,4,5,6,7,8,9,10
array6: .byte 0,0,0,0,0,0,0,1,2,3,4
newLine: .asciiz "\n"


.text

	#Test 1- Test if the sum goes over the capacity of a byte than it return the max unsigned byte
	la $a0, array1		#$a0 = Address of array1
	la $a1, array2		#a1 = Address of array2
	li $a2, 6		#length = 6
	jal sad 		
	li $v0, 1		#load in the value at a0
	add $a0, $t0 , $zero	# a0 = t0 (sum)
	syscall
	li $v0, 4      
	la $a0, newLine        	#Print newline
	syscall
	#Test 2- Test the opperation that was given to us in the homework
	la $a0, array3		#$a0 = Address of array1
	la $a1, array4		#a1 = Address of array2
	li $a2, 4		#length = 4
	jal sad 		
	li $v0, 1		#load in the value at a0
	add $a0, $t0 , $zero	# a0 = t0 (sum)
	syscall
	li $v0, 4      
	la $a0, newLine        	#Print newline
	syscall
	#Test 3 - this a test showing more inputs and adding onto test 2
	la $a0, array5		#$a0 = Address of array1
	la $a1, array6		#a1 = Address of array2
	li $a2, 11		#length = 11
	jal sad 		
	li $v0, 1		#load in the value at a0
	add $a0, $t0 , $zero	# a0 = t0 (sum)
	syscall
	li $v0, 4      
	la $a0, newLine        	#Print newline
	syscall
	
	j done			#Finish the program

sad:	
	addi $t0, $zero, 0	#t0 = Sum = 0
	addi $t3, $zero, 0	#t3 = i = 0
	addi $t5, $zero, 256	#Max Unsigned Bit
	
Loop:	ble  $a2, $t3, exit	#if (len <= i) branch to Exit  
	lb   $t1, 0($a0)	#t1= array1[i]
	lb   $t2, 0($a1)	#t2= array2[i]
	sub  $t4, $t1, $t2	# $t4 = array1 - array2
	abs  $t4, $t4		#finds the absoulte value of the difference can also be done with SRA / XOR/ SUB
	add  $t0, $t0, $t4	# Sum += abs(array1[i] +array2[i])
	bge  $t0, $t5, maxExit	# if sum = 256 exit
	addi $a0, $a0, 1	#increment the first array by 1
	addi $a1, $a1, 1	#increment the second array by 1
	addi $t3, $t3, 1	#i++
	j Loop			#Loop
	
maxExit:add $t0, $zero, $zero	#Set sum to max unsigned bit
	add $t0, $zero, $t5	
exit:	
	add $v0,$t0, $zero 	#Store the result(Sum ) in v0 
	jr $ra			#Return back to test cases
done:
