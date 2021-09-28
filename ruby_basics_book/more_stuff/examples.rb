=begin
a = [1, 2, 3, 3]
b = a
c = a.uniq!





def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end 

a = ['a', 'b', 'c']

test(a)

def take_block(&block)
  block.call
end 

take_block do
  puts "Block being called in method"
end

take_block(&take_block)





def take_block(number, &block)
  block.call(number)
end

number = 42

take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end 


talk = Proc.new do
  puts "I am talking"
end

talk = Proc.new do |name|
  puts "i am talking to #{name}"
end

talk.call "bob"



def take_proc(proc)
  [1, 2, 3, 4].each do |number|
    proc.call number
  end
 end 
 
 proc = Proc.new do |number|
   puts "#{number}. Proc being called in the method"
  end 
  
  
  take_proc(proc)
  


begin 
  #perform dangerous operation
rescue 
  #do this if operation fails
  #for example, log the error
end 





names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin 
    puts "#{name}'s name has #{name.length} letters in it."
  rescue 
    puts "Something went wrong"
  end 
end 



# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
=end


top


def top 
  bottom
end 

def bottom 
  puts "reached the bottom"
end 

