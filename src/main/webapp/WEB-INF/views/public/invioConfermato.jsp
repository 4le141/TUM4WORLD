<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Invio confermato"/>
</jsp:include>

<div class="content">
    <%-- Ricevi i dati dal modulo --%>
    <div class="row">
        <h1>Il modulo è stato inviato con successo!</h1>
    </div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>