# write method that takes a string, downcase the string, and turn it into an array

def alias_creator(name)
  name = name.downcase.chars

  #store vowels/consonants to variables

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyzb"

  #loop over array with .map! to store results in name array

  name.map! do |letter|

    #I realized when I was done that names with "u" broke the program because vowels.index(u) + 1 = nil. So I had to make a special conditional converting "u" to "a"

    if letter == "u"
      letter = "a"

      #create conditionals where if vowels/consonants include "letter" then find the index of the vowel/consonant by using the "letter"

      elsif vowels.include? letter
      letter = vowels[vowels.index(letter) +1]
      elsif consonants.include? letter
      letter = consonants[consonants.index(letter) +1]

      #the last alternative condition is letter equals " "

      else letter = " " 
    end 
  end 

  #join the array and split back to an array at the " ". Reverse the words, capitalize then join.  

  name = name.join.split(" ").reverse.map! {|each_name| each_name.capitalize!}.join(" ")
end 

alias_hash = {}

# create a loop that will break if user types quit.

loop do

  # ask user for names and store in a variable. 

  puts "Type a name to be converted to its alias. When you are done, type 'quit'."
  name = gets.chomp
  break if name.downcase == "quit"

  #print the alias.

  puts alias_creator(name)

  #store the name and the alias in a hash.

  alias_hash.store(name, alias_creator(name))

end
 
#iterate through the hash and print
puts "Here are the alias changes I made to the names:"
alias_hash.each do |name, new_name|
  puts "#{name} changed to #{new_name}."
end







