 
    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [6, 4, 2],
      [0, 4, 8]
    ]
    
class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts " ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts " ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(string)
    @choose = string.to_i - 1
  end

  def move(input_to_index, player)
      @board[input_to_index] = player
  end

  def position_taken?(input_to_index)
      if @board[input_to_index]  == 'X' || @board[input_to_index] == 'O'
          true
      else
          false
      end
  end
  def valid_move(input_to_index)
      !position_taken?(input_to_index) && @board[input_to_index]
  end

  def turn_count
   count = 0
      @board.each do |i|
          count += 1 if i == "X" || i == "O"
      end
   count
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn 
    puts "tell us your choice"
    choice = gets.chomp!
    position = input_to_index(choice)
    if valid_move(position)
      move(position,current_player)
      display_board
    else
      turn
    end
   
  end



end

p TicTacToe.new.turn