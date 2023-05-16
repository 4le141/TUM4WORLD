<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>

<div class="content">

    <div class="row">
        <h1> HOMEPAGE </h1>
    </div>
    <img class="animazione" src="${pageContext.request.contextPath}/images/macchina_foto_disegno.png"
         alt="Description Image" style="max-width: 25%">
    <div class="row">
        <p>L'Associazione TUM4WORLD è una organizzazione di beneficenza,
            formata da un gruppo di giovani appassionati di animali e impegnati nella loro protezione.
            L'obiettivo principale dell'associazione è quello di sensibilizzare l'opinione pubblica sull'importanza
            della tutela degli animali e promuovere azioni concrete a sostegno
            della loro salute e del loro benessere. <br></p>
    </div>
    <div class="row">
        <figure>
            <img class="animazione" src="${pageContext.request.contextPath}/images/logo.png" alt="Logo Image"
                 style="max-width: 20%">
            <figcaption>Il nostro logo</figcaption>
        </figure>
    </div>
    <div class="row">
        <p> Per scaricare il nostro volantino
            <a href="${pageContext.request.contextPath}/pdf/volantino.pdf" download>
                <button> clicca qui</button>
            </a>

        </p>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>