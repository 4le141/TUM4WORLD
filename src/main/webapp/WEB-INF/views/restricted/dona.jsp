<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Dona"/>
</jsp:include>
<div class="donation-container">
    <form class="donationformcontainer" action="<% out.print(response.encodeURL("./dona")); %>" method="post">
    <h2 class="donationtext">Fai una donazione</h2>
    <div class="donationseparator"></div>
    <div class="input-container">
        <input class="donationvalue" type="number" id="amount" name="amount" value="1" step="0.01" min="0.01" required>
        <span class="donationcurrency">&#8364</span> <%-- fidati ma è il simbolo dell'euro --%>
    </div>
        <input class="donationsubmit" type="submit" value="Dona">
    </form>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>