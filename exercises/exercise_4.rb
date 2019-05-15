require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)

# Your code goes here ...
surrey = Store.new(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
surrey.save

whistler = Store.new(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
whistler.save

yaletown = Store.new(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
yaletown.save

men_stores = Store.where(mens_apparel: true).all.each { |s| puts s.name ,s.annual_revenue }

#big_womens_stores = Store.where(womens_apparel: true).having("annual_revenue < ?",1000000).all.each { |s| puts s.name ,s.annual_revenue }

