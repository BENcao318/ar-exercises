require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mary", last_name: "Avery", hourly_rate: 42)
@store1.employees.create(first_name: "Beth", last_name: "Good", hourly_rate: 42)

@store2.employees.create(first_name: "Ben", last_name: "Cao", hourly_rate: 62)
@store2.employees.create(first_name: "Marina", last_name: "Marcos", hourly_rate: 44)
@store2.employees.create(first_name: "Joseph", last_name: "Greens", hourly_rate: 42)