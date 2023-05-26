<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="home"/>
</jsp:include>


<div class="content ">
    <div class="backgroundImage signup-content">
        <div class="dashboardtitle">Benvenuto nell'area riservata all'aministratore</div>
        <div class="dashboardwrapper">
            <div class="dashboardtext">
                Scopri le funzioni dedicate all'amministratore
            </div>
            <div class="dashboardbuttons">
                <a class="dashboardoption" href="${pageContext.request.contextPath}/admin/utenti">
                    <img src="${pageContext.request.contextPath}/images/userlisticon.png" alt="User List Icon">
                    <div>
                        Mostra gli utenti registrati
                    </div>
                </a>
                <a class="dashboardoption" href="${pageContext.request.contextPath}/admin/statistiche">
                    <img src="${pageContext.request.contextPath}/images/statisticsicon.png" alt="Statistics Icon">
                    <div>
                        Visualizza le Statistiche
                    </div>
                </a>
                <a class="dashboardoption" href="${pageContext.request.contextPath}/admin/donazioni">
                    <img src="${pageContext.request.contextPath}/images/donationlisticon.png" alt="Donation List Icon">
                    <div>
                        Visualizza le Donazioni
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>

