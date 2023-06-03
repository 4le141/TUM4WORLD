<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Aiuta un gatto" />
</jsp:include>

<div class="content">
    <img src="${pageContext.request.contextPath}/images/gattoAlessia.jpg" alt="Image" width="500">
    <h2>Prenditi cura dei gatti</h2>
    <div class="row">
        <p>Fai volontariato al Rifugio di Tum4World, dove abbiamo accolto tanti gatti che sono stati abbandonati o maltrattati dai loro padroni. Come volontario avrai l'opportunit&#224 di donare il tuo amore ai nostri amici cani che stanno cercando una nuova casa. Ci darai una mano a pulire i rifugi, dare da mangiare ai gatti e farli giocare, e aiuterai nella riabilitazione degli animali traumatizzati.</p>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />