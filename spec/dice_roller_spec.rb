require 'dice_roller'

describe DiceRoller do
  it 'initialize a dice with default six sides' do
    dice = DiceRoller.new
    actual = dice.sides
    expected = 6
    expect(actual).to eq(expected)
  end

  it 'initializes a dice with 12 sides' do
    dice = DiceRoller.new(12)
    actual = dice.sides
    expected = 12
    expect(actual).to eq(expected)
  end

  it 'can roll six dice' do
    dice = DiceRoller.new
    roll = dice.roll(6)
    actual = roll.size
    expected = 6
    expect(actual).to eq(expected)
  end

  it 'can roll four dice' do
    dice = DiceRoller.new
    roll = dice.roll(4)
    actual = roll.size
    expected = 4
    expect(actual).to eq(expected)
  end

  it 'generates random numbers from 1 to 6' do
    dice = DiceRoller.new
    roll = dice.roll(100)
    actual = roll.minmax
    expected = [1,6]
    expect(actual).to eq(expected)
  end

  it 'generates random numbers from 1 to 9' do
    dice = DiceRoller.new(9)
    roll = dice.roll(100)
    actual = roll.minmax
    expected = [1,9]
    expect(actual).to eq(expected)
  end
end
