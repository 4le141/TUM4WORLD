<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Dona"/>
</jsp:include>

<div class="content">
    <form action="./dona" method="post">
        <label for="amount">Importo (Euro):</label>
        <input type="number" id="amount" name="amount" step="0.01" min="0.01" required>
        <input type="submit" value="Dona">
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>