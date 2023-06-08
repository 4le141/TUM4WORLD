<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscriviti"/>
</jsp:include>

<script>
    const regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    const initialsExpression = /[amf]/i
    const uppercaseExpression = /[A-Z]/
    const numberExpression = /[0-9]/
    const specialsExpression = /[?!$]/

    function validateForm() {
        let valido = true;

//validazione password
        //let password = document.forms["signup-form"]["password"].value;
        //let password2 = document.forms["signup-form"]["repeat-password"].value;
        //let errormessage = password + " " + password2 + "\n";

        if(password != password2){
            alert("Le due password non coincidono!");
            return false;
        }

        if(password.length != 8){
            errormessage+= "La password deve essere lunga 8 caratteri.\n";
            valido=false;
        }

        if (!initialsExpression.test(password)) {
            errormessage+= "La password deve contenere almeno una delle seguenti lettere: M, F, A.\n";
            valido=false;
        }

        if (!numberExpression.test(password)) {
            errormessage+= "La password deve contenere almeno un numero.\n";
            valido=false;
        }

        if (!uppercaseExpression.test(password)) {
            errormessage+= "La password deve contenere almeno un carattere maiuscolo.\n";
            valido=false;
        }

        if (!specialsExpression.test(password)) {
            errormessage+= "La password deve contenere almeno un carattere tra $, ! e ?. \n";
            valido=false;
        }

        if(!valido){
            alert(errormessage);
        }

    //verifica campi non vuoti
        let nome=document.getElementById("firstname");
        let cognome=document.getElementById("lastname");
        let email=document.getElementById("email");
        let username=document.getElementById("username");
        let data=document.getElementById("birthday").value;
        let telefono=document.getElementById("phone");

        if (nome.value===""){
            alert("Il campo nome non può essere vuoto");
            valido=false;
        }
            if (cognome.value===""){
            alert("Il campo cognome non può essere vuoto");
            valido=false;
        }
        if (email.value===""){
            alert("Il campo email  non può essere vuoto");
            valido=false;
        }
        if (telefono.value===""){
            alert("Il campo telefono non può essere vuoto");
            valido=false;
        }
        if (username.value===""){
            alert("Il campo username non può essere vuoto");
            valido=false;
        }
        if (data.value==="") {
            alert("Il campo data di nascita non può essere vuoto");
            valido = false;
        }
        //verifico che l'utente sia maggiorenne
        let oggi=new Date();
        let dataNascita=document.getElementById("birthday").value;
        let dataUser=new Date(dataNascita);
        let anni=oggi.getFullYear()-dataUser.getFullYear();
        let mesi=oggi.getMonth()-dataUser.getMonth();
        let giorni=oggi.getDate()-dataUser.getDate();
        if (anni<18 || (anni===18 && mesi<0) ||(anni===18 && mesi<0 && giorni<0)){
            alert("Utente non maggiorenne");
            valido=false;
        }
        return valido;
    }
</script>

<div class="signup-content backgroundImage">
    <div class="row">
        <h1>Iscriviti</h1>
    </div>
    <div class="signupwrapper">
        <form class="signup-form" onsubmit="return validateForm()" name="signup-form" method="post"
              action="./iscriviti">

            <label for="firstname" class="form-label">Nome</label>
            <div class="fullnamefield">
                <input type="text" name="firstname" id="firstname" placeholder="Nome" >
                <input type="text" name="lastname" id="lastname" placeholder="Cognome" >
            </div>

            <label for="username" class="form-label">Nome Utente</label>
            <div class="inputfield">
                <input type="text" name="username" id="username" >
            </div>

            <label for="birthday" class="form-label">Data di Nascita</label>
            <div class="inputfield">
                <input type="date" name="birthday" id="birthday" >
            </div>

            <label for="email" class="form-label">Email</label>
            <div class="inputfield">
                <input type="email" name="email" id="email" >
            </div>

            <label class="form-label">Iscriviti Come:</label>
            <div class="usermode">
                <input type="radio" name="usermode" id="simpatizzante" value="simpatizzante" checked>
                <label for="simpatizzante">
                    Simpatizzante
                </label>
                <input type="radio" name="usermode" id="aderente" value="aderente">
                <label for="aderente">
                    Aderente
                </label>
            </div>

            <label for="phone" class="form-label">Numero di Telefono</label>
            <div class="inputfield">
                <input type="text" name="phone" id="phone" >
            </div>

            <label for="password" class="form-label">Password</label>
            <div class="inputfield">
                <input type="password" name="password" id="password" >
            </div>
            <div class="form-hint">La password deve essere lunga 8 caratteri e deve contenere almeno:<br>
                - un carattere numerico<br>
                - un carattere maiuscolo<br>
                - una delle seguenti lettere: M, F, A<br>
                - un carattere tra $, ! e ?
            </div>
            <br>
            <label for="repeat-password" class="form-label">Ripeti Password</label>
            <div class="inputfield">
                <input type="password" name="repeat-password" id="repeat-password" >
            </div>

            <div class="form-hint" style="color:red; visibility: ${error ? 'visible' : 'hidden'};">24: Nome utente già esistente</div>

            <div class="buttonrow">
                <input class="signupsubmit" type="submit" value="Iscriviti">
                <input class="signupreset" type="reset" value="Reset">
            </div>
        </form>
    </div>


</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>