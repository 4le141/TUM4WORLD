<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Login" />
</jsp:include>
<div class="login-content">
    <div class="row">
        <h1>Login</h1>
    </div>

    <div class="signupwrapper" style="width: 35%; flex-direction: column; align-items: center;">
        <div class="errormessage" style="display: ${error ? 'flex' : 'none'};">
            Username o Password errati!
        </div>
        <form class="signup-form" method="post" action="<% out.print(response.encodeURL("./login")); %>">

            <label for="username" class="form-label">Nome Utente</label>
            <div class="inputfield">
                <input type="text" name="username" id="username" required>
            </div>

            <label for="password" class="form-label">Password</label>
            <div class="inputfield">
                <input type="password" name="password" id="password" required>
            </div>

            <div class="buttonrow">
                <input class="signupsubmit" style="width:100%;" type="submit" value="Invia">
            </div>
        </form>
    </div>

</div>
<jsp:include page="/WEB-INF/views/footer.jsp" />