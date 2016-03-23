
var puppy = {
  full: 15,
  bathroom: 15,
  happiness: 100,
  intelligence: 100,
  health: 100,
}

var interval;

function lifetime(){
  puppy.full = 15;
  puppy.bathroom =15;
  puppy.happiness = 100;
  puppy.intelligence = 100;
  puppy.health = 100;
  overTime();
}

function overTime(){
  interval = setInterval(decreaseProps, 1000);
}

function decreaseProps(){
  instructions();
  saySomething();

  puppy.full -= 1;
  var elem = document.getElementById("full");
  elem.style.width = ((puppy.full).toString()) + "px";

  puppy.bathroom -=1;
  var elem = document.getElementById("bathroom");
  elem.style.width = ((puppy.bathroom).toString()) + "px";

  puppy.happiness -=1;
  var elem = document.getElementById("happiness");
  elem.style.width = ((puppy.happiness).toString()) + "px";

  puppy.intelligence -=1;
  var elem = document.getElementById("intelligence");
  elem.style.width = ((puppy.intelligence).toString()) + "px";

  puppy.health -= 0.5;
  var elem = document.getElementById("health");
  elem.style.width = ((puppy.health).toString()) + "px";


  if (puppy.happiness <= 0){
    runAway();
  }
  else if (puppy.health <= 0){
    death();
  }
  else if (puppy.full <= 0 || puppy.bathroom <= 0){
    puppy.happiness -= 5;
    puppy.health -= 8;
  }
  else if (puppy.intelligence <= 0){
    var message = document.getElementById('message');
  message.textContent = "Your puppy is too dumb to listen to you anymore.";
  }

}

function pause(){
  clearInterval(interval)
}

function instructions(){
  var message = document.getElementById('message');
  var feedback = document.getElementById('feedback');
  message.textContent = "Take care of puppy. It loves you. Puppy will use this area to tell you what it needs.";
  feedback.textContent = "But beware, puppy can be a little salty sometimes.";
}

function runAway(){
  var message = document.getElementById('message');
  message.textContent = "Your puppy ran away! Game over.";
  pause();
}

function death(){
  var message = document.getElementById('message');
  message.textContent = "Your puppy's health was too low! It died :(";
  pause();
}


function feed(food){
  puppy.full +=5;
  if (food === "treats"){
    puppy.happiness +=5;
    puppy.health -= 2;
  }
}

function walk(){
  puppy.bathroom +=5;
  puppy.happiness +=5;
}

function play(){
  puppy.happiness +=5;
}

function train(){
  puppy.intelligence +=5;
}

function yell(){
  puppy.happiness -=3;
  if (puppy.happiness <=0){
    runAway();
  }
}

function vet(){
  puppy.happiness -=5;
  puppy.health += 5;
}

var otherPuppy = ["good mood", "bad mood"];

function socialize(){
  var message = document.getElementById('socialize');
  var feedback = document.getElementById('socialize-feedback');
  message.textContent = "So you want to play with neighborhood dog Gus? Beware, sometimes he's not in the best of moods..."
  var index = (Math.round(Math.random()));
  var puppyMood = otherPuppy[index];

  if (puppyMood === "bad mood"){
    puppy.happiness -=3;
    puppy.health -=3;
    feedback.textContent = "Gus was in the worst mood ever! He attacked me!!";
    feedback.style.color = "#ff3399";
  }

  else{
    puppy.happiness +=7;
    feedback.textContent = "Gus was in such a good mood. We played all day.";
    feedback.style.color = "#ff3399";
  }

}

function saySomething(){
  var message = document.getElementById('sub-feedback');

  if (puppy.full <= 10){
    message.textContent = "Feed me, you fool!";
    message.style.color = "#ff3399";
  }

  else if (puppy.bathroom <=10){
    message.textContent = "Walk me, or I will pee in your favorite shoe."
    message.style.color = "#ff3399";
  }

  else if (puppy.happiness <=10){
    message.textContent = "I'm going to run away soon...better try and stop me...";
    message.style.color = "#ff3399";
  }

  else{
    message.textContent = "I love you, human.";
    message.style.color = "#339966";
  }
}


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//