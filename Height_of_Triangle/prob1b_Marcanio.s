.data
	prompt: .asciiz "Enter height of triangle: "
	msgnl:  .asciiz     "\n"	#Used to make a new line
	Star:   .asciiz	"*"
	Height: .asciiz "h="

.text
	#Prompt the user to enter height of triangle
	li $v0, 4
	la $a0, prompt
	syscall
	#Get the height and store it in $t0
	li $v0, 5
	syscall
	move $t0, $v0 #t0 = height
	
	addi $t1, $0, 1	        #i = 1 
	add $t3, $t3, $0	#Constant CNT
	
Loop: #Loop
	add $t3, $0,$0		#set constant to 0
	sle  $t2, $t1,$t0 	#if  i < n then 1
	addi $t1, $t1, 1	#i ++
	beq  $t2, 0, Exit 	#Exit if i > n
	j    While	#If loop is going go to while loop
Loopend: #LoopEnd
	jal  NewLine
	bne  $t2, $0, Loop	#If i is still less than n LOOP
	j Exit
			

While: #While
	addi $t3, $t3, 1	#cnt ++
	slt  $t4, $t3, $t1	# cnt < i
	beq  $t4, $0, Loopend 
	j     Star1		#print star
	 
NewLine: #Newline
	li      $v0,4                   # syscall: Prints a New Line
        la      $a0,msgnl
        syscall
        jr $ra
           	
Star1: #Star1
	li      $v0,4                   # syscall: Prints a Star
        la      $a0,Star
        syscall
        j While

 Exit: #Exit
 	li      $v0,4                   # syscall: print string
        la      $a0,Height
        la      $a1,msgnl
        syscall
 #Print Height 
 	li $v0, 1
 	move $a0, $t0
	syscall
		
 
 
	
	
	
