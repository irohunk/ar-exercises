require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"
# Your code goes here ...


# load the stores
@store1 = Store.find(1)
@store2 = Store.find(2)

# update 1st stores name
@store1.name = "NewBurnaby"

puts @store1.name

