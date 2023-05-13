
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Contatti" />
</jsp:include>

<div class="info">
    <p>Ci puoi trovare in: Via dei ciliegi 45</p>
    <p> Ci puoi chiamare al: 335-789 6754</p>
</div>
<div class="form">
    <form action="tum4world@nessunonoluogonoesiste.com" method="GET">
        <label for="fname">Inserisci il tuo nome:</label>
        <input type="text" id="fname" name="fname"><br><br>
        <label for="lname">Inserisci il cognome:</label>
        <input type="text" id="lname" name="lname"><br><br>
        <label for="email"> Inserisci la tua email:</label>
        <input type="email" id="email" name="email"><br><br>
        <p>Motivo di contatto: </p><br>
        <input type="checkbox" id="reason1" name="reason1" value="Donazione">
        <label for="reason1">Vorrei fare una donazione</label><br>
        <input type="checkbox" id="reason2" name="reason2" value="Adozione">
        <label for="reason2"> Vorrei fare un'adozione</label><br>
        <input type="checkbox" id="reason3" name="reason3" value="Volontario">
        <label for="reason3"> Vorrei rendermi disponibile come volontario</label><br>
        <input type="checkbox" id="reason4" name="reason4" value="Altro">
        <label for="reason4"> Altro</label><br>
        <label for="dettagli">Esplicita i dettagli del motivo di contatto (opzionale):</label><br>
        <textarea id="dettagli" name="dettagli" rows="10" cols="50" maxlength="250"></textarea><br>
        <div class="buttons">
            <input type="reset" id="reset" name="Reset" value="Reset">
            <a href="${pageContext.request.contextPath}/invioconfermato">
                <input type="submit" value="Submit"/>
            </a>
        </div>
    </form>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />