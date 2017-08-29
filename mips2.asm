.data
	vetor: .word 1 2 3 4 5 6 7 8 9
	tam: .word 9
	
.text   jal pr_vet # chamada da função pr_vet


	addi 	$t0,$zero,0
	
pr_vet: la  	$t6, vetor #t6 = endereço do array
	beq 	$t0, 36, exit #compara o valor do contador 
	lw  	$t6, vetor($t0) #lê o conteúdo do array em uma dada posição de memória
	addi 	$t0,$t0,4 #incrementa o contador do laço
		
	#print current number
	
	li 	$v0, 1
	move 	$a0, $t6
	syscall
	
	addi $a0, $0, 0xA #ascii code for LF, if you have any trouble try 0xD for CR.
        addi $v0, $0, 0xB #syscall 11 prints the lower 8 bits of $a0 as an ascii character.
        syscall
        
	j pr_vet

exit: 	li $v0, 10 # colocando 10 em v0 e chamando
	syscall # syscall encerra o programa
	  
	

        