require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Winchester", hourly_rate: 55)
@store1.employees.create(first_name: "Dean", last_name: "Winchester", hourly_rate: 65)
@store1.employees.create(first_name: "Charlie", last_name: "Bradbury", hourly_rate: 70)

@store2.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 90)
@store2.employees.create(first_name: "Peter", last_name: "Parker", hourly_rate: 40)
@store2.employees.create(first_name: "Stephen", last_name: "Strange", hourly_rate: 80)
@store2.employees.create(first_name: "Richard", last_name: "Greyson", hourly_rate: 60)