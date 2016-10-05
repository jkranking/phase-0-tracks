

puts "What is your name?"

  name = gets.chomp

puts "How old are you?"

  age = gets.chomp.to_i

puts "What year were you born?"

  birth_year = gets.chomp.to_i

  if 2016 - birth_year == age

  correct_age = true 

  else correct_age = false 

  end 

puts "Should we order you garlic bread? Yes or No"

  garlic_bread = gets.chomp.downcase

  if garlic_bread == "yes" 

    willing_to_eat_garlic = true 

  else willing_to_eat_garlic = false 

  end 

puts "Would you like to enroll in the company's health insurance? Yes or No"

  insurance = gets.chomp.downcase

  if insurance == "yes"

  wants_insurance = true 

  else wants_insurance = false

  end 



if name == "Tu Fang" || name == "Drake Cula"

  puts "The employee is clearly a vampire"


elsif correct_age == true && (willing_to_eat_garlic == true || wants_insurance == true) 

  puts "The employee is probably not a vampire"

elsif correct_age == false && willing_to_eat_garlic == false && wants_insurance == false

  puts "The employee is almost certainly a vampire"

elsif correct_age == false && (willing_to_eat_garlic == false || wants_insurance == false)

  puts "The employee is probably a vampire"

else puts "Results inconclusive"

end