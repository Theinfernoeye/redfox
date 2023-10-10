document.addEventListener("DOMContentLoaded", function() {
function validateEmail(){
    const emailInput = document.getElementById("email");
    const usertype = document.getElementById("userType")
    const enteredemail = emailInput.value;

    const emailPattern = /^[a-zA-Z0-9._-]+@(gmail\.com|redkox\.bw)$/;

    if(!emailPattern.test(enteredemail)){
        alert("Invalid email format.");
        return;
    }else if (enteredemail.endsWith("@gmail.com")){
        usertype.value = "subscriber";
    }else { usertype.value = "employee";}

    const emailForm = document.getElementById("emailForm");
    const passForm = document.getElementById("passwordForm");

    emailForm.style.display = "none";
    passForm.style.display = "block";

    emailForm.submit();
    console.log("validateEmail() function called.");
}
});