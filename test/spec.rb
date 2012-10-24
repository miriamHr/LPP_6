require 'rps'
describe "Rock Paper Scissors" do
   before :each do
    @partida = RockPaperScissors.new
  end

  context "Entra un numero" do

    it "entrada invalida" do
      partida = RockPaperScissors.new(0)
      partida.result.should match(answers_snippet)
    end

    it "correcta entrada pasando a string" do
      partida = RockPaperScissors.new(1)

      partida.result.should_not match(answers_snippet)
      partida.choice.should == "rock"
    end
  end

  context "cuando se le pasa string" do

    it "entrada invalida" do
      partida = RockPaperScissors.new('hello')
      partida.result.should match(answers_snippet)
    end

    it "valida entrada" do
      partida = RockPaperScissors.new('rock')
      partida.result.should_not match(answers_snippet)
    end
  end

  it "Empate" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('rock')
    game = RockPaperScissors.new('rock')
    game.result.should == "empate"
  end

  it "Piedra gana a tijeras" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('scissors')

    game = RockPaperScissors.new('rock')
    game.result.should == "ganas"
  end

  it "Papel debe ganar piedra" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('rock')

    game = RockPaperScissors.new('paper')
    game.result.should == "ganas"
  end

  it "tijeras deben ganar" do
    RockPaperScissors.any_instance.stub(:random_choice).and_return('paper')

    game = RockPaperScissors.new('scissors')
    game.result.should == "ganas"
  end

end