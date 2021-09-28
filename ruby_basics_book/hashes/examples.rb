=begin

 = {name: 'bob'}

person = {height: '6 ft', weight: '160lbs' }
person[:hair] = 'brown'

person[:age] = 62

puts person

person.delete(:age)

person[:weight]
person.merge!(new_hash)

#iterating over hashes

person = {name: 'bob', height: '6 ft', weight: '160lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end 
=end


#hashes as optional parameters

def greeting(name, options = {})
  if options.empty? 
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
  end 
  
end 

greeting("bob")
greeting("bob", {age: 62, city: "New York City"})
