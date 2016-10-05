
# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.



def encrypt(n)

  #use the .next method to go to the next letter of the alphabet based on the specific index number of the string. 

  #We need to loop the operation so it will find the index for every character of the string, and adding 1 to the index # for each loop.

  #We need to add each index of the string together into a variable so we can print it.  

  str_index = 0

  encrypt_str = ""

  until str_index >= n.length

    encrypt_str = encrypt_str + n[str_index].next   #"abc"[0].next => "b"
    str_index += 1

  end

  p encrypt_str

end

# encrypt("abc")





# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can yu find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.


def decrypt(n)

  #Save the alphabet into a variable

  #Find the index number for the letter in the string eg ("abc"[0] => "a") and calling that letter on the alphabet to get the indexed number eg (alphabet.index("a") => 0)

  # then storing it into a variable abcs_index

  #then subtract 1 to get it to the prior letter in the alphabet

  #We need to loop the operation so it will find the index for every character of the string, and adding 1 to the index # for each loop.

  #We need to add each index of the string together into a variable so we can print it.  

  str_index = 0

  decrypt_str = ""

  alphabet = "abcdefghijklmnopqrstuvwxyz"

  until str_index >= n.length

      abcs_index = alphabet.index(n[str_index])   #"alphabet".index("a") => 0

      abcs_index -= 1    #0 - 1 => 25

      decrypt_str = decrypt_str + alphabet[abcs_index]

    str_index += 1

  end

  p decrypt_str

end

# decrypt("abc")

# decrypt(encrypt("swordfish"))


# It works because it is calling two methods on the same argument so it is first encrypting "swordfish" and then decrypting it.  



# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password

puts "Hello secret agent.  Would you like to decrypt or encrypt a password? Please type decrypt or encrypt"

# define response

user_input = gets.chomp.downcase

# Asks them for the password

puts "What is your password?"

#define response

password = gets.chomp.downcase



# Conducts the requested operation, prints the result to the screen, and exits

if user_input == "decrypt" 

  decrypt(password)

else encrypt(password)

end 





