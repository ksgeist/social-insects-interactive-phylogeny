/*
  Final Project JavaScript
  Filename: script.js
  
  Author: Lydia Wessling, Katherine Geist
  Date 5/7/20
*/

/************ REPOSITORY FORM ************/ 

var nameField = document.querySelector("#nameinput");
var emailContent = document.querySelector("#emailinput");
var beeWasp = document.querySelector("#beewasp");
var speciesContent = document.querySelector("#species");
var doIdentifier = document.querySelector("#digitalobjecctidentifier");


var fromValue = document.querySelector(".firstandlastname");
var emailValue = document.querySelector(".emailfrom");
var beeWaspChoice = document.querySelector(".beewaspchoice");
var speciesValue = document.querySelector(".specieschoice");
var doiPublicationValue = document.querySelector(".doitopublication");

var form = document.querySelector(".repositoryform");
var dataPreview = document.querySelector(".data-preview");
var submitButton = document.querySelector(".submitbutton");


/* add text to preview section */
function completePreview() {
    fromValue.textContent = nameField.value;
    emailValue.textContent = emailContent.value;
    beeWaspChoice.textContent = beeWasp.value;
    speciesValue.textContent = speciesContent.value;
    doiPublicationValue.textContent = doIdentifier.value;
}

form.addEventListener("change", completePreview, "false");


/************ CONTACT FORM ************/ 



// Eventually work on getting the logo to disappear on click so as to have flying wasps

// onclick = "this.style.display='none'";
// document.getElementById('logo').onclick = function(event) {
//     document.getElementById('logo').className = "hidden";
// }