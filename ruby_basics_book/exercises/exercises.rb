
=begin
#1

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each {|n| puts n}




#2
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array_first = a.select { |n| n > 5 }

#puts "This is the array with only above 5 #{new_array_first}"



#3
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = new_array_first.select { |n| n % 2 == 1 }
#puts "This is the new array with only odd numbers: #{new_array}"


#4

new_array.push(11)
new_array.unshift(3)

#puts "This is the new array with only odd numbers plus 11 and 3: #{new_array}"

#5

new_array.pop

new_array.push(3)

puts "#{new_array}"

new_array.uniq!

puts "#{new_array}"




# 8

hash = {bro: "Zach"}
o_hash = {:bro => "Zach"}



h = {a:1, b:2, c:3, d:4}

h[:b]

h[:e] = 5

puts "#{h}"

h.delete_if {|k,v| v < 3.5}
puts "#{h}"



#11

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }


 joe =  {email: contact_data[0][0],
           address: contact_data[0][1],
           phone: contact_data[0][2]}
           
  sally = {email: contact_data[1][0],
           address: contact_data[1][1],
           phone: contact_data[1][2]}

contacts["Joe Smith"] = joe
contacts["Sally Johnson"] = sally





puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]



#13

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|word| word.start_with? "s"}
puts arr

arr.delete_if{|word| (word.start_with? "s") || (word.start_with? "w")}
puts "this is the final array: #{arr}"

# can use a comma instead of parenthesesarr.delete_if { |str| str.start_with?("s", "w") }



#14

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


new_array = a.map{|words| words.split(" ")}.flatten
puts "#{new_array}"



#16

#contacts["Joe Smith"][:email] = contact_data[0][0]


contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
data_temp = [:email, :address, :phone]
together = Hash[data_temp.zip(contact_data)]
puts "#{together}"

contacts["Joe Smith"] = together
puts "#{contacts}"


# withhints
 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end 
end 

=end



# with multiple


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end 
end 

puts "#{contacts}"