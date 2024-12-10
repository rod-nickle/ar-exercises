require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\nExercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find(3)
@store3.destroy

stores = Store.all.order(:id)
puts "The number of stores are: #{stores.count}"
stores.each do |store|
  puts "Store \##{store[:id]}: #{store[:name]}"
end


