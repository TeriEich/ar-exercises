require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@entire_company_revenue = Store.all.sum("annual_revenue")
puts "Annual revenue of entire company: #{@entire_company_revenue}"

@avg_annual_revenue = Store.all.average("annual_revenue")
puts "Avg annual revenue: #{@avg_annual_revenue}"

@num_gen_over_1M = Store.where("annual_revenue > 1000000").count
puts "Num of stores generating > $1mil: #{@num_gen_over_1M}"