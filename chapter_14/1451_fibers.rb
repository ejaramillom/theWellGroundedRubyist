conversation = Fiber.new do
  puts "Hi."
  Fiber.yield
  puts "Nice day."
  Fiber.yield
  puts "Bye!"
end

conversation.resume
puts "Back to the conversation:"
conversation.resume
puts "One last message from the conversation:"
conversation.resume
puts "That's all! conversation ended"

# => Hi.
# => Back to the conversation:
# => Nice day.
# => One last message from the conversation:
# => Bye!
# => That's all! conversation ended