class Dice
  # attr_reader :number_of_sides
  # attr_writer :number_of_sides

  attr_accessor :number_of_sides

  @color = ""

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def roll
  end
end
