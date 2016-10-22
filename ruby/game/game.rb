class Game
  attr_reader :word_str, :secret_word, :guess_count
  attr_accessor :guess, :is_over

  def initialize (secret_word)
    @secret_word = secret_word.downcase
    @guess_count = @secret_word.length
    @word_str = ""
    @secret_word.length.times {@word_str << "_"}
    @is_over = false
    @guess_array = []
    @guess = ""
  end 

  def guess_letter
    if  @secret_word.include? @guess
      @secret_word.split("").each_index do |index|
        if @secret_word[index] == @guess
          @word_str.slice!(index)
          @word_str.insert(index, @guess)
        end 
      end 
    "correct guess"
    else "incorrect guess"
    end 
  end 

  def guess_letter_win
    if (@guess_count < 1 && @secret_word == @word_str) || @secret_word == @word_str
      @is_over  = true
      "You won the game!"
    elsif @guess_count < 1 && !(@secret_word == @word_str)
      @is_over = true
      "You lost the game! You're a terrible person!"
    else
    end 
  end  

  def guess_word
    if @secret_word  == @guess
      @is_over  = true
      "You won the game!"
    else 
      "Incorrect guess"
    end 
  end 

  def guess_list
    if @guess_array.include? @guess
      puts "You already guessed #{@guess}"
      @guess_count += 1
    end 
    @guess_array.push(@guess)
  end 

  def count
    @guess_count -= 1
  end 

  def word_str
    if !@is_over
    @word_str
    else 
    end 
  end 

end

# game = Game.new("hello")
# game.guess = "l"
# game.guess_letter


puts "Player 1: please give a secret word."
secret_word = gets.chomp
game = Game.new(secret_word)
system "clear"

puts "Player 2: Here is the secret word"
p game.word_str

while !game.is_over 
  puts "Player 2: you have #{game.guess_count} guesses left."
  puts "Guess the word or a letter of the word."
  game.guess = gets.chomp.downcase
  game.guess_list
  if game.guess.length == 1
    puts game.guess_letter
    game.count
  elsif game.guess.length == game.secret_word.length
    puts game.guess_word
    game.count
  else puts "incorrect input"
  end 
    puts game.guess_letter_win
    puts game.word_str
end 


