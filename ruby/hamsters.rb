puts "What is the hamster's name?"
  hamster_name = gets.chomp


response = false

until response == true  
puts "How loud is the hamster from 1 - 10?"
  volume = gets.chomp
  if volume.to_i < 10
  puts "the hamsters volume level is #{volume.to_i}"
  response = true
  else puts "that is not a correct response"
  end 
end
  
puts "What is the color of your hamster's fur?"
  fur_color = gets.chomp
puts "Would you adopt this hamster?"
  adopt = gets.chomp
puts "How old is the hamster?"
  hamster_age = gets.chomp
  if hamster_age == ""
    hamster_age = nil
  else hamster_age = hamster_age.to_i
  end
puts "thank you."
puts "Name: #{hamster_name}; Volume: #{volume.to_i}; Fur Color: #{fur_color}; Adopt: #{adopt}; Hamster Age: #{hamster_age}."