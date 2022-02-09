require_relative "../tennis.rb" #this adds the rb to the test


describe "Score" do
    tennis_game = Tennis.new #creates new instance of Tennis class object 
    it "converts score 0 to tennis score 0" do
        expect(tennis_game.score(0)).to eq(0)
    end
    it "converts score 1 to tennis score 15" do
         expect(tennis_game.score(1)).to eq(15)
    end
    it "converts score 2 to tennis score 30" do
        expect(tennis_game.score(2)).to eq(30)
    end
    it "converts score 3 to tennis score 40" do
        expect(tennis_game.score(3)).to eq(40)
    end
end 

describe "player" do
    tennis_game = Tennis.new
    it "tests score is zero" do
        expect(tennis_game.player1).to eq(0)
    end
    it "if they get point score = 1" do
        expect(tennis_game.player1_wins_point(true)).to eq(1)
    end
    it "if they don't get point score = 0" do
        tennis_game = Tennis.new
        expect(tennis_game.player1_wins_point(false)).to eq(0)
    end
    it "stores points scored in player function" do
        p1_game = Tennis.new.player1_wins_point(true)
        expect(p1_game.player1).to eq(1)
    end

        

end