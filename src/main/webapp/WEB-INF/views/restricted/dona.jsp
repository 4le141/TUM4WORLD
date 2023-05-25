<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Dona"/>
</jsp:include>
<div class="donation-container">
    <form action="./dona" method="post">
    <h2>Fai una donazione</h2>
    <div class="input-container">
        <span class="currency-symbol">&#8364</span> <%-- fidati ma è il simbolo dell'euro --%>
        <input type="number" id="amount" name="amount" value="1" step="0.01" min="0.01" required>
    </div>
    <input type="submit" value="Dona">
    </form>
</div>
<%--
<div class="content">
    <form action="./dona" method="post">
        <label for="amount">Importo (Euro):</label>
        <input type="number" id="amount" name="amount" step="0.01" min="0.01" required>
        <input type="submit" value="Dona">
    </form>
</div> --%>

<jsp:include page="/WEB-INF/views/footer.jsp"/>