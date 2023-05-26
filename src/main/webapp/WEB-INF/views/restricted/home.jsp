<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ page import="com.tum4world.tum4world.model.User" %>
<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="home"/>
</jsp:include>

<div class="content ">
    <div class="backgroundImage signup-content">
        <div class="dashboardtitle">Benvenuto nel nostro sito!</div>
        <div class="dashboardwrapper">
            <div class="dashboardtext">
                Scopri le nuove funzioni a tua disposizione:
            </div>
            <div class="dashboardbuttons">
                <%
                    if (((User) request.getSession().getAttribute("user")).getUserMode().equals(User.UserMode.SIMPATIZZANTE)) {
                %>
                <a class="dashboardoption" href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/profilo")); %>">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    <div>
                        Mostra il mio Profilo
                    </div>
                </a>
                <a class="dashboardoption" href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/iscriviti")); %>">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    <div>
                        Iscriviti ad un'attivit&#224
                    </div>
                </a>
                <%
                } else if (((User) request.getSession().getAttribute("user")).getUserMode().equals(User.UserMode.ADERENTE)) {
                %>
                <a  class="dashboardoption" href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/profilo")); %>">
                    <img src="${pageContext.request.contextPath}/images/profileicon.png" alt="Profile Icon">
                    <div>
                        Mostra il mio Profilo
                    </div>
                </a>
                <a class="dashboardoption" href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/iscriviti")); %>">
                    <img src="${pageContext.request.contextPath}/images/subscribeicon.png" alt="Subscribe Icon">
                    <div>
                        Iscriviti ad un'attivit&#224
                    </div>
                </a>
                <a  class="dashboardoption" href="<% out.print(response.encodeURL(request.getContextPath()+"/restricted/dona")); %>">
                    <img src="${pageContext.request.contextPath}/images/donationicon.png" alt="Donation Icon">
                    <div>
                        Effettua una Donazione
                    </div>
                </a>
                <%
                }
                %>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"/>

