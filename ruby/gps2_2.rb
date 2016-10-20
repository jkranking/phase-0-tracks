# Method to create a list
def newlist(items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 
  # go from string to hash 
    #set up a new hash
  # grocery_list= {}
    #Convert our string to array
  items = items.split(' ')
    #iterate through the array
  # items.each do |i|
    # grocery_list.store(i, 1) #<--- grocery_list[i] = 1
  # end
  
  
  items.each_with_object({}) do |i, grocery_list|
    grocery_list.store(i, 1)
  end  
  
  # grocery_list
end

our_list = newlist("carrots apples cereal pizza")
yourlist = newlist("guitar tree fish")


      #store each array item in the hash as key, with a value of 1
  # set default quantity (included in store
  # print the list to the console [can you use one of your other methods here?]
# output: a hash 




# Method to add an item to a list
def additem(list, item, number = 1)
# input: hash, item name and optional quantity
# steps: push an item into the hash
  list.store(item, number)
end
# output: an hash with one additional value
p additem(our_list, "milk", 3)
p additem(our_list, "bread")
p our_list

# Method to remove an item from the list
def delitem(list, item)
# input: list and key
  list.delete(item)
# steps: delete a given key item
end
# output: hash with item removed

p delitem(our_list, "milk")
p our_list

# Method to update the quantity of an item
# input:list, key and new value
def change_quant(list, item, new_num)
  list[item] = new_num
  list
end
# steps: change the value of the key to the new value
p change_quant(our_list, "apples", 4)
# output:updated ourlist

# Method to print a list and make it look pretty
def print_list(list)
# input:list
# steps: iterate through the list
  list.each do |item, number|
    puts "we have #{number} #{item}"
  end
  puts "in our grocery list"
end
  #print each key value pair in a string
# output: a series of strings

print_list(our_list)