.data
	#This program perfroms the 1D sum of absolute differences 
	#C Program-
		#int sad(char *array1, char *array2, int len) {
		#	char sum = 0;
		#	for(int i =0; i < len; i++) {
		#		sum+= sat8 (abs ( array1[i] - array2[i] ));
		#} return sum; }	
.text

sad:	
	addi $t0, $t0, 0	#t0 = Sum = 0
	addi $t3, $t3, 0	#t3 = i = 0
	addi $t5, $t5, 256	#Max Unsigned Bit
	
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
	add $v0,$t0, $zero 
	jr $ra

	

	
