require_relative "../setup"
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

e = @store1.employees.create(first_name: "Alon", last_name: "Adi", hourly_rate: 84)

puts e.password