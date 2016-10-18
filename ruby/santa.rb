
# 0 Make lots of Santas 

# 1 Use our array of example genders and an array of example ethnicities to create your Santas with a randomly selected gender and a randomly selected ethnicity. 

# 2 figure out how to randomly select an array item 

# 3 Set your new Santa's age to a random number between 0 and 140.

# 4 No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.




class Santa

  attr_reader :age, :ethnicity  # getter sugar syntax (same as below)
  attr_accessor :gender  # getter and setter sugar syntax (same as below)

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @ethnicity = ethnicity
    @gender = gender
    @age = rand(0..140)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end 

  def santa_identity
    puts "Santa is #{@ethnicity} and #{gender}"
  end 
  
  def celebrate_birthday
    @age + 1
    puts "Santa is #{@age} years old"
  end 

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.insert(-1, reindeer)
    puts @reindeer_ranking
  end 

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end 

end 


#driver code

# santas = Santa.new("white", "male")
# # santas.speak
# # santas.eat_milk_and_cookies("nutella")
# # santas.celebrate_birthday
# santas.get_mad_at("Rudolph")
# puts "Santa is #{santas.age} and is #{santas.ethnicity}." #uses the getter method (or attr_reader)

# santas.gender = "gender fluid" #uses the setter/getter method (or attr_accessor)
# puts "Santa is now #{santas.gender}"  #uses the setter/getter method (or attr_accessor)


########################

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas.each do |new_santa| 
#   new_santa.eat_milk_and_cookies("nutella")
#   new_santa.get_mad_at
# end 


#########################


santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

50.times do |i|

  x = example_genders.shuffle[0]
  y = example_ethnicities.shuffle[0]

  # santas = Santa.new(x, y)  #alternative to making the data structure with the santas array
  # santas.santa_identity

  santas.push(Santa.new(x, y))

end

santas.each do |new_santa|
  new_santa.santa_identity
  new_santa.celebrate_birthday
end 

