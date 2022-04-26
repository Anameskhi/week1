WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [6, 4, 2],
  [0, 4, 8]
].freeze

class TicTacToe
  def initialize
    @current_index = 0

    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ----------- '
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ----------- '
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(string)
    @choose = string.to_i - 1
  end

  def move(input_to_index, player)
    @board[input_to_index] = player
  end

  def position_taken?(input_to_index)
    if (@board[input_to_index] == ' ') || (@board[input_to_index] == '') || @board[input_to_index].nil?
      false
    else
      true
    end
  end

  def valid_move(input_to_index)
    !position_taken?(input_to_index) && input_to_index.between?(0, 8)
  end

  def turn_count
    count = 0
    @board.each do |i|
      count += 1 if %w[X O].include?(i)
    end
    count
  end

  def current_player
    turn_count.even? ? 'X' : 'O'
  end

  def turn
    if @current_index.zero?
      puts 'Player1'
    else
      puts 'Player2'
    end
    choice = gets.chomp!
    position = input_to_index(choice)
    if valid_move(position)
      move(position, current_player)
      display_board
    else
      turn
    end
  end

  def won?
    WIN_COMBINATIONS.any? do |combo|
      @board[combo[0]] == @board[combo[1]] &&
        @board[combo[1]] == @board[combo[2]] &&
        position_taken?(combo[0])
    end
  end

  def full?
    @board.all? { |token| %w[X O].include?(token) }
  end

  def draw?
    !won? && full?
  end

  def over?
    won? || draw?
  end

  def winner_is
    if @current_index.zero?
      'congretulation wiiner is player2'
    else
      'congretulation winner is player1'
    end
  end

  def play
    until over?
      turn
      @current_index = (@current_index + 1) % 2
    end
    if won?
      winner_is
    else
      "it's Draw"
    end
  end
end

p TicTacToe.new.play


