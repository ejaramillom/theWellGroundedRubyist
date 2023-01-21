thing = Object.new
if thing.respond_to?('talk')
  thing.talk
else
  puts 'thing does not know how to talk'
end
