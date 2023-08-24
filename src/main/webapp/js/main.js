function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return undefined;
}

function requiredFunctionForContatti() {
    let nome = document.getElementById("firstname");
    let cognome = document.getElementById("lastname");
    let email = document.getElementById("email");
    let motivo = document.getElementById("reason");
    let valido = true;
    if (nome.value === "") {
        alert("Il campo nome non può essere vuoto");
        valido = false;
    }
    if (cognome.value === "") {
        alert("Il campo cognome non può essere vuoto");
        valido = false;
    }
    if (email.value === "") {
        alert("Il campo email  non può essere vuoto");
        valido = false;
    }
    if (motivo.value === "") {
        alert("Il campo motivazione di contatto non può essere vuoto");
        valido = false;
    }
    return valido;
}

function validateFormForIscriviti() {
    let valido = true;
    const regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    const initialsExpression = /[amf]/i
    const uppercaseExpression = /[A-Z]/
    const numberExpression = /[0-9]/
    const specialsExpression = /[?!$]/
    //validazione password
    let password = document.forms["signup-form"]["password"].value;
    let password2 = document.forms["signup-form"]["repeat-password"].value;
    let errormessage = password + " " + password2 + "\n";

    if (password !== password2) {
        alert("Le due password non coincidono!");
        return false;
    }

    if (password.length != 8) {
        errormessage += "La password deve essere lunga 8 caratteri.\n";
        valido = false;
    }

    if (!initialsExpression.test(password)) {
        errormessage += "La password deve contenere almeno una delle seguenti lettere: M, F, A.\n";
        valido = false;
    }

    if (!numberExpression.test(password)) {
        errormessage += "La password deve contenere almeno un numero.\n";
        valido = false;
    }

    if (!uppercaseExpression.test(password)) {
        errormessage += "La password deve contenere almeno un carattere maiuscolo.\n";
        valido = false;
    }

    if (!specialsExpression.test(password)) {
        errormessage += "La password deve contenere almeno un carattere tra $, ! e ?. \n";
        valido = false;
    }

    if (!valido) {
        alert(errormessage);
    }

    //verifica campi non vuoti
    let nome = document.getElementById("firstname");
    let cognome = document.getElementById("lastname");
    let email = document.getElementById("email");
    let username = document.getElementById("username");
    let data = document.getElementById("birthday").value;
    let telefono = document.getElementById("phone");

    if (nome.value === "") {
        alert("Il campo nome non può essere vuoto");
        valido = false;
    }
    if (cognome.value === "") {
        alert("Il campo cognome non può essere vuoto");
        valido = false;
    }
    if (email.value === "") {
        alert("Il campo email  non può essere vuoto");
        valido = false;
    } else if(!ValidateEmailSignup()){
        alert("Formato email non valido")
        valido = false;
    }
    if (telefono.value === "") {
        alert("Il campo telefono non può essere vuoto");
        valido = false;
    }
    if (username.value === "") {
        alert("Il campo username non può essere vuoto");
        valido = false;
    }
    if (data.value === "") {
        alert("Il campo data di nascita non può essere vuoto");
        valido = false;
    }
    //verifico che l'utente sia maggiorenne
    let oggi = new Date();
    let dataNascita = document.getElementById("birthday").value;
    let dataUser = new Date(dataNascita);
    let anni = oggi.getFullYear() - dataUser.getFullYear();
    let mesi = oggi.getMonth() - dataUser.getMonth();
    let giorni = oggi.getDate() - dataUser.getDate();
    if (anni < 18 || (anni === 18 && mesi < 0) || (anni === 18 && mesi < 0 && giorni < 0)) {
        alert("Utente non maggiorenne");
        valido = false;
    }
    return valido;
}

function ValidateEmailContacts() {
    let email = document.forms["contacts"]["email"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (mailformat.test(email)) {
        return true;
    } else {
        alert("Formato email non valido")
        return false;
    }
}


function ValidateEmailSignup() {
    let email = document.forms["signup-form"]["email"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (mailformat.test(email)) {
        return true;
    } else {
        return false;
    }
}

function requiredFunctionForDona() {
    let amount = document.getElementById("amount");
    let valido = true;
    if (amount.value === "") {
        alert("Il campo nome non può essere vuoto");
        valido = false;
    }
    return valido;
}
function requiredFunctionForLogin() {
    let username = document.getElementById("username");
    let password = document.getElementById("password");

    let valido = true;
    if (username.value === "") {
        alert("Il campo nome non può essere vuoto");
        valido = false;
    }
    if (password.value === "") {
        alert("Il campo nome non può essere vuoto");
        valido = false;
    }
    return valido;
}