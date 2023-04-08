class InvalidLineError < StandardError
end

def line_from_file(filename, pattern)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.include?(pattern)
  return line
  rescue InvalidLineError
    puts "Invalid line!"
    raise
  ensure
    fh.close
end