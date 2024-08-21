require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# total revenue of company
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Revenue: #{average_revenue}"

stores_over_1_million = Store.where("annual_revenue >= ?", 1000000).count

puts "Number of stores generating $1M or more in annual sales: #{stores_over_1_million}"