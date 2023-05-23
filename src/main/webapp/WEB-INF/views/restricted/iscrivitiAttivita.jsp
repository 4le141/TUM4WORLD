<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione attività"/>
</jsp:include>

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
            <h2> Iscriviti alle nostre attività </h2>
        </div>
        <div class="row">
            <form action="" method="post">
                <input type="checkbox" id="iscrizioneAttivita1"
                       name="attivita1"${requestScope.activities.activity1 ? 'checked' : ''} >
                Prenditi cura dei cani <br>
                <input type="checkbox" id="iscrizioneAttivita2"
                       name="attivita2" ${requestScope.activities.activity2 ? 'checked' : ''}>
                Prenditi cura dei gatti <br>
                <input type="checkbox" id="iscrizioneAttivita3"
                       name="attivita3"${requestScope.activities.activity3 ? 'checked' : ''}>
                Visita le scuole <br>
                <p style="visibility: ${requestScope.success ? 'visible' : 'hidden' }">Iscrizione confermata!</p>

                <input class="buttons" type="submit" value="Iscriviti">
            </form>
        </div>
    </section>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>