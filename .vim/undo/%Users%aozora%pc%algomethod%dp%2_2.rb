Vim�UnDo� i����+n��=��^Xɏ&Ǒ�i`�|�l      puts table[3][3]                             d1    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d02     �                 �          
    5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             d0<     �               (table = Array.new(4) { Array.new(4, 0) }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d0?    �               (table = Array.new(4) { Array.new(N, 0) }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d0L     �                Ktable[0][0], table[0][1], table[0][2], table[0][3] = gets.split.map(&:to_i)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d0M    �                �         
    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d0�    �                �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d0�     �               
p table[0]5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             d0�     �               	p table0]5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             d0�    �               p table]5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             d0�     �                p table5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             d0�     �               1.upto 3 do |i|5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d0�     �               1.upto N do |i|5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d0�     �                 4.times do |j|5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             d0�    �      	         0    table[i][j] += table[i-1][j+1] unless j == 35�_�                       1    ����                                                                                                                                                                                                                                                                                                                                                             d0�     �      
             �      
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d1     �                 puts table[3][3]5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d1     �                 puts table[N][3]5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d1     �                 puts table[N-1][3]5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d1    �                 puts table[N-1][]5��