require 'dice_roller'

describe DiceRoller do
  it 'initialize a dice with default six sides' do
    dice = DiceRoller.new
    actual = dice.sides
    expected = 6
    expect(actual).to eq(expected)
  end
end
