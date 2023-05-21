<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscrizione attività"/>
</jsp:include>

<div class="content">
    <form action="./servletviewprofile" method="GET">
        <h2>Profile</h2>
        <p>Username: <%= request.getParameter("username") %>
        </p>
        <p>Name: <%= request.getParameter("name") %>
        </p>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>