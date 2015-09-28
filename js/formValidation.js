/**
 * Created by Maen Terawasi on 28/09/2015.
 */

//Contact form validations
function validateContactForm() {

    var contactNameTxtBox = document.forms["contactForm"]["contactName"].value;
    var contactNameField = document.getElementById("nameInput");
    var contactNameHiddenSpan = document.getElementById("requiredNameSpan");

    var y = document.forms["contactForm"]["contactEmail"].value;

    if (contactNameTxtBox == null || contactNameTxtBox == "") {
        contactNameField.className = "inputRequired";
        contactNameField.focus();
        contactNameHiddenSpan.style.visibility = "visible";
        return false;
    }

    else if(y == null || y == "") {
        alert("email required");
        return false;
    }
}
