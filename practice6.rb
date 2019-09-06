class Dice
  def initial(num_of_sides)
    @sides = num_of_sides
  end

  def roll(num_of_rolls)
    @rolls = num_of_rolls
  end

  def play
    @sides * @rolls
  end
end

print "Enter number of sides: "
num_of_sides = gets.to_i
print "Enter number of rolls: "
num_of_rolls = gets.to_i

output = Dice.new

puts "The number of sides is #{output.initial(num_of_sides)}"
puts "The number of rolls is #{output.roll(num_of_rolls)}"
print "You rolled #{output.play} using ", output.roll(num_of_rolls), " ", output.initial(num_of_sides), "-sided dice"
