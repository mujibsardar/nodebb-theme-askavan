/*
	Hey there!

	This is the client file for your theme. If you need to do any client-side work in javascript,
	this is where it needs to go.

	You can listen for page changes by writing something like this:

	  $(window).on('action:ajaxify.end', function(data) {
		var	url = data.url;
		console.log('I am now at: ' + url);
	  });
*/

$(document).ready(function() {
	// Your code goes here
  $(window).on('action:ajaxify.end', function(data) {
    var	url = data.url;
    console.log(' ');
    console.log(' ');
    console.log(' ');
    // console.log('data: '
    iterate(data, '')
    console.log(' ');
    console.log(' ');
    console.log(' ');
    console.log(' ');
  });

  $('#like_question_button').on('click', votedUp());



  // Trigger a hook here?
});

function votedUp(){
  console.log('voted up');
}

function iterate(obj, stack) {
        for (var property in obj) {
            if (obj.hasOwnProperty(property)) {
                if (typeof obj[property] == "object") {
                    iterate(obj[property], stack + '.' + property);
                } else {
                    console.log(property + "   " + obj[property]);
                    // $('#output').append($("<div/>").text(stack + '.' + property))
                }
            }
        }
    }
