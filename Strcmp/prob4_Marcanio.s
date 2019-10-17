.text
#this does not compile but this is assuming a0 and a1 hold the values of str1 and str2
	
strcmp:
   lw $t1,0($a0)	#load in t1 = a0
   lw $t2,0($a1)	#load in t1 = a1

   beq $t1,'\0',str1 	#go to str1 if $t1 and null are equal
   beq $t2,'\0',str2	#go to str2 if $t2 and null are equal

   bne $t1,$t2,notEqual #if they are not equal go to not equal

   add $a0,$a0,1	#increment str1
   add $a1,$a1,1 	#increment str2
   j strcmp

str1:
   beq $t2,'\0',equal  #now check if t2 is also null.. if so they are equal
   j notEqual

str2:
   beq $t1,'\0',equal   #now check if t1 is also null.. if so they are equal
   j notEqual

equal:
li $t0,0	#output 0 if they are equal 	
j exit
notEqual:
   li $v0,100	#output a number not 0 if they are not equal.. IN this case 100
   j exit

exit:
   li $v0,100
   syscall
