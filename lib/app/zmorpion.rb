
  class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.                                               
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    board [3][3] = {1,-1,-1},
                   {-1,1,1},
                   {-1,1,1}

                   ##if player use 1   1 == O //// if player use -1    -1 == X

        ##checking who is the winner
        for i in 0..2  #because each line goes until 3 so 0,1,2
            sum = 0     #variable to check if the sum of the colum or row is 3 or -3
            sum2 = 0    #variable to check if the sum of the colum or row is 3 or -3
            for j in 0..2
                sum = sum + board[i][j]
                sum2 = sum2 + board[j][i]
                if sum == -3 || sum2 == -3
                    puts "Player1 win!"
                elsif sum == 3 || sum3 == 3
                    puts "Player2 Win!"
                end
            end
        end
        ###We need a especific code to check the diagonal
            #D1 = diagonal1
            #D2 = diagonal2  hust representative
                      #i #j         #i #j         #i #j
            D1 = board[0][0] + board[1][1] + board[2][2]
            D2 = board[0][2] + board[1][1] + board[2][0]
            if D1 == -3 || D2 == -3
                puts"Player1 Win"
            elsif D1 == 3 || D2 == 3
                puts "Players2 Win"
            end
            ##  {board[0][0],1,-1}
            ##  {1,board[1][1],-1}
            ##  {1,-1,board[2][2]}   try to check the diference BOARD[line][colum]