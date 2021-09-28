#def doubler(start)
#  puts start * 2
#end 

# make into recursion

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)


