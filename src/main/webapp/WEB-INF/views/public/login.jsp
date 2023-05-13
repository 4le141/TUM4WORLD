<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Login" />
</jsp:include>


<div class="container">
    <h1>Login:</h1>
</div>
<form class="login-form" method="post" action="./login">
    <div class="container">
        <p>Username: <input type="text" name="username" id="username"> <br>
            Password: <input type="password" name="password" id="password">
        </p>
    </div>
    <div class="container">
        <input type="submit" value="invia">
    </div>
</form>

<jsp:include page="/WEB-INF/views/footer.jsp" />