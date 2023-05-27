<%@ page import="com.tum4world.tum4world.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Utenti" />
</jsp:include>

<div class="content">
    <a href="./utenti">TUTTI</a>
    <a href="./utenti?userMode=ADERENTE">ADERENTI</a>
    <a href="./utenti?userMode=SIMPATIZZANTE">SIMPATIZZANTI</a>
    <ul>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        for(User u : users){
    %>
        <li><% out.print(u.getFirstname() + " - " + u.getLastname() + " - " + u.getUserMode()); %></li>
    <%
        }
    %>
    </ul>

</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />