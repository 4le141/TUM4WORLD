<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Contatti"/>
</jsp:include>
<style>
    .content{
        flex: 1 0 auto;
        background-image: url('images/pet.jpg');
        background-repeat: repeat;
        background-attachment: scroll;
        background-size: cover;
    }
</style>
<div class="content">
    <section class="contatti">
    <div class="row">
        <h1> CONTATTI</h1>
    </div>
    <div class="info" style="text-align: center">
        <p>Ci puoi trovare in: Via dei ciliegi 45</p>
        <p> Ci puoi chiamare al: 335-789 6754</p>
    </div>
    <div class="form">
        <form class="contacts" action="./sendmailservlet" method="post">
            <%--@declare id="motivazione"--%><label for="fname">Inserisci il tuo nome:</label>
            <input type="text" id="fname" name="fname" required><br><br>
            <label for="lname">Inserisci il cognome:</label>
            <input type="text" id="lname" name="lname" required><br><br>
            <label for="email"> Inserisci la tua email:</label>
            <input type="email" id="email" name="email" required><br><br>
            <label for="motivazione">Motivo di contatto: </label>
            <select name="reason" id="reason" required>
                <option value="donazione">Vorrei fare una donazione</option>
                <option value="adozione">Vorrei adottare un amico a 4 zampe</option>
                <option value="volontario">Vorrei rendermi disponibile come volontario</option>
                <option value="altro">Altro</option>
            </select><br><br>
            <label for="dettagli">Esplicita i dettagli del motivo di contatto (opzionale):</label><br>
            <textarea id="dettagli" name="dettagli" rows="10" cols="50" maxlength="250"></textarea><br>
            <div class="buttons">
                <input type="reset" id="reset" name="Reset" value="Reset">
                <input type="submit" value="Invia" class="">
                </a>
            </div>
        </form>
    </div>
    </section>
</div>
<script>
    function ValidateEmail(inputText) {
        let email = document.forms["contacts"]["email"].value;
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (mailformat.test(email)) {
            return true;
        } else {
            alert("Formato email non valido")
            return false;
        }
    }
</script>


<jsp:include page="/WEB-INF/views/footer.jsp"/>