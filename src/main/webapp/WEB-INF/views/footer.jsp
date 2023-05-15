
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/frase.jsp" />
<div class="footer">

    <div class="footercontent">

        <div class="footeraddress">
            <div class="footertitle">Tum4World Italia ONLUS</div>
            <div class="footerlink" style="text-align: left">
                <img class="footerlinkicon" src="${pageContext.request.contextPath}/images/addresslogo.png" alt="Address Logo">
                Piazza Barone, 110<br>24000 Roma
            </div>

            <div class="footerlink"> <img class="footerlinkicon" src="${pageContext.request.contextPath}/images/emaillogo.png" alt="E-Mail Logo"> tum4world@nessunonoluogonoesiste.com</div>
        </div>

        <div class="footersocials">
            <div class="footertitle">Seguici sui Social!</div>
            <div class="footerlink"><img class="footerlinkicon" src="${pageContext.request.contextPath}/images/facebooklogo.png" alt="Facebook Logo">Facebook</div>
            <div class="footerlink"><img class="footerlinkicon" src="${pageContext.request.contextPath}/images/instagramlogo.png" alt="Instagram Logo">Instagram</div>
            <div class="footerlink"><img class="footerlinkicon" src="${pageContext.request.contextPath}/images/youtubelogo.png" alt="Youtube Logo">Youtube</div>
        </div>

    </div>
    <div class="footerseparator"></div>
    <div class="footerbottom">
        <img src="${pageContext.request.contextPath}/images/logo.png" alt="Header Logo"> Tum4World
    </div>

    </div>
</div>
</body>
</html>
