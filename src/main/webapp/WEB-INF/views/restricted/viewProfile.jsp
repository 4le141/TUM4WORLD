<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione attività"/>
</jsp:include>

<div class="profile-container">
    <h1>Il tuo profilo</h1>
    <div class="profile-info">
        <label>Nome utente: ${sessionScope.user.username}</label>
    </div>
    <div class="profile-info">
        <label>Nome: ${sessionScope.user.firstname}</label>
    </div>
    <div class="profile-info">
        <label>Cognome: ${sessionScope.user.lastname}</label>
    </div>
    <div class="profile-info">
        <label>Data di nascita: ${sessionScope.user.birthday}</label>
    </div>
    <div class="profile-info">
        <label>Email: ${sessionScope.user.email}</label>
    </div>
    <div class="profile-info">
        <label>Numero di Telefono: ${sessionScope.user.phone}</label>
    </div>
    <div class="profile-info">
        <label>Iscritto al nostro sito come: ${sessionScope.user.userMode}</label>
    </div>
    <div class="profile-info">
        <form class="resetbutton" action="./deleteprofile" method="post">
            <input type="submit" value="Cancella Iscrizione">
        </form>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>