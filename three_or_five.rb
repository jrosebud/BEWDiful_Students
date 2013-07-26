#sum = 0
#
#(1...1000).each do |number|
#  if number % 3 == 0 || number % 5 == 0
#    sum += number
#  end
#end
#
#puts sum

sum = (1...1000).to_a.inject(0) do |previous_result, number|
  if number % 3 == 0 || number % 5 == 0
    previous_result + number
  else
    previous_result 
  end
end

puts sum