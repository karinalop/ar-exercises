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
@store1.employees.create(first_name: "Anitha", last_name: "Amaran", hourly_rate: 40)
@store1.employees.create(first_name: "Kanye", last_name: "West", hourly_rate: 30)


@store2.employees.create(first_name: "Sneaky", last_name: "Eve", hourly_rate: 60)
@store2.employees.create(first_name: "Kim", last_name: "Kamaran", hourly_rate: 40)
@store2.employees.create(first_name: "Thalia", last_name: "West", hourly_rate: 30)
