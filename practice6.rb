class Dice
  def initialize(sides)
    @sides = sides
  end

  def generate_dice_roll
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << generate_dice_roll
    end
    total = 1
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end

SIX_SIDED_DICE = Dice.new(6)
EIGHT_SIDED_DICE = Dice.new(8)
TEN_SIDED_DICE = Dice.new(10)
TWENTY_SIDED_DICE = Dice.new(20)

puts "We're rolling a six sided die!"
puts SIX_SIDED_DICE.roll

puts "Now we're rolling two 20 sided die twice!"
puts TWENTY_SIDED_DICE.roll(2)