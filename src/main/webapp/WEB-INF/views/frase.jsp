<div class="quotesection">
    <p id="frase">Salvare la vita a un animale significa migliorare non solo la sua ma soprattutto la propria</p>
</div>
<script>
    const intervallo = 1000*20;  // Intervallo di tempo in millisecondi (20 secondi)

    function cambiaFrase() {
        const frase = document.getElementById("frase");
        setInterval(() => {
            const xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if(this.readyState === 4 && this.status === 200) {
                    frase.textContent = this.responseText;
                }
            };
            xhttp.open("GET", "${pageContext.request.contextPath}/getphrase", true);
            xhttp.send();
        }, intervallo);
    }

    cambiaFrase();

</script>
