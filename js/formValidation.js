/**
 * Created by Maen Terawasi on 28/09/2015.
 */

//Contact form validations
function validateContactForm() {
    //name vars
    var contactNameTxtBox = document.forms["contactForm"]["contactName"].value;
    var contactNameField = document.getElementById("nameInput");
    var contactNameHiddenSpan = document.getElementById("requiredNameSpan");

    //email vars
    var contactEmailTxtBox = document.forms["contactForm"]["contactEmail"].value;
    var contactEmailField = document.getElementById("emailInput");
    var contactEmailHiddenSpan = document.getElementById("requiredEmailSpan");
    //email regex
    var atpos = contactEmailTxtBox.indexOf("@");
    var dotpos = contactEmailTxtBox.lastIndexOf(".");

    if (contactNameTxtBox == null || contactNameTxtBox == "") {
        contactNameField.className = "inputRequired";
        contactNameField.focus();
        contactNameHiddenSpan.style.visibility = "visible";
        return false;
    }

    if(atpos<1 || dotpos<atpos+2 || dotpos+2>=contactEmailTxtBox.length) {
        //alert("email required");
        contactEmailField.className = "inputRequired";
        contactEmailField.focus();
        contactEmailHiddenSpan.innerHTML = "Please provide a valid email address";
        contactEmailHiddenSpan.style.visibility = "visible";
        return false;
    }

    //comment area vars
    var contactCommentTxtBox = document.forms["contactForm"]["contactCommentInput"].value;
    var contactCommentField = document.getElementById("contactCommentField");
    var contactCommentHiddenSpan = document.getElementById("requiredCommentSpan");

    if(contactCommentTxtBox == null || contactCommentTxtBox == "") {
        contactCommentField.className = "inputCommentRequired";
        contactCommentField.focus();
        contactCommentHiddenSpan.innerHTML = "Tell us your what you need.";
        contactCommentHiddenSpan.style.visibility = "visible";
        return false;
    }
}
