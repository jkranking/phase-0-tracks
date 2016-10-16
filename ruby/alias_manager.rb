

# pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# Swapping the first and last name.

# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 

#and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 

# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. 


def alias_creator(name)

  #downcase everything

  name.downcase!

  # make a vowels/consonant strings and set them to variables

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyzb"

  # make empty string for new alias name

  alias_name = ""



  name.chars.each do |letter|

    # so I realized that after I did all of this that the program breaks when you use "u" in a name because vowels[vowels.index("u") + 1] => nil. So I made a specific condition for "u"

    if name[letter] == "u"
    alias_name << "a"

    elsif vowels.include? letter
    next_vowel = vowels[vowels.index(name[letter]) +1]
    alias_name << next_vowel

    elsif consonants.include? letter
    next_consonant = consonants[consonants.index(name[letter]) +1]
    alias_name << next_consonant 

    elsif name[letter] == " "
    alias_name << name[letter]

    end 
  end 


  alias_name = alias_name.split(" ").reverse

  alias_name.map! {|each_name| each_name.capitalize!}.join(" ")

end 

alias_creator("Jeffrey Kranking")


# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

alias_storer = []

loop do 

  puts "Type in any name to convert it to an alias. To end type 'quit'"

  name = gets.chomp

  break if name == "quit"
 
 puts alias_creator(name)
 
 alias_storer.push(alias_creator(name))

end 

puts alias_storer


# Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.












