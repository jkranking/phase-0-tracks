
# def pategonia 
#   puts "Where to go in Pategonia"
#   yield("torres del paine", "perito norena")
# end 

# pategonia {|place1, place2| puts "You should go to #{place1} and #{place2}" }


#######################

# 1. In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)


array = ["pizza", "pasta", "soup", "cookies"]

hash = {
  pizza: "cheese",
  pasta: "flour",
  soup: "stock",
  cookies: "sugar",
}


# 2.  Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.


# p array

# array.each do |food|
#   puts "I love #{food}"
# end 

# p array 
# puts 
# p hash 

# hash.each do |food, ingredient|
#   puts "The #{food} is made of #{ingredient}"
# end 

# p hash 
# puts 
# p array

# array.map! do |food|
#   food.upcase
# end 

# p array

##############################

# 1 . A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).


# hash.delete_if {|food, ingredient| food == :pizza}

# # p hash 


# array.delete_if {|food| food == "pizza"}

# p array

#####################################

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

# array.keep_if {|food| food == "pizza"}

# p array 


# hash.keep_if {|food, ingredient| food == :pasta}

# p hash 

#################################

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

# array.include?("pizza")

# hash.include?(:pizza)

#################################

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

# array.drop_while {|food| food == "pizza"}








