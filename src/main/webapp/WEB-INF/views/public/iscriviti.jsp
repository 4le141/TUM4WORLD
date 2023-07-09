<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Iscriviti"/>
</jsp:include>



<div class="signup-content backgroundImage">
    <div class="row">
        <h1>Iscriviti</h1>
    </div>
    <div class="signupwrapper">
        <form class="signup-form" onsubmit="return validateFormForIscriviti()" name="signup-form" method="post"
              action="./iscriviti">

            <label for="firstname" class="form-label">Nome</label>
            <div class="fullnamefield">
                <input type="text" name="firstname" id="firstname" placeholder="Nome" >
                <input type="text" name="lastname" id="lastname" placeholder="Cognome" >
            </div>

            <label for="username" class="form-label">Nome Utente</label>
            <div class="inputfield">
                <input type="text" name="username" id="username" >
            </div>

            <label for="birthday" class="form-label">Data di Nascita</label>
            <div class="inputfield">
                <input type="date" name="birthday" id="birthday" >
            </div>

            <label for="email" class="form-label">Email</label>
            <div class="inputfield">
                <input  name="email" id="email" style="width: 100%; padding: 8px; font-size: 14px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px; margin-right: 5px;"
                >
            </div>

            <label class="form-label">Iscriviti Come:</label>
            <div class="usermode">
                <input type="radio" name="usermode" id="simpatizzante" value="simpatizzante" checked>
                <label for="simpatizzante">
                    Simpatizzante
                </label>
                <input type="radio" name="usermode" id="aderente" value="aderente">
                <label for="aderente">
                    Aderente
                </label>
            </div>

            <label for="phone" class="form-label">Numero di Telefono</label>
            <div class="inputfield">
                <input type="text" name="phone" id="phone" >
            </div>

            <label for="password" class="form-label">Password</label>
            <div class="inputfield">
                <input type="password" name="password" id="password" >
            </div>
            <div class="form-hint">La password deve essere lunga 8 caratteri e deve contenere almeno:<br>
                - un carattere numerico<br>
                - un carattere maiuscolo<br>
                - una delle seguenti lettere: M, F, A<br>
                - un carattere tra $, ! e ?
            </div>
            <br>
            <label for="repeat-password" class="form-label">Ripeti Password</label>
            <div class="inputfield">
                <input type="password" name="repeat-password" id="repeat-password" >
            </div>

            <div class="form-hint" style="color:red; visibility: ${error ? 'visible' : 'hidden'};">24: Nome utente già esistente</div>

            <div class="buttonrow">
                <input class="signupsubmit" type="submit" value="Iscriviti">
                <input class="signupreset" type="reset" value="Reset">
            </div>
        </form>
    </div>


</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>