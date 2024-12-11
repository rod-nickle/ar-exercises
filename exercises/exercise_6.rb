require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "\nExercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andrew", last_name: "Lang", hourly_rate: 70)
@store1.employees.create(first_name: "Angelo", last_name: "Villanueva", hourly_rate: 80)
@store1.employees.create(first_name: "Mike", last_name: "Noseworthy", hourly_rate: 90)
@store1.employees.create(first_name: "Rod", last_name: "Nickle", hourly_rate: 100)

@store2.employees.create(first_name: "Zach", last_name: "Lancaster", hourly_rate: 110)
@store2.employees.create(first_name: "Dan", last_name: "Brunning", hourly_rate: 50)
@store2.employees.create(first_name: "Vinci", last_name: "Taylaran", hourly_rate: 90)
@store2.employees.create(first_name: "Luke", last_name: "Toenjes", hourly_rate: 80)
@store2.employees.create(first_name: "Ben", last_name: "Witzaney", hourly_rate: 60)
@store2.employees.create(first_name: "James", last_name: "Hannan", hourly_rate: 70)
@store2.employees.create(first_name: "Thomas", last_name: "Chan", hourly_rate: 100)


store_employees = Store.joins(:employees).select("stores.name as store_name, employees.first_name as employee_first_name").order(:store_name, :employee_first_name)
store_employees.each do |store_employee|
  puts "Store: #{store_employee[:store_name]} Employee: #{store_employee[:employee_first_name]}"
end