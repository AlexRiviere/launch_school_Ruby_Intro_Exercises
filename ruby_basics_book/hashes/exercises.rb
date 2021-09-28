=begin
#1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
immed_fam = family.select {|k, v| (k == :sisters) || (k == :brothers)}
arr = immed_fam.values.flatten
puts arr



#2

cat = {name: "whiskers"}
weight = {weight: 10}

puts cat.merge(weight)
puts cat
puts weight

puts cat.merge!(weight)
puts cat
puts weight



#3

opposites = {positive: "negative", up: "down", right: "left"}

opposites.keys.each {|k| puts k}
opposites.values.each {|v| puts v}
opposites.each {|k, v| puts "#{k}: #{v}"}


#4


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]



#5

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.key?(:occupation)

# value?

if opposites.value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

=end

#6

