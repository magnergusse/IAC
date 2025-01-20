.data

result: .asciiz "\nO numero que escreveste e': "
sentence: .ascii "1.hahah\n"
.ascii "write a number\n"
.text
.globl main

main:
la $a0, sentence
li $v0, 4
syscall

li $v0, 5 # $v0 = 5 (syscall "read_int")
 syscall # read_int() (o valor lido é
 # devolvido no reg. $v0)

la $a0, result
li $v0, 4
syscall


li $v0, 5 
syscall #v0=read int

add $a0, $v0, $0 #a0 = v0 +0
addi $v0, $0, 1
syscall

