require_relative '../setup'

puts "\nExercise 1"
puts "----------"

# Your code goes below here ...

store = Store.create(
name: "Burnaby",
annual_revenue: 300000,
mens_apparel: true,
womens_apparel: true
)

store = Store.create(
name: "Richmond",
annual_revenue: 1260000,
mens_apparel: false,
womens_apparel: true
)

store = Store.create(
name: "Gastown",
annual_revenue: 190000,
mens_apparel: true,
womens_apparel: false
)

stores = Store.all.order(:id)
puts "The number of stores are: #{stores.count}"
stores.each do |store|
  puts "Store \##{store[:id]}: #{store[:name]}"
end
