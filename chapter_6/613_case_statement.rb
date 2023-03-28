print "Exit the program? (yes or no): "
answer = gets.chomp
case answer
  when 'yes'
    exit
  when 'no'
    puts 'Ok, well continue'
  else
    puts 'i dont get it. i assume you said no' 
end 

puts 'continuing the program...'