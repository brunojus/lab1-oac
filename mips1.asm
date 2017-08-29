.data
X: 	.word 33

.text 		
	la $t0, X
        lw $t1,0($t0)
        li  $v0, 1           # service 1 is print integer
        add $a0, $t1, $zero  # load desired value into argument register $a0, using pseudo-op
        syscall
        mul $t1, $t1,2
        sw $t1, 0($t0)
        


        
        
        