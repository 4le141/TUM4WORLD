<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="isUserLogged" value="${not empty sessionScope.username}"/>

<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Tum4World - ${param.title} </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo.png">
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
                    <div style="color: white"> Benvenuto ${sessionScope.user.username} </div>
                    <a href="${pageContext.request.contextPath}/logout">Logout</a>
                </c:if>
            </div>
        </div>
    </div>
    <div class="headerlinks">
        <a href="${pageContext.request.contextPath}/home">Home</a>
        <a href="${pageContext.request.contextPath}/chisiamo">Chi Siamo</a>
        <a href="${pageContext.request.contextPath}/attivita">Attività</a>
        <a href="${pageContext.request.contextPath}/contatti">Contatti</a>
        <c:if test="${isUserLogged }">
            <c:set var="userType" value="${sessionScope.user.userMode}"/>

            <c:choose>
                <c:when test="${userType eq 'SIMPATIZZANTE'}">
                    <a href="${pageContext.request.contextPath}/restricted/profilo">Profilo</a>
                    <a href="${pageContext.request.contextPath}/restricted/iscriviti">Iscrizione Attività</a>
                </c:when>
                <c:when test="${userType eq 'ADERENTE'}">
                    <a href="${pageContext.request.contextPath}/restricted/profilo">Profilo</a>
                    <a href="${pageContext.request.contextPath}/restricted/iscriviti">Iscrizione Attività</a>
                    <a href="${pageContext.request.contextPath}/restricted/dona">Donazione</a>
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/admin/utenti">Utenti registrati</a>
                    <a href="${pageContext.request.contextPath}/admin/statistiche">Statistiche</a>
                    <a href="${pageContext.request.contextPath}/admin/donazioni">Donazioni</a>
                </c:otherwise>


            </c:choose>

        </c:if>
    </div>