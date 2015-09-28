/**
 * Created by Maen Terawasi on 28/09/2015.
 */

//Contact form validations
function validateContactForm() {

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

    else if(atpos<1 || dotpos<atpos+2 || dotpos+2>=contactEmailTxtBox.length) {
        //alert("email required");
        contactEmailField.className = "inputRequired";
        contactEmailField.focus();
        contactEmailHiddenSpan.style.visibility = "visible";
        return false;
    }
}
