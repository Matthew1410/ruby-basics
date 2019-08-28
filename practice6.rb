class Dice
  def initial(number_of_sides)
    sides = number_of_sides
  end

  def roll(number_of_rolls)
    times_rolled = number_of_rolls
    rand(number_of_rolls) + 1
  end
end

print "Choose number of sides (6, 8, 10, 20): "
  number_sides = initial(Integer(gets.to_i))

print "Enter number of rolls: "
    number_rolls = roll(gets.to_i)

puts "You picked #{number_sides} sides!"
puts "You rolled #{number_rolls} times!"
