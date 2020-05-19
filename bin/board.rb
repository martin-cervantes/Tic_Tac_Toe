class board

def print_board 
 system "clear"

  puts "+---------------------------+"

  puts "|   T I C   T A C   T O E   |"

  puts "+---------------------------+\n\n"

  puts "Player 1 (X)  -  Player 2 (O)\n\n"

  puts "Enter a number that corresponds to a point on the board\n\n"

  puts " #{@square[0]} | #{@square[1]} | #{@square[2]} "

  puts "-----------"

  puts " #{@square[3]} | #{@square[4]} | #{@square[5]} "

  puts "-----------"

  puts " #{@square[6]} | #{@square[7]} | #{@square[8]} "

 end

def checkwin 

  if @square[0] == @square[1] && @square[1] == @square[2]

    return 1

  elsif @square[3] == @square[4] && @square[4] == @square[5]

    return 1

  elsif @square[6] == @square[7] && @square[7] == @square[8]

    return 1

  elsif @square[0] == @square[3] && @square[3] == @square[6]

    return 1

  elsif @square[1] == @square[4] && @square[4] == @square[7]

    return 1

  elsif @square[2] == @square[5] && @square[5] == @square[8]

    return 1

  elsif @square[0] == @square[4] && @square[4] == @square[8]

    return 1

  elsif @square[2] == @square[4] && @square[4] == @square[6]

    return 1

  elsif @square[0] != '1' && @square[1] != '2' && @square[2] != '3' &&

        @square[3] != '4' && @square[4] != '5' && @square[5] != '6' &&

        @square[6] != '7' && @square[7] != '8' && @square[8] != '9'

   return 0

  else

   return  - 1

  end

 end

   def get_choice (choice, mark)
     if choice == 1 && @square[0] == '1'
       @square[0] = mark
       return true
     elsif choice == 2 && @square[1] == '2'
       @square[1] = mark
       return true
     elsif choice == 3 && @square[2] == '3'
       @square[2] = mark
       return true
     elsif choice == 4 && @square[3] == '4'
       @square[3] = mark
       return true
     elsif choice == 5 && @square[4] == '5'
       @square[4] = mark
       return true
     elsif choice == 6 && @square[5] == '6'
       $square[5] = mark
       return true
     elsif choice == 7 && @square[6] == '7'
       @square[6] = mark
       return true
     elsif choice == 8 && @square[7] == '8'
       @square[7] = mark
       return true
     elsif choice == 9 && @square[8] == '9'
       @square[8] = mark
       return true
     else    
       puts "Invalid move. Press Enter to continue..."
       return false
     end
   end

end


