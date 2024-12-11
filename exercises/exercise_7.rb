require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "\nExercise 7"
puts "----------"

# Your code goes here ...

employee = @store2.employees.create(first_name: "", last_name: "Brown", hourly_rate: 50)
puts "Employees must always have a first name present: #{employee.errors.messages}"

employee = @store2.employees.create(first_name: "Alice", last_name: "", hourly_rate: 50)
puts "Employees must always have a last name present: #{employee.errors.messages}"

employee = @store2.employees.create(first_name: "Alice", last_name: "Brown", hourly_rate: "abc")
puts "Employees have a hourly_rate that is a number (integer) between 40 and 200: #{employee.errors.messages}"

employee = @store2.employees.create(first_name: "Alice", last_name: "Brown", hourly_rate: 10)
puts "Employees have a hourly_rate that is a number (integer) between 40 and 200: #{employee.errors.messages}"

employee = @store2.employees.create(first_name: "Alice", last_name: "Brown", hourly_rate: 210)
puts "Employees have a hourly_rate that is a number (integer) between 40 and 200: #{employee.errors.messages}"

employee = Employee.create(first_name: "Alice", last_name: "Brown", hourly_rate: 100)
puts "Employees must always have a store that they belong to (can't have an employee that is not assigned a store): #{employee.errors.messages}"

employee = Employee.create(store_id: 42, first_name: "Alice", last_name: "Brown", hourly_rate: 100)
puts "Employees must always have a store that they belong to (can't have an employee that is not assigned a store): #{employee.errors.messages}"


store = Store.create(name: "CY", annual_revenue: 123456, mens_apparel: false, womens_apparel: true)
puts "Stores must always have a name that is a minimum of 3 characters: #{store.errors.messages}"

store = Store.create(name: "Calgary", annual_revenue: "abc", mens_apparel: false, womens_apparel: true)
puts "Stores have an annual_revenue that is a number (integer) that must be 0 or more: #{store.errors.messages}"

store = Store.create(name: "Calgary", annual_revenue: -1, mens_apparel: false, womens_apparel: true)
puts "Stores have an annual_revenue that is a number (integer) that must be 0 or more: #{store.errors.messages}"


