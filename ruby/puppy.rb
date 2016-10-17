Breed ------------------------
chocolate lab

CHARACTERISTICS ----------------
hair length: short
Friendly: yes
fullgrown weight range: 55 - 75lb
Name: varies
Color: varies

BEHAVIOR -----------------------
Jump
Hug
Fetch

######

irb:

class Puppy
end 

#how to make a new instance of the class Puppy and save as a variable


#3 instances

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new


#things instances can do 

spot.class #=> Puppy
duchess == fido #=> false
fido.instance_of?(Array) #=> true 
fido.instance_of?(Puppy) #=> true
spot.play_dead  #=> error

#Notice that you can call methods on the class itself (Puppy.new, for example), or on an instance of a class (some_puppy_instance.bark). Methods you call on a class are called class methods. Methods you call on an instance are called instance methods.

# You've been using instance methods quite often already -- anytime you call a method on a particular string, or array, or integer, you are calling an instance method. You haven't called many class methods, but you certainly could.



str = String.new
str.length
str.empty?
str += "huh."
In the past, we have often made new instances of the String class by declaring them literally:

str = "some string"
... but String.new will work too, and even takes an argument for what characters you would like to put in the string. Try it:

greeting = String.new("hello")
greeting.length
greeting.upcase


# String is the class so new is the class method

# str is the instance so any method run on string would be an instance method 

# so you wouldn't call .length on the class itself 











