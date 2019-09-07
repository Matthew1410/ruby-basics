class Dice
  @number_of_sides = 0
  @color = ""

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def number_of_sides
    @number_of_sides
  end

  def number_of_sides=(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def roll
  end
end
