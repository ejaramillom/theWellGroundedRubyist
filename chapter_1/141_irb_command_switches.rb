ruby -c file.rb
# checks for sintax in the file without executing
ruby -w file.rb
# give warning messages
ruby -e 'puts "hello world! "'
# executes code inside quotations in console
ruby -v
# shows version installed of ruby 
ruby -le 'print ' "+ new line!"
# line mode prints a new line after every line of output
ruby -rprofile
# requires the feature 'profile'
ruby186 -ve "puts 'abc'.starts_with?('a')"
# this is going to run in ruby 1.8.6 and run the code inside quotes
irb --simple-prompt --noecho
# eliminates displaying the result of the line
