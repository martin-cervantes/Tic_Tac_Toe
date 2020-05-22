# frozen_string_literal: true

class Board
  def initialize
    @square = [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]]
  end

  def print_board
    system 'clear'
    "+---------------------------+\n"\
    "|   T I C   T A C   T O E   |\n"\
    "+---------------------------+\n\n"\
    "Player 1 (X)  -  Player 2 (O)\n\n"\
    "Enter the numbers that corresponds to co-ordinate point on the board\n\n"\
    "   [1] [2] [3]\n"\
    "[1] #{@square[1][1]} | #{@square[1][2]} | #{@square[1][3]}\n"\
    "   -----------\n"\
    "[2] #{@square[2][1]} | #{@square[2][2]} | #{@square[2][3]}\n"\
    "   -----------\n"\
    "[3] #{@square[3][1]} | #{@square[3][2]} | #{@square[3][3]}\n"
  end

  def check_horizontal
    res = false
    n = 1
    while n <= 3
      if @square[n][1] == @square[n][2] && @square[n][2] == @square[n][3]
        res = true
        break
      end

      n += 1
    end

    res
  end

  def check_vertical
    res = false
    n = 1
    while n <= 3
      if @square[1][n] == @square[2][n] && @square[2][n] == @square[3][n]
        res = true
        break
      end

      n += 1
    end

    res
  end

  def check_diagonal1
    if @square[1][1] == @square[2][2] && @square[2][2] == @square[3][3]
      true
    else
      false
    end
  end

  def check_diagonal2
    if @square[1][3] == @square[2][2] && @square[2][2] == @square[3][1]
      true
    else
      false
    end
  end

  def check_draw(num_choice)
    num_choice == 9
  end

  def valid_choice(choice)
    if choice[0].to_i >= 1 && choice[0].to_i <= 3 && choice[1].to_i >= 1 && choice[1].to_i <= 3
      true
    else
      false
    end
  end

  def set_choice(choice, mark)
    if @square[choice[0].to_i][choice[1].to_i] != 'X' && @square[choice[0].to_i][choice[1].to_i] != 'O'
      @square[choice[0].to_i][choice[1].to_i] = mark
      true
    else
      false
    end
  end
end
