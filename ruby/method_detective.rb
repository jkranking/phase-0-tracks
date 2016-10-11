# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert 9, "suspects"
# => "the usual suspects"

" suspects".insert 0, "the usual"
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# couldn't find a method for this one so just returned the string without [0]

"The mystery of the missing first letter".[1..-1]     
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# 122 is the ASCII (American Standard Code for Information Interchange) Code for the character z.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
