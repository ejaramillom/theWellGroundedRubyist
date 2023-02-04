$gvar = "i am a global!"
class C 
  def examine_global
    puts $gvar
  end 
end 

c = C.new
c.examine_global

# list of built in global variables

# $! 	latest error message
# $@ 	location of error
# $_ 	string last read by gets
# $. 	line number last read by interpreter
# $& 	string last matched by regexp
# $~ 	the last regexp match, as an array of subexpressions
# $n 	the nth subexpression in the last match (same as $~[n])
# $= 	case-insensitivity flag
# $/ 	input record separator
# $\ 	output record separator
# $0 	the name of the ruby script file
# $* 	the command line arguments
# $$ 	interpreter's process ID
# $? 	exit status of last executed child process