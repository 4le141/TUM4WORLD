
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Chi siamo" />
</jsp:include>
<div class="content">
    <section class="chisiamo">
        <div class="chisiamo-container">
            <h1> CHI SIAMO </h1>
        </div>
        <div class="chisiamo-container">
        <p class="containerImages">
            <img src="${pageContext.request.contextPath}/images/Gatto.jpg" alt="Left Image" class="left" style="transform: rotate(10deg);">
            <br>
            <img src="${pageContext.request.contextPath}/images/caneAlessia.jpg" alt="Left Image" class="left" style="transform: rotate(-10deg);">
            <br>
            <img src="${pageContext.request.contextPath}/images/fotocane.jpg" alt="Left Image" class="left" style="transform: rotate(10deg);">
            <br>
        </p>

        <p>I membri dell'Associazione, fondata a maggio 2023 da i rappresentanti Mirco, Alessia, Anna e Federica, sono
            giovani appassionati di ogni et&#224, uniti dal desiderio di
            fare la differenza nella
            vita degli animali e di rendere il mondo un posto migliore per loro. Grazie alla loro energia e alla loro
            passione, l'associazione ha gi&#224 ottenuto importanti risultati nella tutela degli animali e continua a lavorare
            con impegno e dedizione per il loro benessere.<br> <br>

            L'associazione organizza regolarmente eventi nella propria sede a Trento e iniziative per raccogliere fondi da
            destinare alla cura degli
            animali, sia domestici che selvatici. Tra le attivit&#224 svolte ci sono adozioni, campagne di sterilizzazione e di
            microchippatura, sensibilizzazione sui temi della salvaguardia ambientale e dei diritti degli animali, raccolta
            di cibo e coperte da donare ai canili e gattili del territorio. <br> <br>

            Se sei anche tu un appassionato di animali e desideri contribuire alla causa, non esitare a contattare
            l'associazione TUM4WORLD per gli Animali e a unirti a loro nella lotta per la difesa dei nostri amici a quattro
            zampe. <br> <br></p>
        <p class="containerImages">
            <img src="${pageContext.request.contextPath}/images/gattoAnna.jpg" alt="Right Image" class="right" style="transform: rotate(-10deg);">
            <br>
            <img src="${pageContext.request.contextPath}/images/teo.jpeg" alt="Right Image" class="right" style="transform: rotate(10deg);">
            <br>
            <img src="${pageContext.request.contextPath}/images/gattoCiccione.jpg" alt="Right Image" class="right" style="transform: rotate(-10deg);">
            <br>
        </p>
        </div>
    </section>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />


