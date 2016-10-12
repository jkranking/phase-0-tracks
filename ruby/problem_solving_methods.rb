
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

p search_array(arr, 1)
# => 3
p search_array(arr, 24)
# => nil

