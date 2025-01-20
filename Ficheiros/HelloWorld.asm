	.data
frase : .asciiz "ola mundo"

	.text
main:
addi $v0, $0, 4
la $a0, frase
syscall	$a0, l
	 	