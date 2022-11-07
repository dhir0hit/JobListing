let EmailGroup = document.getElementById("_email_group");
let PasswordGroup = document.getElementById("_password_group");
let FullNameGroup = document.getElementById("_fullName_group");

let EmailInput = document.getElementById("_email_group").children[0].children[1];
let PasswordInput = document.getElementById("_password_group").children[0].children[1];
let FullNameInput = document.getElementById("_fullName_group").children[0].children[1];

let isPasswordGroupHidden = true;
let isFullNameGroupHidden = true;

let SubmitButton = document.getElementById("_SubmitButton");

let EmailFormDetail = document.getElementsByClassName("_form_detail")[0];
let PasswordFormDetail = document.getElementsByClassName("_form_detail")[1];
let FullNameFormDetail = document.getElementsByClassName("_form_detail")[2];

SubmitButton.onclick = (event) => {
    if (EmailInput.value !== "") {
        if(!isPasswordGroupHidden && !isFullNameGroupHidden) {
            SubmitButton.type = "submit";
        }

        if (isPasswordGroupHidden) {
            PasswordGroup.style.display = "block";
            isPasswordGroupHidden = false;
        }
        else if (PasswordInput.value !== "") {
            if (isFullNameGroupHidden) {
                FullNameGroup.style.display = "block";
                isFullNameGroupHidden = false;
            }
        }
    }

}


/*Had to use both key up and down because of delay in input check in keydown*/
EmailInput.onkeyup = EmailFormValidation;
EmailInput.onkeydown = EmailFormValidation;

PasswordInput.onkeyup = PasswordFormValidation;
PasswordInput.onkeydown = PasswordFormValidation;

FullNameInput.onkeyup = FullNameFormValidation;
FullNameInput.onkeydown = FullNameFormValidation;


function EmailFormValidation() {
    if(EmailInput.value !== "") {
        EmailFormDetail.children[0].innerHTML = "check";
        EmailFormDetail.children[1].innerHTML = "valid";

        EmailFormDetail.classList.add("bg-success");
        EmailFormDetail.classList.remove("bg-danger");
    } else {
        console.log("lol")
        EmailFormDetail.children[0].innerHTML = "close";
        EmailFormDetail.children[1].innerHTML = "Not Filled";

        EmailFormDetail.classList.add("bg-danger");
        EmailFormDetail.classList.remove("bg-success");
    }
}


function PasswordFormValidation() {
    if(EmailInput.value !== "") {
        PasswordFormDetail.children[0].innerHTML = "check";
        PasswordFormDetail.children[1].innerHTML = "valid";

        PasswordFormDetail.classList.add("bg-success");
        PasswordFormDetail.classList.remove("bg-danger");
    } else {
        PasswordFormDetail.children[0].innerHTML = "close";
        PasswordFormDetail.children[1].innerHTML = "Not Filled";

        PasswordFormDetail.classList.add("bg-danger");
        PasswordFormDetail.classList.remove("bg-success");
    }
}

function FullNameFormValidation() {
    if(FullNameInput.value !== "") {
        FullNameFormDetail.style.display = "block";
    } else {
        FullNameFormDetail.style.display = "none";
    }
}


window.onload = () => {
    PasswordGroup.style.display = "none";
    FullNameGroup.style.display = "none";

    SubmitButton.type = "button";

    EmailFormValidation();
    PasswordFormValidation();
    FullNameFormValidation();
}