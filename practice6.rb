class Dice
  attr_accessor :number_of_sides

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def roll
    rand(1..@number_of_sides)
  end
end
