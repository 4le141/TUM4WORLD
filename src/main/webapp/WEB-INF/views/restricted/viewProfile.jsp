<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione attività"/>
</jsp:include>

<div class="content">
    <h1>Il tuo profilo</h1>
    <label>
        <p>Nome utente: ${sessionScope.user.username}
        </p>
        <p>Nome: ${sessionScope.user.firstname}
        </p>
        <p>Cognome: ${sessionScope.user.lastname}
        </p>
        <p>Data di nascita: ${sessionScope.user.birthday}
        </p>
        <p>Email: ${sessionScope.user.email}
        </p>
        <p>Numero di Telefono: ${sessionScope.user.phone}
        </p>
        <p>Iscritto al nostro sito come: ${sessionScope.user.userMode}
        </p>
    </label>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>