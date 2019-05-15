require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


class Store < ActiveRecord::Base
  has_many :Employee
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
end

class Employee < ActiveRecord::Base
  belongs_to :Store
  validates_associated :Store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end

burnaby = Store.new(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
burnaby.save

richmond = Store.new(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
richmond.save

gastown = Store.new(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
gastown.save

puts Store.count