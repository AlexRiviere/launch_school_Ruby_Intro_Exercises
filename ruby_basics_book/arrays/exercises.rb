
#1

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "Yes, bitch, #{number} is in the array"
end 

#2

2.6.3 :001 > arr= ["b", "a"]
 => ["b", "a"] 
2.6.3 :002 > arr = arr.product(Array(1..3))
 => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 
2.6.3 :003 > arr.first.last
 => 1 
2.6.3 :004 > arr.first
 => ["b", 1] 
2.6.3 :005 > arr.first.delete(arr.first.last)
 => 1 
2.6.3 :006 > arr
 => [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 
2.6.3 :007 > exit
ec2-user:~/launchSchoolGit/arrays (master) $ irb
2.6.3 :001 > arr = ["b", "a"]
 => ["b", "a"] 
2.6.3 :002 > arr = arr.product([Array(1..3)])
 => [["b", [1, 2, 3]], ["a", [1, 2, 3]]] 
2.6.3 :003 > arr.first.delete(arr.first.last)
 => [1, 2, 3] 
2.6.3 :004 > arr
 => [["b"], ["a", [1, 2, 3]]] 
2.6.3 :005 > 

#3

arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr[1][0]
or arr.last.first

#4

arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5)

#6

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

#7 

arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.each_with_index {|val, idx| puts "#{idx}: #{val}"}

#8
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr2 = arr.map {|num| num + 1}

puts "#{arr}"
puts "#{arr2}"
