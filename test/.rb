require 'rps'

describe "Rock Paper Scissors" do
  let(:answers_snippet) { /valid answers/ }

  context "when a number is passed" do

    it "fails when invalid" do
      game = RockPaperScissors.new(0)
      game.result.should match(answers_snippet)
    end

    it "passes when valid and convert to string value" do
      game = RockPaperScissors.new(1)

      game.result.should_not match(answers_snippet)
      game.choice.should == "rock"
    end
  end

  context "when a string is passed" do

    it "fails when invalid" do
      game = RockPaperScissors.new('hello')
      game.result.should match(answers_snippet)
    end

    it "passes when valid" do
      game = RockPaperScissors.new('rock')
      game.result.should_not match(answers_snippet)
    end
  end

  it "should tie when rock vs rock" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('rock')

    game = RockPaperScissors.new('rock')
    game.result.should == "tie!"
  end

  it "rock should beat scissors" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('scissors')

    game = RockPaperScissors.new('rock')
    game.result.should == "won!"
  end

  it "paper should beat rock" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('rock')

    game = RockPaperScissors.new('paper')
    game.result.should == "won!"
  end

  it "scissors should beat paper" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('paper')

    game = RockPaperScissors.new('scissors')
    game.result.should == "won!"
  end

end