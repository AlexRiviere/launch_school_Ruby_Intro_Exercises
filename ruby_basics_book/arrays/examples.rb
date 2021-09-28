=begin

array = [1, 'Bob', 4.33, 'another string']


puts array.first
puts array.last

array.pop
puts array
array.push('another string')
puts array 


array << "fuck off"
puts array 



a = [1, 2, 3, 4]

a.map{|num| num**2}

a.collect{|num| num**2}

a.delete_at(0)

puts a


my_pets = ["cat", "dog", "bird", "cat", "snake"]

my_pets.delete("cat")

puts my_pets



b = [1, 2, 3, 2, 1, 2, 3, 4, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
b.uniq!
puts b



numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select{|number| number > 4}
puts numbers



def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3}.reverse
end 

a = [1, 2, 3, 4, 5, 6]
x =  mutate(a)
y = not_mutate(a)


puts "This here is mutate(a) #{x}" 
puts "This here is not_mutate(a) #{y}"


 teams = [["joe, kevin"], ["asshole", "shithead"], ["birdface, lingaard"]]
 puts teams[2]



a = [1, 2, 3]

puts "It's as easy as #{a}"




a = [1, 2, 3, 4, 5]

puts a.include?(3)

puts a.include?(6)


a = [1, 2, [3,[4, 3, 2, [4, 4, 4, 5, 7, 900]], 5], [6, 7]]

puts "#{a.flatten}"
puts "#{a}"



a = [1, 2, 3, 4, 5]

a.each_index {|i| puts "#{a[i]} is index #{i}"}



a = [1, 2, 3, 4, 5]

a.each_with_index {|val, idx| puts "the shit at index #{idx} is fucking #{val}"}




a = [5, 3, 8, 2, 4, 1]

puts "#{a.sort}"
puts "#{a}"



a = [1, 2, 3]
puts a.product([4, 5, 6, 7, 8, 9])
puts a.flatten



a = [1, 2, 3]
a.map{|x| x**2}
=end

a = [1, 2, 3]
a.map{|x| puts x**2}


