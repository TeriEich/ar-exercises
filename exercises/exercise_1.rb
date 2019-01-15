require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store = Store.create(name: 'Barnaby', annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
store = Store.create(name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: 'Gastown', annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)

puts Store.count