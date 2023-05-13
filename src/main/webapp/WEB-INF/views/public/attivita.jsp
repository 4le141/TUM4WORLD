<jsp:include page="/WEB-INF/views/header.jsp" >
  <jsp:param name="title" value="Attivita'" />
</jsp:include>

<section class="attivita">
<div class="row">
  <div class="column" style="background-color:lightgray;">
    <a href="${pageContext.request.contextPath}/attivita/1">
      <div ><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png" alt="attività 1" width="100%"></div>
    </a>
    <h2>Attività 1</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:lightgray;">
    <a href="${pageContext.request.contextPath}/attivita/2">
      <div ><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png" alt="attività 2" width="100%"></div>
    </a>
    <h2>Attività 2</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:lightgray;">
    <a href="${pageContext.request.contextPath}/attivita/3">
      <div><img class="animazione" src="${pageContext.request.contextPath}/images/logo.png" alt="attività 3" width="100%"></div>
    </a>
    <h2>Attività 3</h2>
    <p>Some text..</p>
  </div>
</div>
</section>

<jsp:include page="/WEB-INF/views/footer.jsp" />