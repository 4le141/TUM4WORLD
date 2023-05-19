<%--
  Created by IntelliJ IDEA.
  User: Federica_Lorenzini
  Date: 19/05/2023
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Dona" />
</jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/aderente.css">
<div class="content">
    <a href="${pageContext.request.contextPath}/restricted/dona">
        <button class="buttonAderente" type="button" >Effettua donazione</button>
    </a>
    <a href="${pageContext.request.contextPath}/restricted/iscrivitiAttivita">
        <button class="buttonAderente">Iscriviti a un'attività </button>
    </a>
    <a href="${pageContext.request.contextPath}/restricted/viewProfile">
        <button class="buttonAderente">Mostra il mio profilo </button>
    </a>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />
