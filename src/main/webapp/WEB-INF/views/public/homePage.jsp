<%@ page contentType="text/html;charset=UTF-8" language="java" session="false"%>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Home" />
</jsp:include>

<div class="content">
    <section class="home">
        <div class="row">
            <h1> HOMEPAGE </h1>
        </div>
        <img src="${pageContext.request.contextPath}/images/volontariato.jpg"
             alt="Description Image" style="max-width: 50%">
        <div class="row">
            <p>L'Associazione TUM4WORLD &#232 una organizzazione di beneficenza,
                formata da un gruppo di giovani appassionati di animali e impegnati nella loro protezione.
                L'obiettivo principale dell'associazione &#232 quello di sensibilizzare l'opinione pubblica sull'importanza
                della tutela degli animali e promuovere azioni concrete a sostegno
                della loro salute e del loro benessere. <br></p>
        </div>
        <div class="row">
            <figure>
                <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo Image"
                     style="max-width: 20%">
                <figcaption>Il nostro logo</figcaption>
            </figure>
        </div>
        <div class="row">
            <p> Per scaricare il nostro volantino<br>
                <a href="${pageContext.request.contextPath}/pdf/volantino.pdf" download>
                    <button> clicca qui</button>
                </a>

            </p>
        </div>
        <div id="popup">
            <img src="${pageContext.request.contextPath}/images/cookie.jpg" alt="Immagine dei cookies" class="left"
                 style="width: 10%"/>
            <img src="${pageContext.request.contextPath}/images/cookie.jpg" alt="Immagine dei cookies" class="right"
                 style="width: 10%"/>
            <h3>Utilizziamo i cookies</h3>
            <p>Questo sito web utilizza i cookies per garantire una migliore esperienza di navigazione.</p>
            <p>Accettando i cookies, ci permetti di raccogliere informazioni per fini statistici e migliorare il
                sito.</p>
            <button id="btnAccept">Accetta</button>
            <button id="btnDecline">Rifiuta</button>
        </div>
    </section>
</div>

<script>
    window.addEventListener('load', function () {
        let popup = document.getElementById('popup')
        if(!getCookie("cookieAccepted")){
            popup.style.display = 'block'; // Mostra il popup quando la pagina è completamente caricata
        }
    });
    let btnAccept = document.getElementById('btnAccept')
    let btnDecline = document.getElementById('btnDecline')
    btnAccept.addEventListener('click', function () {
        let popup = document.getElementById('popup')
        popup.style.display = 'none'; // Nascondi il popup quando viene cliccato "Accetta"
        document.cookie = "cookieAccepted=true; path=/";
    });

    btnDecline.addEventListener('click', function () {
        let popup = document.getElementById('popup')
        popup.style.display = 'none'; // Nascondi il popup quando viene cliccato "Accetta"
        document.cookie = "cookieAccepted=false; path=/";
    });

</script>

<jsp:include page="/WEB-INF/views/footer.jsp"/>