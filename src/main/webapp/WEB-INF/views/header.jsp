<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ page import="com.tum4world.tum4world.model.User"  %>
<!DOCTYPE html>

<%
    boolean isUserLogged = request.getSession(false) != null && request.getSession(false).getAttribute("user") != null;
    User user = isUserLogged ? (User)request.getSession(false).getAttribute("user") : null;
%>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Tum4World - ${param.title} </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css">
    <%
        if(isUserLogged) {
            User.UserMode userMode = user.getUserMode();
    %>
        <%
            if(userMode.equals(User.UserMode.SIMPATIZZANTE)) {
        %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/simpatizzante.css">
        <%
        } else if(userMode.equals(User.UserMode.ADERENTE)) {
        %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/aderente.css">
        <%
        } else if(userMode.equals(User.UserMode.AMMINISTRATORE)) {
        %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/admin.css">
        <%
            }
        %>
    <%
        }
    %>


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
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/login")); %>">Login</a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/iscriviti")); %>">Iscriviti</a>
            <%
                }else
            %>
        </div>
    </div>
</div>
<div class="headerlinks">
    <a href="<% out.print(response.encodeURL(request.getContextPath()+"/home")); %>">Home</a>
    <a href="<% out.print(response.encodeURL(request.getContextPath()+"/chisiamo")); %>">Chi Siamo</a>
    <a href="<% out.print(response.encodeURL(request.getContextPath()+"/attivita")); %>">Attività</a>
    <a href="<% out.print(response.encodeURL(request.getContextPath()+"/contatti")); %>">Contatti</a>
    <%
        if(isUserLogged) {
    %>
    <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/home")); %>">Dashboard</a>
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
        String username = user.getUsername();
%>
    <div id="menu" class="usermenu">

        <div class="usermenubutton" onclick="togglemenu();">
            <div style="font-size: 23px;"> Benvenuto <%= username %></div>

            <img src="${pageContext.request.contextPath}/images/usericon.jpg" alt="Header Logo">
        </div>

        <div id="menucontent" class="usermenucontent">

            <div class="usermenuseparator"></div>

            <%
                if(userMode.equals(User.UserMode.SIMPATIZZANTE)) {
            %>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/profilo")); %>">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    Profilo
                </a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/iscriviti")); %>">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    Iscrizioni Attività
                </a>
            <%
                } else if(userMode.equals(User.UserMode.ADERENTE)) {
            %>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/profilo")); %>">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    Profilo
                </a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/iscriviti")); %>">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    Iscrizioni Attività
                </a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/dona")); %>">
                    <img src="${pageContext.request.contextPath}/images/donationicon.png" alt="Donation Icon">
                    Donazioni
                </a>
            <%
            } else if(userMode.equals(User.UserMode.AMMINISTRATORE)) {
            %>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/admin/utenti")); %>">
                    <img src="${pageContext.request.contextPath}/images/userlisticon.png" alt="User List Icon">
                    Utenti registrati
                </a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/admin/statistiche")); %>">
                    <img src="${pageContext.request.contextPath}/images/statisticsicon.png" alt="Statistics Icon">
                    Statistiche
                </a>
                <a href="<% out.print(response.encodeURL(request.getContextPath()+"/admin/donazioni")); %>">
                    <img src="${pageContext.request.contextPath}/images/donationlisticon.png"
                         alt="Donation List Icon">
                    Lista Donazioni
                </a>
            <%
                }
            %>
            <a href="<% out.print(response.encodeURL(request.getContextPath()+"/logout")); %>">
                <img src="${pageContext.request.contextPath}/images/logouticon.png" alt="Logout Icon">
                Esci
            </a>
        </div>
    </div>

<%
    }
%>