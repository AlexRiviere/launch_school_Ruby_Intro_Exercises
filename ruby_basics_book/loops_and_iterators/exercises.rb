
=begin
x = [1, 2, 3, 4, 5]

 y = x.collect do |a|
  a + 1
end 

puts y 







def countdown(num)
  puts num
  if num > 0 
    countdown(num - 1)
  end
end 

countdown(10)

=end

 puts "What do you want I should do?"
 input = gets.chomp


while input != "STOP" do 
  puts "What do you want I should do?"
 input = gets.chomp
end

#solution 

x = ""
while x != "STOP" do 
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end 


