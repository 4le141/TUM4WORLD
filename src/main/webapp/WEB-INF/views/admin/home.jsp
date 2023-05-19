<%--
  Created by IntelliJ IDEA.
  User: Federica_Lorenzini
  Date: 19/05/2023
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="home" />
</jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/admin.css">
<div class="content">
    <a href="${pageContext.request.contextPath}/admin/aderenti">
         <button class="buttonAdmin" type="button">Mostra aderenti all'associazione</button>
    </a>
    <a href="${pageContext.request.contextPath}/admin/utenti">
        <button class="buttonAdmin">Mostra gli utenti registrati </button>
    </a>
    <a href="${pageContext.request.contextPath}/admin/simpatizzanti">
        <button class="buttonAdmin">Mostra i simpatizzanti </button>
    </a>
    <a href="${pageContext.request.contextPath}/admin/statisticheVisite">
        <button class="buttonAdmin">Mostra dati sulle visite </button>
    </a>
    <a href="${pageContext.request.contextPath}/admin/donazioni">
        <button class="buttonAdmin">Mostra dati sulle donazioni </button>
    </a>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp" />