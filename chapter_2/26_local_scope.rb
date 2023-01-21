# page 83

def say_goodbye
  x = 'Goodbye'
  p x
end

def start_here
  x = 'hello'
  p x
  say_goodbye
  p "let's check if x remains the same"
  p x
end 

start_here