<%@ page import="com.tum4world.tum4world.model.User" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="home"/>
</jsp:include>

<div class="content ">
    <div id="welcome" class="backgroundImage">
        <div class="row"><h1>Benvenuto nel nostro sito!</h1> <br></div>
    </div>
    <div class="row" style="background: white"><p>Scopri le nuove funzioni a tua disposizione</p><br></div>
    <div class="row" style="background: white">
        <c:set var="userType" value="${sessionScope.user.userMode}"/>
        <%
            if (((User) request.getSession().getAttribute("user")).getUserMode().equals(User.UserMode.SIMPATIZZANTE)) {
        %>
        <a href="${pageContext.request.contextPath}/restricted/profilo">
            <button class="button">Mostra il mio profilo</button>
        </a>
        <a href="${pageContext.request.contextPath}/restricted/iscriviti">
            <button class="button">Iscriviti ad un'attivit&#224</button>
        </a>
        <%
        } else if (((User) request.getSession().getAttribute("user")).getUserMode().equals(User.UserMode.ADERENTE)) {
        %>
        <a href="${pageContext.request.contextPath}/restricted/profilo">
            <button class="button">Mostra il mio profilo</button>
        </a>
        <a href="${pageContext.request.contextPath}/restricted/iscriviti">
            <button class="button">Iscriviti ad un'attivit&#224</button>
        </a>
        <a href="${pageContext.request.contextPath}/restricted/dona">
            <button class="button">Effettua una donazione</button>
        </a>
        <br>
        <%
        } else if (((User) request.getSession().getAttribute("user")).getUserMode().equals(User.UserMode.AMMINISTRATORE)) {
        %>
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
        <%
        }
        %>
    </div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>

