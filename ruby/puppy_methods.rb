class Puppy
  
  def initialize
    puts "Initializing new puppy instance..."
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  
  def speak(a)
    puts "Woof!" * a
  end 
  
  def roll_over
    puts "roll over"
  end 
  
  def dog_years(n)
    puts n * 7
  end 
  
  def sit
    puts "I am sitting"
  end 
  
end


# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(3)
# fido.roll_over
# fido.dog_years(5)
# fido.sit

##########


class Pair
  
  def initialize
    puts "We got this!"
  end 
  
  def students
    puts "Oladejo and Jeff are pairing"
  end 
  
  def dbc
    puts "aspiring programmers"
  end
  
end 

# challenge_6 = Pair.new
# challenge_6.students
# challenge_6.dbc

instances_array = []

i = 0 
while i < 50
  challenge_6 = Pair.new
  instances_array.push(challenge_6)
  i += 1 
end 


instances_array.each do |each_instance| 
  each_instance.dbc
  each_instance.students
end 
  
# p instances_array







