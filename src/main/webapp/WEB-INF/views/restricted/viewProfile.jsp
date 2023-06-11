<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Profilo"/>
</jsp:include>

<div class="profile-container">

    <div class="profilewrapper">
        <div class="profiletitle">Il tuo profilo</div>
        <div class="profileseparator"></div>
        <div class="profile-info">
            <div class="profileinfotitle">Nome utente</div>
            <div class="profileinfovalue">${sessionScope.user.username}</div>
        </div>
        <div class="profile-info odd">
            <div class="profileinfotitle">Nome</div>
            <div class="profileinfovalue">${sessionScope.user.firstname}</div>
        </div>
        <div class="profile-info">
            <div class="profileinfotitle">Cognome</div>
            <div class="profileinfovalue">${sessionScope.user.lastname}</div>
        </div>
        <div class="profile-info odd">
            <div class="profileinfotitle">Data di Nascita</div>
            <div class="profileinfovalue">${sessionScope.user.birthday}</div>
        </div>
        <div class="profile-info">
            <div class="profileinfotitle">Email</div>
            <div class="profileinfovalue">${sessionScope.user.email}</div>
        </div>
        <div class="profile-info odd">
            <div class="profileinfotitle">Numero di Telefono</div>
            <div class="profileinfovalue">${sessionScope.user.phone}</div>
        </div>
        <div class="profile-info" style="margin-bottom: 30px;">
            <div class="profileinfotitle">Tipo di Iscrizione</div>
            <div class="profileinfovalue">${sessionScope.user.userMode}</div>
        </div>
        <div class="profileseparator"></div>
        <div class="profile-info deletesection">
            <div class="deletebutton">
                <button onclick="openconfirm()">Cancella Iscrizione</button>
            </div>
        </div>
    </div>

</div>

<script>
    function openconfirm() {
        document.getElementById("confirmdelete").classList.remove("disabled");
    }
    function closeconfirm() {
        document.getElementById("confirmdelete").classList.add("disabled");
    }
</script>

<div id="confirmdelete" onclick="closeconfirm()" class="confirmdelete disabled">
    <div class="confirmwrapper">
        <div class="confirmwarning">Questa azione non è reversibile!</div>
        <div class="confirmtext">Sei sicuro di voler cancellare la tua iscrizione al sito?</div>
        <form class="confirmbuttonrow" action="<% out.print(response.encodeURL("deleteprofile")); %>" method="post">
            <input class="confirmyes" type="submit" value="Conferma">
            <div class="confirmno" onclick="closeconfirm()" >
                Torna Indietro
            </div>
        </form>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>