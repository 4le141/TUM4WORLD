<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
  <jsp:param name="title" value="Iscriviti" />
</jsp:include>

  <script>
    const regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    function validateForm() {

      let password = document.forms["signup-form"]["password"].value;

      if(!regularExpression.test(password)) {
        alert("La password deve contenere almeno un numero e un carattere speciale "+password);
        return false;
      }
      else return true;
    }
  </script>

<div class="signup-content backgroundImage" >
  <div class="row">
    <h1>Iscriviti:</h1>
  </div>
    <div class="signupwrapper">
      <form class="signup-form" onsubmit="return validateForm()" name="signup-form" method="post" action="./iscriviti">

        <label for="firstname" class="form-label">Nome</label>
        <div class="fullnamefield">
          <input type="text" name="firstname" id="firstname" placeholder="Nome" required>
          <input type="text" name="lastname" id="lastname" placeholder="Cognome" required>
        </div>

        <label for="username" class="form-label">Nome Utente</label>
        <div class="inputfield">
          <input type="text" name="username" id="username" required>
        </div>

        <label for="birthday" class="form-label">Data di Nascita</label>
        <div class="inputfield">
          <input type="date" name="birthday" id="birthday" required>
        </div>

        <label for="email" class="form-label">Email</label>
        <div class="inputfield">
          <input type="email" name="email" id="email" required>
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
          <input type="text" name="phone" id="phone">
        </div>

        <label for="password" class="form-label">Password</label>
        <div class="inputfield">
          <input type="password" name="password" id="password" required>
        </div>
        <div class="form-hint">La password deve essere lunga 8 caratteri e deve contenere almeno:<br>
          - un carattere numerico<br>
          - un carattere maiuscolo<br>
          - una delle seguenti lettere: M, F, A<br>
          - un carattere tra $, ! e ?</div>

        <div class="buttonrow">
          <input class="signupsubmit" type="submit" value="Iscriviti">
          <input class="signupreset" type="reset" value="Reset">
        </div>
      </form>
    </div>


</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />