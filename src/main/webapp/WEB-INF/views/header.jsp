<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="isUserLogged" value="${not empty sessionScope.user}" />

<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Tum4World - ${param.title} </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logo.png">
</head>
<body>
  <div class="header">
    <div class="headerlogo"><img src="${pageContext.request.contextPath}/images/logo.png" alt="Header Logo"></div>
    <div class="headertitle">TUM4WORLD</div>
    <div class="headernav">
        <div class="headerlogin">
            <c:if test="${!isUserLogged}" >
                <a href="${pageContext.request.contextPath}/login">Login</a>
                <a href="${pageContext.request.contextPath}/iscriviti">Iscriviti</a>
            </c:if>
            <c:if test="${isUserLogged}" >
                Benvenuto ${sessionScope.user.name}
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