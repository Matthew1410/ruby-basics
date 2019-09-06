class Dice
  def initial(num_of_sides)
    @sides = num_of_sides
  end

  def roll(num_of_rolls)
    @rolls = num_of_rolls
  end

  def generate_dice_roll
    rand(@sides) + 1
  end

  def play(num_of_rolls)
    roll_array = []
    num_of_rolls.times do
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

print "Enter number of sides: "
num_of_sides = gets.to_i
print "Enter number of rolls: "
num_of_rolls = gets.to_i

output = Dice.new

puts "The number of sides is #{output.initial(num_of_sides)}"
puts "The number of rolls is #{output.roll(num_of_rolls)}"
print "You rolled #{output.play(num_of_rolls)} using ", output.roll(num_of_rolls), " ", output.initial(num_of_sides), "-sided dice"
