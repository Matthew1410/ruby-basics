class Dice
  attr_accessor :number_of_sides

  def initialize(number_of_sides)
    raise ArgumentError unless number_of_sides > 2 && number_of_sides.is_a?(Integer)

    @number_of_sides = number_of_sides
  end

  def roll(number_of_rolls=1)
    raise ArgumentError if number_of_rolls.negative?

    total_roll = 0
    number_of_rolls.times do
      total_roll += rand(1..@number_of_sides)
    end
    total_roll
  end
end
