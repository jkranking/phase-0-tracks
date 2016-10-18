# module Shout
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end 

#   def self.yelling_happily(words)
#     puts words + " Yayyyy!!!!"
#   end
# end

# Shout.yell_angrily("hello")
# Shout.yelling_happily("hello")


#############


module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end 

  def yelling_happily(words)
    puts words + " Yayyyy!!!!"
  end
end 

class Soup_Nazi
  include Shout
end 

class Baseball_player
  include Shout
end

new_instance = Soup_Nazi.new
new_instance.yell_angrily("No soup for you")
new_instance.yelling_happily("You get soup")

new_instance = Baseball_player.new
new_instance.yelling_happily("Walk off")
new_instance.yell_angrily("shut-out")






