def some_method(number)
  number = 7 # this is implicitly returned by the method
  print number, "This is number \n"
end

a = 5
some_method(a)
puts a