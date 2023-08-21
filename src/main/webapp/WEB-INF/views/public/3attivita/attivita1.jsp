<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<style>
    /* Stile dell'intestazione (titolo) */
    .content h2 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    /* Stile del paragrafo */
    .content p {
        font-size: 16px;
        line-height: 1.6;
    }
</style>
<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Aiuta un cane" />
</jsp:include>

<div class="content">
        <img style="border-radius: 5px;" src="${pageContext.request.contextPath}/images/adottaCane.jpg" alt="Image" width="500">
        <h2>Prenditi cura dei cani</h2>
    <div class="row">
        <p>Fai volontariato al Rifugio di Tum4World, dove abbiamo accolto tanti gatti che sono stati abbandonati o maltrattati dai loro padroni. Come volontario avrai l'opportunit&#224 di donare il tuo amore ai nostri amici cani che stanno cercando una nuova casa. Ci darai una mano a pulire i rifugi, dare da mangiare ai gatti e farli giocare, e aiuterai nella riabilitazione degli animali traumatizzati.</p>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />
