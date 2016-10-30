// // So I had to google release 0. Spent a few hours on it but couldn't figure it out. Found .sort using a function expression on stack overflow. How this works seems complicated but from what I understand, .sort takes pairs in the array and applies the compare function, here b.length - a.length, which will return -1, 0, or 1. If its negative it knows that "a" should go after "b", if its 0 they are equal and aren't moved, and if its a 1, it know to put "b" after "a".  It assigns a value to every pair, which I guess would be every combination of two strings in the array in my case.  

// var new_array = ["hello", "hi", "hola", "goodbye"];

function longest_word(array) {
  var longword = array
  array.sort(function(a, b) { 
    return b.length - a.length; 
  });
    return word_result = longword[0];
}

// longest_word(new_array);


// /////////////////////////


var person1 = {name: "Jeff", 'age': 30};
var person2 = {name: "Jeff", 'age': 29};
var person3 = {name: "Dave", 'age': 58};
var person4 = {name: "Dave", 'age': 30};

// create a function that takes two key / value objects
function compare(object_1, object_2) {
  // if the first value of the first object is equal to the first value of the second object or if the second value of the first object is equal to the second value of the second object, then return true 
  if (Object.values(object_1)[0] == Object.values(object_2)[0] || Object.values(object_1)[1] == Object.values(object_2)[1]) {
    return true;
  // else return false 
  } else {
    return false;
  }
} 

compare(person1, person4);
compare(person3, person2);


//////////////////////////


// create a function that takes an integer
function array_builder(int) {
  // create a global empty array
  var random_word_array = []
  // create an alphabet variable
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  // create a for loop that will make a random word the # of times in the function parameter
  for( var x = 0; x < int; x++) {
    // create a blank string to push random letters in 
    var random_word = "";
    // create a for loop that makes random letters 10 times and pushes them into the empty string
    for( var i = 0; i < Math.ceil(Math.random() * 10); i++ ) {
        random_word += alphabet[Math.ceil(Math.random() * 25)];
    }
    // then push the new word into the empty array
    random_word_array.push(random_word);
  }
  // return the word array
  return final_array = random_word_array;

}


array_builder(7);

console.log(final_array);

longest_word(final_array)

console.log(word_result)

















