# Parallelism and concurrency in programming are similar concepts with a small but significant difference. Parallelism ensures that two or more tasks can run at the exact same time, whereas concurrency only ensures a sort of time sharing that allows for faster processing. Ruby is a language with a Global Interpreter Lock (GIL), a mechanism that helps to ensure thread safety in concurrent programming but at the same time prevents parallelism.

Thread.new do
  puts "Starting the thread"
  sleep 1
  puts "At the end of the thread"
end

puts "Outside the thread"

# => Starting the thread
# => Outside the thread

# if you want to allow the thread to finish you instantiate the thread and join it

thing = Thread.new do
  puts "Starting the thread"
  sleep 1
  puts "At the end of the thread"
end

puts "Outside the thread"
thing.join

# => Starting the thread
# => Outside the thread
# => At the end of the thread

# killing, stopping and starting threads

# you use the keywords 'kill' 'exit' or 'terminate'

puts 'Trying to read some files in a thread'
text = []
thing = Thread.new do
  (0..2).each do |file|
    puts "part#{file}"
    File.open("part#{file}.txt") do |content|
      puts content.readlines
    end 
  rescue Errno::ENOENT
    puts "Message from thread: Failed on file number = #{file}"
  end 
end 

thing.join
puts "Finished reading!"

# stop, sleep and wake up threads

thing = Thread.new do
  puts "[Starting thread]"
  Thread.stop
  puts "[Resuming thread]"
end

sleep 1
puts "Status of thread: #{thing.status}"
puts "Is thread stopped? #{thing.stop?}" # Is thread stopped? true
puts "Is thread alive? #{thing.alive?}" # Is thread alive? true
puts 
puts "Waking up thread and joining it..."
thing.wakeup
thing.join # resuming thread
puts
puts "Is thread alive? #{thing.alive?}" # Is thread alive? false
puts "Inspect string for thread: #{thing.inspect}" # Inspects string for thread: #<Thread:0x28d20 dead>

