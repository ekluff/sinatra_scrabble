require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  it("returns a scrabble score for a letter") do
    expect("z".scrabble_score()).to(eq(10))
  end

  it("adds the scores of all letters in a word") do
    expect("word".scrabble_score()).to(eq(8))
  end

  it("accounts for capital letters in user inputs") do
    expect("Word".scrabble_score()).to(eq(8))
  end
end
