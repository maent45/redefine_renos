/**
 * Created by Maen Terawasi on 28/09/2015.
 */

//Contact form validations
function validateContactForm() {

    var contactNameTxtBox = document.forms["contactForm"]["contactName"].value;
    var contactNameField = document.getElementById("nameInput");
    var contactNameHiddenSpan = document.getElementById("requiredNameSpan");

    var contactEmailTxtBox = document.forms["contactForm"]["contactEmail"].value;
    var contactEmailField = document.getElementById("emailInput");
    var contactEmailHiddenSpan = document.getElementById("requiredEmailSpan");

    if (contactNameTxtBox == null || contactNameTxtBox == "") {
        contactNameField.className = "inputRequired";
        contactNameField.focus();
        contactNameHiddenSpan.style.visibility = "visible";
        return false;
    }

    else if(contactEmailTxtBox == null || contactEmailTxtBox == "" || contactEmailTxtBox ) {
        //alert("email required");
        contactEmailField.className = "inputRequired";
        contactEmailField.focus();
        contactEmailHiddenSpan.style.visibility = "visible";
        return false;
    }
}
