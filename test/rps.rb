
class RockPaperScissors
  attr_reader :result, :choice

  def initialize(choice)

    @choice = choice

    if is_valid_choice?
      @result = play
    else
      @result = instructions
    end

  end

private

  def is_valid_choice?

    if @choice.is_a?(Integer) && (@choice > 0 && @choice < 4)
      @choice = number_to_choice(@choice)
      return true
    elsif @choice.is_a?(String) && ['rock', 'paper', 'scissors'].include?(@choice.downcase)
      @choice = @choice.downcase
      return true
    end

    false
  end

  def play
    @computer_choice = random_choice

    if @choice == @computer_choice
      return "tie!"
    elsif (@choice == "rock" && @computer_choice == "scissors") ||
          (@choice == "paper" && @computer_choice == "rock") ||
          (@choice == "scissors" && @computer_choice == "paper")
      return "won!"
    else
      return "lost!"
    end
  end

  def random_choice
    number_to_choice(Random.new.rand(1...4))
  end

  def instructions
    "please use one of the valid answers below"
  end

  def number_to_choice(number)
    case number
    when 1
      number = "rock"
    when 2
      number = "paper"
    when 3
      number = "scissors"
    end

    return number
  end

end	

