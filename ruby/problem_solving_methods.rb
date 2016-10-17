
# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):




# define the method with two parameters

def search_array(array, target)

  #use a counter search through the array argument

  counter = 0 

  #stop the count when the counter == array length

  until counter == array.length

    #if the target is found print the counter 

    if target == array[counter]
      p counter 
    end

    # make the counter increase by 1 through each loop

   counter += 1  
  end 
end 


arr = [42, 89, 23, 1]

# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil


####################################


# The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1, and keep adding numbers onto the list by adding the previous two. With that in mind, an array of the first six Fibonacci terms would be [0,1,1,2,3,5]. Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, which we started out with.

# (Note that some Fibonacci sequences start out with two 1s instead. Don't let that confuse you.)

# DO THE THING
# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)



#declare a method fib with 1 parameter, an integer (n)

fib_array = []

def fib(n)

#create an empty array 

fib_array = []

# We need a counter  set to 0 

counter = 0

# run the code (n) times

  n.times do 

    # if counter greater than 1 than 

    if counter > 1 

    # the counter will add the index numbers together (index - 2) + (index-1) and set it to the variable

      a = fib_array[counter -1] + fib_array[counter -2]

    # then push the variable to an empty array 

      fib_array.push(a)

# if the counter is 0 

    elsif counter == 0 

  # then we push the first number into the array then 

      fib_array.push(0)

#if the counter is 1

    elsif counter == 1 

   # tehn push the second number in

      fib_array.push(1)

    end 

# add 1 to the counter

    counter += 1

# end the loop

  end 

  return fib_array

end 



# DRIVER CODE

# puts "type 100"


# n = gets.chomp.to_i

# run the method

p fib(100)[99] == 218922995834555169026

#print the result

####################################################


#define our method with 1 parameter

def bubble_sort(array)

  # we need a variable for length of the array to use for our times method 

  n = array.length

  loop do

    # create a boolean variable for whether they have been switched 

    swapped = false


    # run the function for the whole length of the array

    (n-1).times do |i|

      # test if items are in the right order 

      if array[i] > array[i+1]

        # if they are in the wrong order swap them

        array[i], array[i+1] = array[i+1], array[i]

        #set swap to true 

        swapped = true

      # end the conditional

      end

    # end the iteration
      
    end

    #if no swap has been performed then break the loop

    break if not swapped

  #end the loop

  end

  #print the array 

  array

  #end the method

end



















