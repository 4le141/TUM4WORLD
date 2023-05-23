<%@ page import="com.tum4world.tum4world.model.User" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    boolean isUserLogged = request.getSession(false) != null && request.getSession(false).getAttribute("user") != null;
    User user = isUserLogged ? (User)request.getSession(false).getAttribute("user") : null;
%>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Tum4World - ${param.title} </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo.png">
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</head>
<body>

<div class="container">
<div class="header">
    <div class="headerlogo"><img src="${pageContext.request.contextPath}/images/logo.png" alt="Header Logo"></div>
    <div class="headertitle">TUM4WORLD</div>
    <div class="headernav">
        <div class="headerlogin">
            <%
                if(!isUserLogged) {
            %>
                <a href="${pageContext.request.contextPath}/login">Login</a>
                <a href="${pageContext.request.contextPath}/iscriviti">Iscriviti</a>
            <%
                }
            %>
        </div>
    </div>
</div>
<div class="headerlinks">
    <a href="${pageContext.request.contextPath}/home">Home</a>
    <a href="${pageContext.request.contextPath}/chisiamo">Chi Siamo</a>
    <a href="${pageContext.request.contextPath}/attivita">Attività</a>
    <a href="${pageContext.request.contextPath}/contatti">Contatti</a>
    <%
        if(isUserLogged) {
    %>
    <a href="${pageContext.request.contextPath}/restricted/home">Dashboard</a>
    <%
        }
    %>

</div>

<script>

    function togglemenu() {
        document.getElementById("menu").classList.toggle("active");
        document.getElementById("menucontent").classList.toggle("active");
    }

    function closemenu() {
        document.getElementById("menubutton").classList.remove()
    }

</script>

<%
    if(isUserLogged) {
        User.UserMode userMode = user.getUserMode();
%>
    <div id="menu" class="usermenu">

        <div class="usermenubutton" onclick="togglemenu();">
                ${sessionScope.user.username}
            <img src="${pageContext.request.contextPath}/images/usericon.jpg" alt="Header Logo">
        </div>

        <div id="menucontent" class="usermenucontent">

            <div class="usermenuseparator"></div>

            <%
                if(userMode.equals(User.UserMode.SIMPATIZZANTE)) {
            %>
                <a href="${pageContext.request.contextPath}/restricted/profilo">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    Profilo
                </a>
                <a href="${pageContext.request.contextPath}/restricted/iscriviti">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    Iscrizioni Attività
                </a>
            <%
                } else if(userMode.equals(User.UserMode.ADERENTE)) {
            %>
                <a href="${pageContext.request.contextPath}/restricted/profilo">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    Profilo
                </a>
                <a href="${pageContext.request.contextPath}/restricted/iscriviti">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    Iscrizioni Attività
                </a>
                <a href="${pageContext.request.contextPath}/restricted/dona">
                    <img src="${pageContext.request.contextPath}/images/donationicon.png" alt="Donation Icon">
                    Donazioni
                </a>
            <%
            } else if(userMode.equals(User.UserMode.AMMINISTRATORE)) {
            %>
                <a href="${pageContext.request.contextPath}/admin/utenti">
                    <img src="${pageContext.request.contextPath}/images/userlisticon.png" alt="User List Icon">
                    Utenti registrati
                </a>
                <a href="${pageContext.request.contextPath}/admin/statistiche">
                    <img src="${pageContext.request.contextPath}/images/statisticsicon.png" alt="Statistics Icon">
                    Statistiche
                </a>
                <a href="${pageContext.request.contextPath}/admin/donazioni">
                    <img src="${pageContext.request.contextPath}/images/donationlisticon.png"
                         alt="Donation List Icon">
                    Lista Donazioni
                </a>
            <%
                }
            %>
            <a href="${pageContext.request.contextPath}/logout">
                <img src="${pageContext.request.contextPath}/images/logouticon.png" alt="Logout Icon">
                Esci
            </a>
        </div>
    </div>

<%
    }
%>