Vim�UnDo� �=�ZG�П���i���JZk�nHZ�����B�          
                           c�~    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c���    �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��}    �                   .asciz "HEllo World\n"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��     �      	             pushq   %rbp5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��    �      	          k   pushq   %rbp5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�c     �      	             pushq   %rbp5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             c�c     �      
             movq    %rsp, %rbp5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�e     �   
            !    movq msg@GOTPCREL(%rip), %rdi5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             c�e     �                   movq    $0, %rax5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             c�f     �                   callq   _printf5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             c�g     �                   movq $0, %rax5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             c�h   	 �                   popq %rbp5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             c��     �   
                 mov msg@GOTPCREL(%rip), %rdi5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             c��    �   	             5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             c�}    �   	                leaq msg, %rdi5�_�                   
   	    ����                                                                                                                                                                                                                                                                                                                                                             c��     �   	                leaq num(msg, %rdi5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             c��    �   	                leaq num(msg), %rdi5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             c�.     �   	                leaq num(sg), %rdi5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             c�.     �   	                leaq num(g), %rdi5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             c�.     �   	                leaq num(), %rdi5�_�                     
       ����                                                                                                                                                                                                                                                                                                                                                             c�/    �   	                leaq num(%rip), %rdi5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�h    �                    ret5��