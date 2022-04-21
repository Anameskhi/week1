class TicTacToe
  attr_accessor :board

  def initialize(input)
    @input = input
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

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

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts " ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts " ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index
    @input.to_i - 1
  end
def call 
  player_1
  player_2
end
  def player_1
    if @input == 0
      @board[@input] = "X"
    end
    display_board
  end

  def player_2
    if @input == 0
      @board[@input] = "O"
    end
    display_board
  end
end
p TicTacToe.new(0).call
  