# design and build a nested data structure to represent a real-world construct. 

# You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.

# Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.

music_genre_instruments = {
  rock: ["guitar", "bass", "drums"],
  bluegrass: ["banjo", "violin", "mandolin"],
  jazz: ["stand-up bass", "horns", "piano"],
  folk: ["acoustic guitar", "harmonica"],
}



music_genre_instruments[:rock][2]  #=> "drums" 


music_genre_instruments[:jazz][0]  #=> "stand-up bass"

music_genre_instruments[:folk][1]  #=> "harmonica"