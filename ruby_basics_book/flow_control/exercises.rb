# #2
=begin
def capitalize(string)
  if string.length > 10
    string.upcase!
  else 
    string
  end 
end 

puts capitalize("hi")
puts capitalize("hi bitch mofucka shiiiiiiit")



# 3
puts "Gimme a number between 0 and 100"
number = gets.chomp.to_i


def between(number)
  if 0 <= number && number <= 50
    puts "This number is between 0 and 50"
  elsif number > 50
    puts "that number is higher than 50"
  else
    puts "invalid number"
  end
end

between(number)
=end