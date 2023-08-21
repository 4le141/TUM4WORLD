<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
  <jsp:param name="title" value="Attivit&#224" />
</jsp:include>


<div class="content">
<section class="attivita">
  <div class="row">
    <h1> ATTIVIT&#192</h1>
  </div>
<div class="row">
  <div class="column" style="background-color: rgba(211, 211, 211, 0.6);">
    <a href="${pageContext.request.contextPath}/attivita/1">
      <div ><img class="animazione" style="border-radius: 5px;" src="${pageContext.request.contextPath}/images/adottaCane.jpg" alt="Prenditi cura dei cani" width="100%"></div>
    </a>
    <h2>Prenditi cura dei cani</h2>
    <p>Diventa un volontario e aiutaci prenderci cura dei nostri amici cani. Avrai l'opportunit&#224 di aiutare cani randagi recuperati dalla nostra associazione a vivere una vita migliore</p>
  </div>
  <div class="column" style="background-color: rgba(211, 211, 211, 0.6);">
    <a href="${pageContext.request.contextPath}/attivita/2">
      <div ><img class="animazione" style="border-radius: 5px;" src="${pageContext.request.contextPath}/images/gattoAlessia.jpg" alt="Prenditi cura dei gatti" width="100%"></div>
    </a>
    <h2>Prenditi cura dei gatti</h2>
    <p>Diventa un volontario e aiutaci a prenderci cura dei nostri amici gatti. Avrai l'opportunit&#224 di aiutare gatti randagi recuperati dalla nostra associazione a vivere una vita migliore</p>
  </div>
  <div class="column" style="background-color: rgba(211, 211, 211, 0.6);">
    <a href="${pageContext.request.contextPath}/attivita/3">
      <div><img class="animazione" style="border-radius: 5px;" src="${pageContext.request.contextPath}/images/scuola2.jpg" alt="Visita le scuole" width="100%"></div>
    </a>
    <h2>Visita le scuole</h2>
    <p>Visita le scuole di tutta Italia per responsabilizzare i bambini alla cura degli animali. Se ami i cani e i gatti e vorresti che gli altri facessero lo stesso, aiutaci a diffondere il rispetto e l'amore per questi animali!</p>
  </div>
</div>
</section>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />