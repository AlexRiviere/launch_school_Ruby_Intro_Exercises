name = gets

name = gets.chomp
name + "is super great"

a = 5

3.times do |n|
  a = 3
end

puts a
#printed 3 because a is available to the inner scope created by 3.times do ... end
#which alllowed the scope to re-assign the value of a



# scope.rb

a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?


#error This is because the variable b is not available outside 
#of the method invocation with a block where it is initialized.
#When we call puts b it is not available within that outer scope.





arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?

# EXERCISES


