<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="main.css">
    <jsp:include page="header.jsp"/>
</head>
<body>
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
</body>
</html>