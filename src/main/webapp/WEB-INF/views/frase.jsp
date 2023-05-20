<div class="quotesection">
    <p id="frase">Salvare la vita a un animale significa migliorare non solo la sua ma soprattutto la propria</p>
</div>
<script>
    const frasi = ["Amare e sentirsi amati: il rapporto con gli animali spesso può essere più forte di quello con le persone", "Adottare un cucciolo è una possibilità che ci viene data per far del bene al nostro pianeta, inizia anche te a fare la differenza!", "Salvare la vita a un animale significa migliorare non solo la sua ma soprattutto la propria"];
    const intervallo = 5000;  // Intervallo di tempo in millisecondi (5 secondi)

    function cambiaFrase() {
        const frase = document.getElementById("frase");
        let indice = 0;

        setInterval(() => {
            frase.textContent = frasi[indice];
            indice = (indice + 1) % frasi.length;
        }, intervallo);
    }

    cambiaFrase();

</script>
