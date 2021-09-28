=begin
#1
words = ["laboratory", "experiment", "Pans Labryinth", "elaborate", "polar bear"]

words.each do |word|
  if /lab/ =~ word
    puts word
  end 
end 

=end

def execute(&block)
  block
end 

execute {puts "Hello from inside the execute method"}
