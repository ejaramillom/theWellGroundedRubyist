def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)
  yield fh
  fh.close
  rescue
   puts "Couldn't open your file!"
end

# you don't have to explicitly set a begin keyword inside a method definition, because the block of a method, if you want the rescue keyword to govern the entire method