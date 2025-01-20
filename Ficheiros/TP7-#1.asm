.data

intro: .asciiz "Introduz um numero:\n "
par: .ascii "O numero e'par\n"
impar: .ascii "O numero e'impar\n"

.text

main:
la $a0 intro
la $v0, 4
syscall

li $v0, 5
