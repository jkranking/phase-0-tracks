
# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.



def encrypt(n)

  str_index = 0
  encrypt_str = ""

  while str_index < n.length

    encrypt_str = encrypt_str + n[str_index].next   #"abc"[0].next => "b"
    str_index += 1

  end

  puts encrypt_str

end

encrypt("abc")

# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.



def decrypt(n)

  str_index = 0

  decrypt_str = ""

  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while str_index < n.length

    abcs_index = alphabet.index(n[str_index])   #"alphabet".index("a") => 0

    abcs_index -= 1    #0 - 1 => 25

    decrypt_str = decrypt_str + alphabet[abcs_index]
    str_index += 1

  end

  puts decrypt_str

end

decrypt("abc")

