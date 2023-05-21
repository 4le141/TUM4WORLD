<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="home"/>
</jsp:include>

<div class="content ">
    <div id="welcome" class="backgroundImage">
        <div class="row"><h1>Benvenuto nell'area riservata all'aministratore</h1> <br></div>
    </div>
    <div class="row" style="background: white"><p>Scopri le funzioni dedicate all'amministratore</p><br></div>
    <div class="row" style="background: white">
        <a href="${pageContext.request.contextPath}/admin/utenti">
            <button class="button">Mostra gli utenti registrati</button>
        </a>
        <a href="${pageContext.request.contextPath}/admin/statistiche">
            <button class="button">Visualizza le statistiche</button>
        </a>
        <a href="${pageContext.request.contextPath}/admin/donazioni">
            <button class="button">Visualizza le donazioni</button>
        </a>
        <br>
    </div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>

