// U3.W8-9: 


// I worked on this challenge by myself.

// 2. Pseudocode
/*
	
create object 'groceries' with a few grocery items also as objects,
	where the key is the item, and the value is the amount needed
write function 'addToList' that adds items to the grocery list
write function 'remove' that takes away item
write function 'display' that displays list
	
*/


// 3. Initial Solution

var groceries = {
	apple: 	3,
	orange: 2,
	banana: 5
};

var addToList = function(item, amount) {
	groceries[item] = amount;
};

var remove = function(item) {
	groceries.delete(item);
};

var display = funtion() {
	for(var i = 0; i < groceries.length; i++){
		console.log("You have " + groceries[amount] +  groceries[item] + "left to buy!")
	}
}


// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

var assert = function(object){
	
}




// 5. Reflection 

/*

Clearly, there's still some work to do here. JS is by far my weakest skill at this point. I was able to work with Danielle on the next
exercise, and that was very helpful. I would have loved to have paired more on these challenges, but my time was just so limited. I also
didn't get JSFiddle to work either. I know I'll be diving into JS during DBC, and I will do my best to review when I know that's coming.

*/