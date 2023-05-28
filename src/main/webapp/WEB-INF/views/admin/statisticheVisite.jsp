<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="StatisticheVisite" />
</jsp:include>

<div class="content">
    <p id="visite"></p>
</div>
<script>
    function getViews() {
        const views = document.getElementById("visite");
        xhttp.open("GET","${pageContext.request.contextPath}/statisticheVisite",true);
        views.textContent=this.responseText;
        xhttp.send();
    }
    //getViews();
</script>
<jsp:include page="/WEB-INF/views/footer.jsp" />