class RepdigitNum
  def initialize(number)
    @number = number
  end
  
  def call
    validate_num
    repdigit_num
  rescue ArgumentError => e
    warn e
  end

  def length_of_uniq_nums
    @number.chars.uniq.length
  end

  def repdigit_num
    if length_of_uniq_nums == 1
      "Your number -> #{@number} <- is Repdigit number "
    else
      "Your number -> #{@number} <- isn't Repdigit number "
    end
  end

  def number_is_negative_or_string
    @number.negative? || !@number.match(/\A[+-]?\d+?(\.\d+)?\Z/)
  end

  def validate_num
    raise ArgumentError, 'Input is Invalid,Try again' if number_is_negative_or_string
  end

end

 

puts RepdigitNum.new(12345).call