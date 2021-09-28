=begin
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you?")
say("I'm fine")

def say(words)
  puts words + "."
end

say("hello")
say("hi")
say("how are you?")
say("I'm fine")
=end

def say(words = 'put something in me')
  puts words + "."
end

say()
say("hello")
say("hi")
say("how are you?")
say("I'm fine")