class DiceRoller

  def initialize(sides = 6)
    @sides = sides
  end

  def sides
    @sides
  end

  def roll(num_of_dice)
    rolls = []
    num_of_dice.times do
      rolls << rand(1..@sides)
    end
    rolls
  end

end
