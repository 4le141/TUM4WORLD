<%@ page import="com.tum4world.tum4world.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Utenti" />
</jsp:include>

<div class="userlistcontent">
    <div class="userlistfilters">
        <a class="userlistoption first" href="./utenti">TUTTI</a>
        <a class="userlistoption" href="./utenti?userMode=ADERENTE">ADERENTI</a>
        <a class="userlistoption last" href="./utenti?userMode=SIMPATIZZANTE">SIMPATIZZANTI</a>
    </div>

    <div class="userlist">
    <%
        int c = 0;
        List<User> users = (List<User>) request.getAttribute("users");
        for(User u : users){
    %>
        <%if(c != 0){%>
            <div class="userlistseparator"></div>
        <%}%>

        <div class="userlistentry">

            <div class="userlistname">
                <% out.print("• " +u.getUsername()); %>
            </div>
            <div class="miniseparator"></div>
            <div class="userlistmode">
                <% out.print(u.getFirstname() + " " + u.getLastname()); %>
            </div>
            <div class="miniseparator"></div>
            <div class="userlistmode">
                <% out.print(u.getEmail()); %>
            </div>
            <div class="miniseparator"></div>
            <div class="userlistmode">
                <% out.print(u.getUserMode()); %>
            </div>
        </div>

    <%
        c++;
        }
    %>
        </div>

    <table>
        <tr>
            <th>Username</th>
            <th>Name</th>
            <th>Email</th>
            <th>Birthdate</th>
            <th>Phone</th>
            <th>User mode</th>
        </tr>
        <%
            List<User> users2 = (List<User>) request.getAttribute("users");
            for(User u : users2){
        %>
        <tr>
            <th><% out.print(u.getUsername()); %></th>
            <th><% out.print(u.getFirstname() + " " + u.getLastname()); %></th>
            <th><% out.print(u.getEmail()); %></th>
            <th><% out.print(u.getBirthday()); %></th>
            <th><% out.print(u.getPhone()); %></th>
            <th><% out.print(u.getUserMode().toString()); %></th>
        </tr>
        <%
            }
        %>
    </table>

</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />