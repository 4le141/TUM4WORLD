<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione"/>
</jsp:include>
<style> /*questa cosa è brutta mi rendo conto ma serve a cancellare la checkbox di default solo in questa pagina così posso usare la mia versione più figa (se crea problemi ne parliamo e cerco di risolvere sorry)*/
    .container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
    height: 0;
    width: 0;
}</style>
<div class="content">
    <section class="attivita">
        <div class="row">
            <h1> ATTIVIT&#192</h1>
        </div>
        <div class="row">
            <div class="column" style="background-color:lightgray;" >
                <div><img id="cane" class="animazione" src="${pageContext.request.contextPath}/images/adottaCane.jpg"
                          alt="Prenditi cura dei cani" width="100%"></div>
                <h2>Prenditi cura dei cani</h2>
            </div>
            <div class="column" style="background-color:lightgray;" >
                <div><img id="gatto" class="animazione" src="${pageContext.request.contextPath}/images/gattoAlessia.jpg"
                          alt="Prenditi cura dei gatti" width="100%"></div>
                <h2>Prenditi cura dei gatti</h2>
            </div>
            <div class="column" style="background-color:lightgray;" >
                <div><img id="scuola" class="animazione" src="${pageContext.request.contextPath}/images/scuola2.jpg"
                          alt="Visita le scuole" width="100%"></div>
                <h2>Visita le scuole</h2>
            </div>
        </div>
        <div class="row">
            <h2> Iscriviti alle nostre attivit&#224 à </h2>
        </div>
        <form action="<% out.print(response.encodeURL("")); %>" method="post">
        <label class="container">Prenditi cura dei cani
            <input type="checkbox" id="iscrizioneAttivita1" name="attivita1"${requestScope.activities.activity1 ? 'checked' : ''} >
            <span class="checkmark"></span>
        </label>
        <label class="container">Prenditi cura dei gatti
            <input type="checkbox" id="iscrizioneAttivita2" name="attivita2" ${requestScope.activities.activity2 ? 'checked' : ''}>
            <span class="checkmark"></span>
        </label>
        <label class="container">Visita le scuole
            <input type="checkbox" id="iscrizioneAttivita3" name="attivita3"${requestScope.activities.activity3 ? 'checked' : ''}>
            <span class="checkmark"></span>
        </label>
        <label class="container">
            <button type="submit">Conferma scelte</button>
        </label>
        </form>
        <div class="row" >
            <p style="visibility: ${requestScope.success ? 'visible' : 'hidden' }">Cambiamenti aggiornati</p>
        </div>

        <%-- TODO sistemare il bottone brutto--%>
            <%--
        <div class="row">
            <form action="" method="post">
                <input type="checkbox" id="iscrizioneAttivita1"
                       name="attivita1"${requestScope.activities.activity1 ? 'checked' : ''} >
                <p>Prenditi cura dei cani</p> <br>
                <input type="checkbox" id="iscrizioneAttivita2"
                       name="attivita2" ${requestScope.activities.activity2 ? 'checked' : ''}>
                <p>Prenditi cura dei gatti</p> <br>
                <input type="checkbox" id="iscrizioneAttivita3"
                       name="attivita3"${requestScope.activities.activity3 ? 'checked' : ''}>
                <p>Visita le scuole</p> <br>
                <p style="visibility: ${requestScope.success ? 'visible' : 'hidden' }">Iscrizione confermata!</p>

                <input class="buttons" type="submit" value="Iscriviti">
            </form>
        </div>--%>
    </section>
</div>
<script>

    let immagineCane = document.getElementById('cane')
    let immagineGatto = document.getElementById('gatto')
    let immagineScuola = document.getElementById('scuola')
    immagineCane.addEventListener('click', function () {
        document.getElementById("iscrizioneAttivita1").checked = !document.getElementById("iscrizioneAttivita1").checked;
    });
    immagineGatto.addEventListener('click', function () {
        document.getElementById("iscrizioneAttivita2").checked = !document.getElementById("iscrizioneAttivita2").checked;
    });
    immagineScuola.addEventListener('click', function () {
        document.getElementById("iscrizioneAttivita3").checked = !document.getElementById("iscrizioneAttivita3").checked;
    });

</script>
<jsp:include page="/WEB-INF/views/footer.jsp"/>