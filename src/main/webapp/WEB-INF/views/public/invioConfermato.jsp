<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Invio confermato"/>
</jsp:include>

<div class="content">
    <%-- Ricevi i dati dal modulo --%>

    <h1>Il modulo è stato inviato con successo!</h1>

    Nell'esempio sopra, i dati del modulo vengono ricevuti utilizzando request.getParameter("nomeParametro"), dove
    "nomeParametro" corrisponde al nome dell'attributo "name" nell'input del modulo.

    Una volta ricevuti i dati, puoi eseguire le operazioni necessarie, come inviare una mail o salvarli nel database.
    Nell'esempio sopra, viene semplicemente visualizzato un messaggio di conferma "Il modulo è stato inviato con
    successo!".

    Assicurati di configurare correttamente il tuo server JSP per gestire le richieste JSP e collegare il tuo modulo JSP
    all'URL corretto nel tuo file HTML.


</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>