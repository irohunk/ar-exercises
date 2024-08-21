require_relative '../setup'


puts "Exercise 1"
puts "----------"
# Your code goes here ...

# Create Burnaby store
Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

# Create Richmond store
Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

# Create Gastown store
Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

puts "Number of stores: #{Store.count}"