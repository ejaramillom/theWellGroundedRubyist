# When the Ruby parser sees the sequence identifier, equal-sign, value, as in this expression
x = 1

# it allocates space for a local variable called x . The creation of the variable—not the assignment of a value to it, but the internal creation of a variable—always takes place as a result of this kind of expression, even if the code isn’t executed!

#Consider this example:

if false
  x = 1
end

p x
p y

# Output: nil
# Fatal error: y is unknown
# The assignment to x isn’t executed, because it’s wrapped in a failing conditional test. But the Ruby parser sees the sequence x = 1 , from which it deduces that the program involves a local variable x . The parser doesn’t care whether x is ever assigned a value. Its job is just to scour the code for local variables for which space needs to be allocated. The result is that x inhabits a strange kind of variable limbo. It has been brought into being and initialized to nil . In that respect, it differs from a variable that has no existence at all; as you can see in the example, examining x gives you the value nil ,whereas trying to inspect the non-existent variable y results in a fatal error. But although x exists, it has not played any role in the program. It exists only as an artifact of the parsing process.

# None of this happens with class, instance, or global variables