require_relative 'alcohol'
require_relative 'person'
require_relative 'bartender'

person = Person.new "Patrick O'Reily", 75, 175
alcohol = Alcohol.new "Beer", 6.5, "Stone"
bartender = Bartender.new "Robert Ross", 1

puts "Tolerance: #{person.tolerance}"
puts "BMI: #{person.bmi}"
puts "BAC: #{person.bac}"

1.upto(10) { person.drink(alcohol) }
puts "BAC: #{person.bac}"

bartender.throw_out(person)