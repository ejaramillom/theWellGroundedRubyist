# Symbol#to_proc built in functionality

%w { david thing }.map(&:capitalize)
# => ['David', 'Black']

# this is equivalent to 

%w{ david black }.map {|str| str.capitalize }

