
#	int f(int a, int b, int c, int d){
#		return func(func(a.b), c+d );
# Asumming func() paramters are in $a0 and $a1. aAnd the Return value is stored in $v0
f: 
	addiu $sp, $sp, -12 	# Set the stack poitner to 12 Bytes
	
	sw $ra, 0($sp) 	# save return address
	sw $a2, 4($sp)	# save the value b
	sw $a3, 8($sp) 	# save the value b
	
 	jal func  	# call func(a,b)
 	add $a0, $v0,$0 #Store the result of funct(a,b)
 	
 	lw $a2, 4($sp) #load values in
        lw $a3, 8($sp) 
        
        add $a1, $a2, $a3 #C+D
        
        jal func #func(funct((a,b), c+d))
        
        lw $ra,0($sp) #Store the result
        addi $sp, $sp, 12
        jr $ra #jump to the return address
 	
