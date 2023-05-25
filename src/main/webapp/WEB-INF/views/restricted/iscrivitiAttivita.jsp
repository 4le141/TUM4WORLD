<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione attività"/>
</jsp:include>
<style>
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
            <div class="column" style="background-color:lightgray;">
                <div><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png"
                          alt="Prenditi cura dei cani" width="100%"></div>
                <h2>Prenditi cura dei cani</h2>
            </div>
            <div class="column" style="background-color:lightgray;">
                <div><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png"
                          alt="Prenditi cura dei gatti" width="100%"></div>
                <h2>Prenditi cura dei gatti</h2>
            </div>
            <div class="column" style="background-color:lightgray;">
                <div><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png"
                          alt="Visita le scuole" width="100%"></div>
                <h2>Visita le scuole</h2>
            </div>
        </div>
        <div class="row">
            <h2> Iscriviti alle nostre attivit&#224 </h2>
        </div>
        <form action="" method="post">
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
        <p style="visibility: ${requestScope.success ? 'visible' : 'hidden' }">Iscrizione confermata!</p>

        <%-- TODO sistemare il bottone brutto--%>
            <%--
        </form>
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
<jsp:include page="/WEB-INF/views/footer.jsp"/>