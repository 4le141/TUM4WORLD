<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="isUserLogged" value="${not empty sessionScope.user}"/>

<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Tum4World - ${param.title} </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo.png">
    <script src="${pageContext.request.contextPath}/js/main.js" ></script>
</head>
<body>

<div class="container">
    <div class="header">
        <div class="headerlogo"><img src="${pageContext.request.contextPath}/images/logo.png" alt="Header Logo"></div>
        <div class="headertitle">TUM4WORLD</div>
        <div class="headernav">
            <div class="headerlogin">
                <c:if test="${!isUserLogged}">
                    <a href="${pageContext.request.contextPath}/login">Login</a>
                    <a href="${pageContext.request.contextPath}/iscriviti">Iscriviti</a>
                </c:if>
                <c:if test="${isUserLogged}">
                    <!--<a href="${pageContext.request.contextPath}/logout">Logout</a>--!>
                </c:if>
            </div>
        </div>
    </div>
    <div class="headerlinks">
        <a href="${pageContext.request.contextPath}/home">Home</a>
        <a href="${pageContext.request.contextPath}/chisiamo">Chi Siamo</a>
        <a href="${pageContext.request.contextPath}/attivita">Attività</a>
        <a href="${pageContext.request.contextPath}/contatti">Contatti</a>

    </div>

    <script>

        function togglemenu(){
            document.getElementById("menu").classList.toggle("active");
            document.getElementById("menucontent").classList.toggle("active");
        }

        function closemenu(){
            document.getElementById("menubutton").classList.remove()
        }

    </script>

    <c:if test="${isUserLogged }">
        <c:set var="userType" value="${sessionScope.user.userMode}"/>

        <div id="menu" class="usermenu">

            <div class="usermenubutton" onclick="togglemenu();">
                    ${sessionScope.user.username}
                <img src="${pageContext.request.contextPath}/images/usericon.jpg" alt="Header Logo">
            </div>

            <div id="menucontent" class="usermenucontent">

            <div class="usermenuseparator"></div>

            <c:choose>
                <c:when test="${userType eq 'SIMPATIZZANTE'}">
                    <a href="${pageContext.request.contextPath}/restricted/profilo">
                        <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                        Profilo
                    </a>
                    <a href="${pageContext.request.contextPath}/restricted/iscriviti">
                        <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                        Iscrizioni Attività
                    </a>
                </c:when>
                <c:when test="${userType eq 'ADERENTE'}">
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
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/admin/utenti">
                        <img src="${pageContext.request.contextPath}/images/userlisticon.png" alt="User List Icon">
                        Utenti registrati
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/statistiche">
                        <img src="${pageContext.request.contextPath}/images/statisticsicon.png" alt="Statistics Icon">
                        Statistiche
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/donazioni">
                        <img src="${pageContext.request.contextPath}/images/donationlisticon.png" alt="Donation List Icon">
                        Lista Donazioni
                    </a>
                </c:otherwise>

            </c:choose>

                <a href="${pageContext.request.contextPath}/logout">
                    <img src="${pageContext.request.contextPath}/images/logouticon.png" alt="Logout Icon">
                    Esci
                </a>

            </div>
        </div>

    </c:if>