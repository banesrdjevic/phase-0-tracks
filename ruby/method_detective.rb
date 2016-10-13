# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "iNvEsTiGaTiOn".swapcase

# "zom".insert(1, "o")
# could also use .replace "zoom" to replace the string
# => “zoom”
p "zom".insert(1, "o")

# "enhance".center(4)
# => "    enhance    "
p "enhance".center(4)

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "Stop! You’re under arrest!".upcase

# "the usual".insert(-1, " suspects")
#=> "the usual suspects"
p "the usual".insert(-1, " suspects")
p "the usual".concat(" suspects")

# " suspects".prepend("the usual")
# => "the usual suspects"
p " suspects".prepend("the usual")

# "The case of the disappearing last letter".chop!
# => "The case of the disappearing last lette"
p "The case of the disappearing last letter".chop!

# "The mystery of the missing first letter".delete("T"), .delete!, .slice, or .slice!(1,1000000)
# => "he mystery of the missing first letter"
p "The mystery of the missing first letter".delete("T")
p "The mystery of the missing first letter".slice(1,100000)

# "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
p "Elementary,    my   dear        Watson!".squeeze(" ")

# "z".<???> .each_byte or .each_codepoint.to_a
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
p "z".each_byte.to_a
p "z".each_codepoint.to_a

# "How many times does the letter 'a' appear in this string?".count("a")
# not .map, .each_codepoint
# => 4
p "How many times does the letter 'a' appear in this string?".count("a")


