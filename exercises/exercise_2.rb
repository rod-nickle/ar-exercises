require_relative '../setup'
require_relative './exercise_1'

puts "\nExercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.name = "Downtown Burnaby"
@store1.save

p @store1
p @store2

stores = Store.all.order(:id)
puts "The number of stores are: #{stores.count}"
stores.each do |store|
  puts "Store \##{store[:id]}: #{store[:name]}"
end
