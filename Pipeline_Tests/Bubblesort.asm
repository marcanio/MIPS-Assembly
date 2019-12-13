 

 

.data

 

numbers: .word 8, 100, 0, 3, 7, 9, 2, 7, -3, 0                           #create array which holds numbers

message: .asciiz "Sorted Array: "                                                #message to be printed

 

.text

main:

                #li $s1, 0                                                                                 #initialize counter 2 for loop 2
				addi $s1,$0,0
                #la $s7, numbers                                                                             #load address of numbers into $s7


                #andi $s7, $s7, 0x0000ffff                                                             #Used to load in values

                lui $s7, 0x1001

 

                #Nops

                addi $0, $0 , 0

                addi $0, $0 , 0

                addi $0, $0 , 0

                ori $s7, $s7, 0x0000

               

                #li $s0, 0                                                                 #initialize counter 1 for loop 1
				addi $s0,$0,0
				
				
                #li $s6, 9                                                                                 #n - 1
				addi $s6, $0, 9
               

               

 

         #       li $t3, 0                                                                 #initialize counter for printing

          #      li $t4, 10

 

         #       li $v0, 4,                                                                               #print out message

          #      la $a0, message

        #        syscall

 

loop:
				addi $0, $0 , 0
				addi $0, $0 , 0
				addi $0, $0 , 0
                sll $t7, $s1, 2                                                                      #multiply $s1 by 2 and put it in t7

                #2 stalls

                addi $0, $0 , 0

                addi $0, $0 , 0

                addi $0, $0 , 0

               

                add $t7, $s7, $t7                                                              #add the address of numbers to t7

                #2 stalls

                addi $0, $0 , 0

                addi $0, $0 , 0

                addi $0, $0 , 0

               

                lw $t0, 0($t7)                                                     #load numbers[j]            

                lw $t1, 4($t7)                                                                     #load numbers[j+1]

                #2 stalls

                addi $0, $0 , 0

                addi $0, $0 , 0

                addi $0, $0 , 0

                addi $0, $0 , 0

                slt $t2, $t0, $t1                                                  #if t0 < t1
				addi $0, $0 , 0
				addi $0, $0 , 0
				addi $0, $0 , 0
				addi $0, $0 , 0
                bne $t2, $zero, increment
				addi $0, $0 , 0
 

                sw $t1, 0($t7)                                                                    #swap

                sw $t0, 4($t7)

 

increment:         

 
				
                addi $s1, $s1, 1    
                sub $s5, $s6, $s0                                                   #increment t1
				addi $0, $0 , 0                                             #increment t1
				addi $0, $0 , 0                                             #increment t1
				addi $0, $0 , 0                                                        #subtract s0 from s6
				addi $0, $0 , 0  
 

                bne  $s1, $s5, loop                                                           #if s1 (counter for second loop) does not equal 9, loop
				addi $0, $0 , 0
                addi $s0, $s0, 1                                                 #otherwise add 1 to s0

                #1 stall

                addi $0, $0 , 0
				addi $0, $0 , 0
				addi $0, $0 , 0
                #li $s1, 0                                                                                 #reset s1 to 0
				addi $s1, $0, 0
 

                bne  $s0, $s6, loop                                                           # go back through loop with s1 = s1 + 1
				addi $0, $0 , 0

#print:

              #  beq $t3, $t4, final                                                             #if t3 = t4 go to final

               

               # lw $t5, 0($s7)                                                                     #load from numbers

               

               # li $v0, 1                                                                 #print the number

              #  move $a0, $t5

               # syscall

 

               # li $a0, 32                                                                              #print space

               # li $v0, 11

               # syscall

               

               # addi $s7, $s7, 4                                                 #increment through the numbers

                #addi $t3, $t3, 1                                                  #increment counter

 

               # j print

 

final:     

                addi $v0,$0, 10                                                                              #end program

                syscall