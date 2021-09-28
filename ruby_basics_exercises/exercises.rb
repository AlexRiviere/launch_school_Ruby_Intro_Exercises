#Loops 1

=begin

#control the loop

#Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  if iterations == 6
    break
  end 
end



#more succinctly

iterations = 1
loop do 
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1
  
end 



#Loop on Command
#Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end



#Say Hello
#Modify the code below so "Hello!" is printed 5 times.

say_hello = 1

while say_hello < 6
  puts 'Hello!'
  say_hello += 1
end



#Print While
#Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = []
counter = 1

while counter < 6
  
  numbers.push(rand(101))
  counter += 1
  
end

puts numbers 

#more succint

while numbers.size < 5
  numbers << rand(100)
end
puts numbers 



#count up

count = 1

until count == 11
  puts count
  count += 1
end




#print until


numbers = [7, 9, 13, 25, 18]
i = 0
until i > numbers.size
puts numbers[i]
i += 1
end

puts numbers.length
puts numbers.size



#that's odd

for i in 1..100
  puts i if i % 2 == 1
end

#more succint

for i in 1..100
  puts i if i.odd?
end 



#greet your friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends
  puts "Hello, #{i}!"
end 

#better would be for friend in friends this si the convention



#LOOPS 2

#even or odd

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else 
    puts "#{count} is even!"
  end 
  count += 1
  break if count == 6
end



#catch the number

loop do
  number = rand(100)
  puts number
  break if number.between?(0,10) 
  
end


#conditional loop

process_the_loop = [true, false].sample

  if process_the_loop
    loop do
      puts "The loop was processed"
      break
    end
    
  else 
    puts "The loop wasn't processed"
  end 



#get the sum


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "that's correct"
    break
  else
    puts "Wrong answer, try again"
end
end




#insert numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers



#empy the array

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.size == 0
    
end

#more succinctly is using names.empty? to check


#stop counting

5.times do |index|
  puts index
  break if index == 2
end



#only even

  number = 0

until number == 10
  number += 1
  if number.odd?
    next
  end 
  puts number
end

#cleaner if you do : next if number.odd?


#first to five

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  puts "a is #{number_a}"
  puts "b is #{number_b}"
  
  
  next if number_a < 5 && number_b < 5
  puts "5 was reached!"
  break
end



#greeting

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  
  number_of_greetings -= 1
end



#USER INPUT

#Repeat after me

puts "Type anything you want: "
input = gets.chomp
puts input 



#Your age in months
puts "What is your age in years?"
age_in_years = gets.chomp.to_i

age_in_months = age_in_years * 12

puts "Your bitch ass is #{age_in_months} months old"



#print something part 1

puts ">> Do you want to print something? (y/n)"
answer = gets.chomp.downcase

if answer == "y"
  puts "something"
else 
  puts ""
end 

#more concise is puts 'somethng' if answer == 'y'


#print something part 2

loop do

puts ">> Do you want to print something? (y/n)"
answer = gets.chomp.downcase

if answer == "y"
  puts "something"
  break
elsif answer == 'n'
  puts ""
  break
else 
  puts "ERRRRRRRRRRRRRRRRRORRRRRRR YOU IDIOT"
  next
end 

end 


#Launch School Printer 1

loop do
puts "How many output lines do you want? Enter a number >= 3: "
number = gets.chomp.to_i

if number < 3
  puts "Thats not enough line asswipe"
  next
else 
 number.times {puts "Launch School is the best"}
 break
end 

end


#passwords

password = "bitchass"

loop do 
  
puts "What's the password?"
answer = gets.chomp

if answer == password
  puts "YAAAAAAAS BOI WELCOME"
  break
else
  puts "NAHH HOMIE TRY AGAIN"
  next
end
end

#more succinctly is break if password == answer, puts "invalid password" then end because it'll just loop if it gets tthere


#user name and password
username = "ted"
password = "pennstate"

loop do
  puts "Username: "
  username_input = gets.chomp
  puts "Password: "
  password_input = gets.chomp
  
  break if username == username_input && password == password_input
  puts "naww try again"
  
  
end

puts "well hello mothafucka"



#dividing numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = nil
denominator = nil

loop do

  puts "Please enter the numerator: "
  numerator = gets.chomp
  
  if numerator == "0"
    puts "can't use 0"
    next
  elsif valid_number?(numerator)
    numerator = numerator.to_i
  else 
    puts "Invalid input. Only integers are allowed."
    next
  end
  
  loop do
  puts "Please enter the denominator: "
  denominator = gets.chomp
  
  if denominator == "0"
    puts "can't use 0"
    next
  elsif valid_number?(denominator)
    denominator = denominator.to_i
    break
  else 
    puts "Invalid input. Only integers are allowed."
    next
  end
end
  
  answer = numerator / denominator
  
  puts "#{numerator} / #{denominator} is #{answer} "
  break
  
end



#launch school printer 2


number_of_lines = nil

loop do
  
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit)'
  number_of_lines = gets.chomp.downcase
  break if number_of_lines == "q"
  
  
  number_of_lines =  number_of_lines.to_i
  
  if number_of_lines < 3
    puts ">> That's not enough lines."
  else
    number_of_lines.times {puts "Launch School is the best"}
  end 
end



#strictly loops no times method
number_of_lines = nil

loop do
  
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit)'
  number_of_lines = gets.chomp.downcase
  break if number_of_lines == "q"
  
  
  number_of_lines =  number_of_lines.to_i
  
  if number_of_lines < 3
    puts ">> That's not enough lines."
    next
  end 
  
  while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

end



#opposites attract

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  first_input = nil
  second_input = nil
  
  
  loop do
    
  puts "Please enter a positive or negative integer:"
  first_input = gets.chomp
  
  if valid_number?(first_input)
    first_input = first_input.to_i
    break
  else 
    puts "Invalid input. Only non-zero integers are allowed."
    next
  end 
  
end

loop do
  
  puts "Please enter a positive or negative integer:"
  second_input = gets.chomp
  
  if valid_number?(second_input)
    second_input = second_input.to_i
  else 
    puts "Invalid input. Only non-zero integers are allowed."
    next
  end 
  
  if (first_input < 0 && second_input < 0)
    puts "Sorry. One integer must be positive, one must be negative."
  elsif  (first_input > 0 && second_input > 0)
    puts "Sorry. One integer must be positive, one must be negative."
  else 
    break
  end 
    
end 

answer = first_input + second_input

puts "#{first_input} + #{second_input} = #{answer}"
break
  
end

#learned a few things. the test could have been break if first_input *second_input < 0
#instead of nested loops, use a method with a loop in it



#Methods

#Print me (part 1)

def print_me
  puts "I'm printing within the method!"
end

print_me



#Print me part 2

def print_me
  "I'm printing the return value"
end

puts print_me


#Greeting through methods

def hello
  "Hello"
end

def world 
  "World"
end

puts "#{hello} #{world}"
puts hello + world

#if you puts a method, it will print whatever is returned 


#greeting through methods part 2

def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + " " + world
end

puts greet


#make and model

def car(make, model)
  make + " " + model
end

car('Toyota', 'Corolla')


#day or night

daylight = [true, false].sample
puts daylight

def time_of_day(boolean)
  puts "It's daytime!" if boolean == true
  puts "It's nighttime!" if boolean == false
  
end

time_of_day(daylight)



#naming animals

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."



#name not found

def assign_name(name = "Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'




#multiplying the sum

def add(n, m)
  n + m
end

def multiply(n, m)
  n * m
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36



#random sentence

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))



#Breakfast, lunch or dinner part 1

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

#RETURN
#counting sheep part 1

def count_sheep
  5.times do |sheep|
    puts "sheep"
  end
end

puts count_sheep


#CONDITIONALS

#Unpredictable Weather (part 1)

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright!"
end 




#unpredictable weather

sun = ['visible', 'hidden'].sample

unless sun == "visible"
  puts "The clouds are blocking the sun."
end 



#unpredicatble weather part 3

sun = ['visible', 'hidden'].sample

puts "The sun is so bright" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"


#true or false

boolean = [true, false].sample

puts boolean

boolean ? puts "I'm true" : puts "I'm false"



#Stoplight Part 1

stoplight = ['green', 'yellow', 'red'].sample
puts stoplight
case stoplight
  when "green" then puts "Go!"
  when "yellow" then puts "Slow down!"
  when "red" then puts "Stop!"
end 



#stoplight part 2

stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

if stoplight == "green"
  puts "Go!"
elsif "yellow"
  puts "Slow down!"
else 
  puts "Stop!"
end 



status = ['awake', 'tired'].sample

a = if status == 'awake'
  "Be productive!"
else 
  "Go to sleep!"
end 


puts a 



#cool numbers 

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end



#stoplight part 3

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end



#STRINGS

#create a string

empty_string = String.new


#quote confusion

puts "It's now 12 o'clock."



#ignoring case

name = 'Roger'

if name.downcase == "RoGeR".downcase
  puts true
else 
  puts false
end 

if name.downcase == "DAVE".downcase
  puts true
else 
  puts false
end 


#using casecmp
name = 'Roger'


if name.casecmp("RoGeR") == 0
  puts true
else 
  puts false
end 

if name.casecmp("DAVE") == 0
  puts true
else 
  puts false
end 

#more succinctly 

puts name.casecmp('RoGeR') == 0



#dynamic string

name = 'Elizabeth'

puts "Hello, #{name}!"



#combining names

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"

puts full_name



#tricky formatting

state = 'tExAs'

state.capitalize!

puts state



#goodbye not hello

greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
 
puts greeting


#print the alphabet

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split("")




#pluralize

words = 'car human elephant airplane'

array = words.split(" ")

array.each {|word| puts word + "s"}

#faster

words.split(" ").each {|word| puts word + "s"}



#are you there?

colors = 'blue pink yellow orange'


puts colors.include? ("yellow")
puts colors.include? ("purple")



colors = 'blue boredom yellow'
puts colors.include?('red')
  


#ARRAYS

#new pet

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}"



#more than one

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2, 3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"


#free the lizard  

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop

puts "I have a pet #{my_pets[0]}"



#one isnt enought

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"



#what color are you?

colors = ['red', 'yellow', 'purple', 'green']

colors.each {|color| puts "I'm the color #{color}"}


#doubled

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map {|number| number * 2}

p doubled_numbers


#divisible by three

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select {|number| number % 3 == 0}

p divisible_by_three





[['Dave', 7],[ 'Miranda', 3], ['Jason', 11]]


#fav number part 2

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
favorites.flatten!

p favorites



#are we the same

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2



#HASHES

#first car

car = {
  type:     "sedan",
  color:    "blue",
  mileage:  80_000}
  
  #add the year
  
  car[:year] = 2003
  

  #broken odometer
  
  car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)

p car



  
  
#what color?

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]


#labeled Numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |k, v| puts "A #{k} number is #{v}"}



#divided by two

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map {|k, v| v / 2}

p half_numbers



#low med or high
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select{|k, v| v < 25}

p low_numbers



#low or nothing

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers


#multiple cars

{ car: {type: "sedan", color: "blue", year: 2003},
  truck: {type: "pickup", color: "red", year: 1998}
}



car= [
  [:type:  'sedan'],
  [:color: 'blue'],
  [:year:  2003]
]



#DEBUGGING

#reading eerror messages


def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)



#weather forecast

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine == true
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end



#mult by five


def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"




#pets

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog][2] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}




def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
#puts "#{get_quote('Confucius')}"



#accoutn balance

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
  

end

puts balance


#colorful things

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


#digit product

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
 
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

=end

#warriors and wizards

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player

