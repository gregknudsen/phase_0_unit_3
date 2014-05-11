/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.


var average = function(array) {
  var sum = 0;
  var i = 0;
  for(i = 0; i < array.length; i++) {
    sum += array[i];
  }
  var average = sum / array.length;
  return average;
};

//gradebook = {}

var gradebook = {
  Joseph:     {testScores:scores[0]},
  Susan:      {testScores:scores[1]},
  William:    {testScores:scores[2]},
  Elizabeth:  {testScores:scores[3]},

  // addScore: function(name, grade) {
  //   gradebook[name].testScores.push(grade);
  // }.

  // getAverage: function(name){
  //   return average(gradebook[name].testScores);
  // }
//}

// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores:scores[1]},
//   William: {testScores:scores[2]},
//   Elizabeth: {testScores:scores[3]},

  addScore: function(name,grade){
    gradebook[name].testScores.push(grade);
  },

  getAverage: function(name){
    return average(gradebook[name].testScores);
  }
};








// __________________________________________
// Refactored Solution

gradebook = {};

for(var i = 0; i < students; i++){
  gradebook.students[i] = {testScores.scores[i]};
};






// __________________________________________
// Reflect

/*

I knew JS was going to be rusty, and I was right. I'll say it right now...I used one of my awesome cohort mate's code as a guide for this one. 
Where to begin. Creating the object was easy - and I'm talking aboutline 40. Everything after that was sort of a 'have to look this up again' sort of thing.
Finding the average clicked for me pretty quickly. Creating functions is still a bit of a crapshoot for me. I never know when to put 'var' in front of the 
function. Also, just the general syntax is confusing. I also knew as I was adding each student to the object, there was a better way to do it that adding
one at a time. So, again with a little help, I came up with lines 84-86. It'll come back. Looking forward to the rest of the challenges for JS to kick my butt.

*/









// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)