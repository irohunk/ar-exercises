require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Adding Validations to the Employee Model
class Employee < ActiveRecord::Base
  belongs_to :store

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end


# Define the Store class
class Store < ActiveRecord::Base
  has_many :employees

  # Validations
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel

  private

  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Must carry at least one of men's or women's apparel")
    end
  end
end

# Ask the user for a store name
print "Enter the store name: "
store_name = gets.chomp

# Attempt to create a store with the inputted name
store = Store.new(name: store_name)

# Save the store and check for errors
if store.save
  puts "Store created successfully!"
else
  # Display the error messages
  puts "Failed to create store:"
  store.errors.full_messages.each do |message|
    puts message
  end
end
