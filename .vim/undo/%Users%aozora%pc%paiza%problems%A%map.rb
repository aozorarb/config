Vim�UnDo� G�w���5ZZ6l�j[����*:��q�M�F�      ~    ans << [i, j] if arr[i-1][j] == '#' && arr[i-1][j] == arr[i+1][j] && arr[i-1] == arr[i][j-1] && arr[i-1][j] == arr[i][j+1]      *      9       9   9   9    d#1"   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             d#)     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#)     �                  chttps://paiza.jp/works/mondai/a_rank_level_up_problems/a_rank_snake_map_boss/edit?language_uid=ruby5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#)     �                  d#https://paiza.jp/works/mondai/a_rank_level_up_problems/a_rank_snake_map_boss/edit?language_uid=ruby5�_�                       M    ����                                                                                                                                                                                                                                                                                                                                                             d#)     �                 # �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#+�     �                �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#,     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                ans_x, ans_y = [], []5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �         	       �             5�_�      
           	   	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                       5�_�   	              
   	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                       ans << [i, j] if ans[i_5�_�   
                 	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                       ans << [i, j] if ans[i5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                       ans << [i, j] if ans[i+5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                 .      ans << [i, j] if ans[i+1][j] == '#' && a5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                 -      ans << [i, j] if as[i+1][j] == '#' && a5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                 ,      ans << [i, j] if a[i+1][j] == '#' && a5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                 .      ans << [i, j] if arr[i+1][j] == '#' && a5�_�                    	   .    ����                                                                                                                                                                                                                                                                                                                                                             d#,�     �                 .      ans << [i, j] if arr[i+1][j] == '#' && a5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-$     �      	   
          if i == 05�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             d#--     �   	              
    elsif 5�_�                    	   5    ����                                                                                                                                                                                                                                                                                                                                                             d#-k     �      
         =      ans << [i, j] if arr[i+1][j] == '#' && arr[i][j] == '#'5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             d#-q     �   
              2      ans << [i, j] if arr[i-1][j] == '#' && arr[i5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                    if i == 0 && j == 05�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                ?      ans << [i, j] if arr[i+1][j] == '#' && arr[i][j+1] == '#'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                    elsif i == H-1 && j == W-15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                ?      ans << [i, j] if arr[i-1][j] == '#' && arr[i][j-1] == '#'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                    elsif i == 0 && 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                     �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �      	   	          cond = false5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#-�     �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             d#.K     �                 .    cond = false unless arr[i+1][j] == '#' && 5�_�                     	       ����                                                                                                                                                                                                                                                                                                                                                             d#.O     �                 *    cond = false if arr[i+1][j] == '#' && 5�_�      !               	   .    ����                                                                                                                                                                                                                                                                                                                                                             d#.S     �                 .    cond = false unless arr[i+1][j] == '#' && 5�_�       "           !   	       ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �      	          *    cond = false unless arr[i+1][j] == '#'5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �                  W.times do |j|5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �                    cond = true5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �                H.times do |i|5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �               !arr = Array.new(H) { gets.chomp }5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �               #arr = Array.new(H+2) { gets.chomp }5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �               arr = Array.new(H+2) { .chomp }5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             d#.�     �               arr = Array.new(H+2) { }5�_�   (   *           )      %    ����                                                                                                                                                                                                                                                                                                                                                             d#.�    �                �             5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             d#/      �                  arr[i][1] = gets.chomp5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             d#/&     �      	           �             5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             d#/I     �         	        W.times do |i|5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             d#/J     �         
          �      
   	    5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                             d#/N    �   
              5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                             d#/Q     �                  �               5�_�   /   1           0      B    ����                                                                                                                                                                                                                                                                                                                                                             d#/�    �                 p    ans << [i, j] if arr[i-1][j] == '#' && arr[i-1][j] == arr[i+1] && arr[i-1] == arr[i][j-1] && arr[i-1][j] == 5�_�   0   2           1      s    ����                                                                                                                                                                                                                                                                                                                                                             d#/�    �                 s    ans << [i, j] if arr[i-1][j] == '#' && arr[i-1][j] == arr[i+1][j] && arr[i-1] == arr[i][j-1] && arr[i-1][j] == 5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             d#0*     �               �               5�_�   2   4           3      $    ����                                                                                                                                                                                                                                                                                                                                                             d#0|    �               'arr = Array.new(H+2) { Array.new(W+2) }5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                             d#0�    �                �             5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                             d#0�    �                pp ans5�_�   5   7           6      *    ����                                                                                                                                                                                                                                                                                                                                                             d#0�     �               ~    ans << [i, j] if arr[i-1][j] == '#' && arr[i-1][j] == arr[i+1][j] && arr[i-1] == arr[i][j-1] && arr[i-1][j] == arr[i][j+1]5�_�   6   8           7      *    ����                                                                                                                                                                                                                                                                                                                                                             d#0�    �               *    ans << [i, j] if arr[i-1][j] == '#' &&5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                             d#1     �               i    ans << [i, j] if arr[i-1][j] == '#' && arr[i+1][j] == '#' && arr[i][j-1] == '#' && arr[i][j+1] == '#'5�_�   8               9          ����                                                                                                                                                                                                                                                                                                                                                             d#1!   	 �               k    ans << [i-1, j] if arr[i-1][j] == '#' && arr[i+1][j] == '#' && arr[i][j-1] == '#' && arr[i][j+1] == '#'5��