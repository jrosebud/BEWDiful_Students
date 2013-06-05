99.downto(1) do |number|
	puts "#{number} bottles of beer on the wall"
	puts "#{number} bottles of beer!"
	puts "You take one down and pass it around,"
	
	if number != 1	
		puts "#{number-1} bottles of beer on the wall!"
		puts ""
	else
		puts "No more bottles of beer on the wall. :("
	end
end