require_relative 'game'

describe Game do
let(:game) { Game.new("h") }

  it "guess the letter" do
    game.guess = "h"
    expect(game.guess_letter).to eq ("correct guess")
  end 

  it "guess the word" do
    game.guess = "h"
    expect(game.guess_word_win).to eq ("You won the game!")
  end 

  it "store the guesses" do
    game.guess = "h"
    expect(game.guess_list).to eq (["h"])
  end 

  it "if the user guesses all the letters then they win" do
    game.guess = "h"
    game.guess_letter
    expect(game.guess_word_win).to eq("You won the game!")
  end 

  it "guess count goes down by 1" do
    expect(game.count).to eq(0)
  end 

  it "print the remaining letters" do
    expect(game.word_str).to eq("_")
  end 

end 