.data
	nums: .word -2, 3, 6, 4, 8, 126, -131, 17, 0
	newline : .asciiz "\n"

.text

main:
	addi $t0, $zero, 0		#st0= index


while:
		beq $t0, 32, endwhile
		lw $t1, nums($t0)	#t1=nums at index t0
		addi $t0, $t0, 4	#index +4

		div $t2, $t1, 2		#div by 2
		mfhi $t3		#remainder in $t3

	#	syscall

if:		
		bne $t3, 0, exit	#if remainder !=0 exit
 
  		li $v0, 1
 		addi $a0, $t1, 0 #Print the no
		syscall

 		li $v0,11
		li $a0, ',' #Print comma  
		#trocar na linha anterior o lw por li pois um caractere ',' � uma constante
		syscall
#		j if  n�o podes voltar para if, mas sim para o inicio do while
exit:
		
		j while
endwhile:
			li	$v0,10		#exit program
			syscall
