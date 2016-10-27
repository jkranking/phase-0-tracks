
// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.



// create a function that takes a parameter of a string and reverses it 

function reverse(word) {

// set an empty string to a variable 

var string = "";

// in a for statement set a counter to -1 to act as the index for the string and it will continue to run backwards until it equals the length of the string

// next set that index on the string and plus that into the empty string

for (var i = word.length-1; i != -1; i-=1) { 
  string = string + word[i];
}

// print the string to the console 

console.log(string);

}

reverse("hello")
