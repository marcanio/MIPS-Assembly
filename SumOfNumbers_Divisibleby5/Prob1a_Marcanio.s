
.data
#this program sums each number 0- 100 that is divisible by 5

.text

	addi	$t0,$0, 0	#t0 = i
	addi	$t1,$0, 0	#t1 = counter
	addi	$t3, $0, 5	#Used for mod
	
	Loop:
		addi $t0, $t0, 1	#i ++
		slti $t2, $t0, 100	#if  i < 100 then 1
		beq  $t2, 0, Exit 	#Exit if i > 100
		div  $t0, $t3		#i % 5
		mfhi $t4		#t4 is the temp of mod
		beq  $t4, 0, Count	#if i % 0 == 0 then add i to counter
		bne  $t2, $0, Loop	#if i<100 then LOOP
		
	Count:
		add  $t1, $t1, $t0	#If i is divisible by
		j Loop
	
	Exit:
	add $a0, $zero, $t1
	li $v0, 1 
	syscall