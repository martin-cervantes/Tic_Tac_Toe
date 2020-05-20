#!/usr/bin/env ruby

# frozen_string_literal: true

#
# Tic Tac Toe Game
#
class Board
  def initialize
    @square = %w[0 1 2 3 4 5 6 7 8 9]
  end

  def print_board
    system 'clear'
    puts '+---------------------------+'
    puts '|   T I C   T A C   T O E   |'
    puts "+---------------------------+\n\n"
    puts "Player 1 (X)  -  Player 2 (O)\n\n"
    puts "Enter a number that corresponds to a point on the board\n\n"
    puts " #{@square[1]} | #{@square[2]} | #{@square[3]} "
    puts '-----------'
    puts " #{@square[4]} | #{@square[5]} | #{@square[6]} "
    puts '-----------'
    puts " #{@square[7]} | #{@square[8]} | #{@square[9]} "
  end

  def check_horizontal1
    if @square[1] == @square[2] && @square[2] == @square[3]
      true
    else
      false
    end
  end

  def check_horizontal2
    if @square[4] == @square[5] && @square[5] == @square[6]
      true
    else
      false
    end
  end

  def check_horizontal3
    if @square[7] == @square[8] && @square[8] == @square[9]
      true
    else
      false
    end
  end

  def check_vertical1
    if @square[1] == @square[4] && @square[4] == @square[7]
      true
    else
      false
    end
  end

  def check_vertical2
    if @square[2] == @square[5] && @square[5] == @square[8]
      true
    else
      false
    end
  end

  def check_vertical3
    if @square[3] == @square[6] && @square[6] == @square[9]
      true
    else
      false
    end
  end

  def check_diagonal1
    if @square[1] == @square[5] && @square[5] == @square[9]
      true
    else
      false
    end
  end

  def check_diagonal2
    if @square[3] == @square[5] && @square[5] == @square[7]
      true
    else
      false
    end
  end

  def check_draw(num_choice)
    num_choice == 9
  end

  def get_choice(choice, mark)
    if @square[choice] != 'X' && @square[choice] != 'O' && choice >= 1 && choice <= 9
      @square[choice] = mark
      true
    else
      false
    end
  end
end
