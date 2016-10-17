
puts "How many employees will be processed?"
employees = gets.chomp.to_i
number_of_employees = 0

until number_of_employees == employees

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  if 2016 - birth_year == age
    correct_age = true 
  end 

  puts "Should we order you garlic bread? Yes or No"
  garlic_bread = gets.chomp.downcase
  if garlic_bread == "yes" 
    willing_to_eat_garlic = true 
  end 

  puts "Would you like to enroll in the company's health insurance? Yes or No"
  insurance = gets.chomp.downcase
  if insurance == "yes"
    wants_insurance = true 
  end 

  number_of_allergies = true 

  until number_of_allergies == false 
    puts "Do you have any allergies? If so type the allergy one at a time and hit enter. Type done if finished"
    allergy = gets.chomp
    if allergy == "done" || allergy == "sunshine"
      number_of_allergies = false 
    end 
  end 


  if name == "Tu Fang" || name == "Drake Cula"
    puts "The employee is clearly a vampire"
    elsif allergy == "sunshine"
    puts "Definitely a vampire."
    elsif correct_age && (willing_to_eat_garlic || wants_insurance) 
    puts "The employee is probably not a vampire"
    elsif !correct_age && !willing_to_eat_garlic && !wants_insurance
    puts "The employee is almost certainly a vampire"
    elsif !correct_age && !(willing_to_eat_garlic || wants_insurance)
    puts "The employee is probably a vampire"
    else puts "Results inconclusive"   
  end

  number_of_employees += 1
  puts 
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."