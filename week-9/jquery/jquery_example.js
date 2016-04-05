// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM



//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body');
logo = $("img");


//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('body > h1').html(function() {
 $(this).css('color', 'red')
 $(this).css('border', 'solid', '3px')
 $(this).css('opacity', '0.5')
});

$('div > h1').html(function() {
 $(this).replaceWith('<h1>Fiery Skippers 2016</h1>')
});
//RELEASE 5: Experiment on your own

$("img").on("mouseover", function(e){
  e.preventDefault();
  $(this).attr("src", "http://www.carolinanature.com/butterflies/fieryskipper80866.jpg")
  $(this).animate({width: "250px"});
  $(this).css({border: '0 solid black'}).animate({borderWidth: 4});
});

$("img").on("mouseout", function(e){
  e.preventDefault();
  $(this).attr("src", "dbc_logo.png")
  $(this).animate({width: "500px"});
})

// Release 6:
// View above



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
// What is jQuery?
// jQuery is a JavaScript library. It makes it a lot easier to call on certain elements and manipulate them using actions.

// What does jQuery do for you?
// JQuery allows you to use JavaScript efficiently. You can call predefined actions on your elements without having to perfectly specify each funtion.

// What did you learn about the DOM while working on this challenge?
// I learned that the DOM is actually pretty confusing! We had trouble using :image, and instead had to use "img". It was really strange figuring out how jQuery called on elements and how it interacted with the DOM.