<%@ page contentType="text/html;charset=UTF-8" language="java" session="false"%>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Home" />
</jsp:include>

<div class="content" style="display:flex; justify-content: center; align-items: center;">
    <section class="home">

        <div class="homepageleft">

            <div class="homepagetitle">
                <div style="width:185px;">
                    <img class="homepagelogo" src="${pageContext.request.contextPath}/images/logo.png" alt="Logo Image">
                </div>
                <div class="homepagemotto">
                    <div class="homestandard"> Salva il tuo nuovo</div>
                    <div class="homehighlight"> migliore amico</div>
                </div>
            </div>
            <div class="homepageseparator"></div>
            <div class="homepagedescription">
                L'Associazione TUM4WORLD &#232 una organizzazione di beneficenza,
                formata da un gruppo di giovani appassionati di animali e impegnati nella loro protezione.
                L'obiettivo principale dell'associazione &#232 quello di sensibilizzare l'opinione pubblica sull'importanza
                della tutela degli animali e promuovere azioni concrete a sostegno
                della loro salute e del loro benessere.
            </div>
            <div class="homepagedownload">
                <a  href="${pageContext.request.contextPath}/pdf/volantino.pdf" download>
                    Scarica il nostro Volantino!
                </a>
            </div>

        </div>
        <div class="homepageright">
            <img class="homepageimage" src="${pageContext.request.contextPath}/images/volontariato.jpg" alt="Description Image">
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