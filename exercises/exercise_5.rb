require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "\nExercise 5"
puts "----------"

# Your code goes here ...

total_annual_revenue = Store.sum(:annual_revenue)
puts "Total Annual Revenue: #{total_annual_revenue}"

avg_annual_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue: #{avg_annual_revenue}"

num_stores_2 = Store.where("annual_revenue >= 1000000").count
puts "Number of Stores with more than $1M in Annual Revenue: #{num_stores_2}"



