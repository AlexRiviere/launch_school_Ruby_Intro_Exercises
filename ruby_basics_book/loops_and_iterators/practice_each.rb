=begin
names = ['Bob', 'Taki', 'Khhuliso', 'Murangi', 'Tshifhiwa', 'Thinamaano']

names.each {|name| puts name}
=end

names = ['Bob', 'Taki', 'Khhuliso', 'Murangi', 'Tshifhiwa', 'Thinamaano']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end 
