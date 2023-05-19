<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Login" />
</jsp:include>
<style>
    .content{
        flex: 1 0 auto;
        background-image: url('images/pet.jpg');
        background-repeat: repeat;
        background-attachment: scroll;
        background-size: cover;
    }
</style>
<div class="content">
    <div class="row">
        <h1>Login:</h1>
    </div>
    <form class="login-form" method="post" action="./login">
        <div class="row">
            <p>Username: <input type="text" name="username" id="username"> <br>
                Password: <input type="password" name="password" id="password">
            </p>
        </div>
        <div class="row">
            <input type="submit" value="invia">
        </div>
    </form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp" />