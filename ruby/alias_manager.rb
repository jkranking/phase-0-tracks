# pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. 


def alias_creator(name)

  #downcase everything

  name.downcase!

  # make a vowels/consonant strings and set them to variables

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyzb"

  # make empty string for new alias name

  alias_name = ""


  # I couldn't figure this out with .map! Used .each instead. For each of the letters in the array do something.  

  name.chars.each do |letter|

    # so I realized that after I did all of this that the program breaks when you use "u" in a name because vowels[vowels.index("u") + 1] => nil. So I made a specific condition for "u" that if the letter is u it will push a into a string variable 

    if name[letter] == "u"
    alias_name << "a"

    # if the letter is equal to vowels go to the next vowel and push it into a string 

    elsif vowels.include? letter
    next_vowel = vowels[vowels.index(name[letter]) +1]
    alias_name << next_vowel

    # if the letter is to a consonant, then go to the next consonant and push it into a string

    elsif consonants.include? letter
    next_consonant = consonants[consonants.index(name[letter]) +1]
    alias_name << next_consonant 

    # if the letter is a space then push the space into the string

    elsif name[letter] == " "
    alias_name << name[letter]

    end 
  end 

  # split the string at spaces and reverse

  alias_name = alias_name.split(" ").reverse

  # map! over the names, capitalize and then join them.   

  alias_name.map! {|each_name| each_name.capitalize!}.join(" ")

end 


# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

# Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.

# create an empty hash and string 

alias_hash = {}
name = ""


# create a loop that will break if user types quit 

loop do

  # ask user for names and store in a variable. 

 puts "Type a name to be converted to its alias. When you are done type 'quit'"
 name = gets.chomp

 break if name == "quit"

  #print the alias

  puts alias_creator(name)

  #store the name and the alias in a hash 

  new_name = alias_creator(name)
  alias_hash.store(name, new_name)

end
 
 #iterate through the hash and print
 puts "Here are the alias changes I made"
 alias_hash.each do |name, new_name|
   puts "#{name} changed to #{new_name}."
end










