# pseudocode and write program that enter details of a given client's name, age, number of children, decor theme, using mix of string, integer, and boolean data).
# keys should be symbol 

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). 

# If the designer says "none", skip it.
#But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. 

# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

# Print the latest version of the hash, and exit the program.

# Be sure to pseudocode, and leave your pseudocode in as comments.

client_info = {}

# ask the user for their name 
puts "Please give me your name"

# store the response in a variable 

name = gets.chomp

# ask the user for their age 

puts "Please give me your age"

# store the response in a variable 

age = gets.chomp.to_i

# ask the user for the number of children

puts "How many children do you have"

# store the response into a variable 

children = gets.chomp.to_i 

# ask if they need painting done

puts "True or false, do you want us to paint?"

# store the response into a variable 

paint_input = gets.chomp

# turn response into a boolean with a conditional

if paint_input == 'true'
  painting = true
else painting = false
end


#create the hash with the variables

client_info[:name] = name
client_info[:age] = age
client_info[:children] = children
client_info[:painting] = painting

#print the hash

puts client_info

#ask the client if the info is correct and store it in a variable.  aks the client to say "none" if nothing needs changed

puts "Are their any errors with your information? If not type 'none'"
client_response = gets.chomp

# if the client wants to change something set a conditional that doesnt equal 

if client_response != "none"

# ask what key they would like to update and store it in a variable while turning it into a symbol. 

  puts "What key would you like to update"
  key = gets.chomp.to_sym

# ask what value they would like to update and store it in a variable. 

  puts "What would you like to update with #{key}?"
  value = gets.chomp

#end the conditional 

end 

#update the hash and print the new hash

client_info[key] = value 

puts client_info

 



