<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="donazioni" />
</jsp:include>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<div class="content">
    <div class="chartcontainer">
        <div id="chart" class="chart" style="border-radius: 5px;">
        </div>
    </div>
</div>

<!--
style="min-width: 310px; max-width: 600px; height: 400px; margin: 0 auto"
-->
<script type="application/javascript" >

    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if(this.readyState === 4 && this.status === 200) {
            Highcharts.chart('chart', {
                chart: {
                    type: 'column'
                },
                colors: ['#FF4453'],
                title: {
                    text: 'Istogramma donazioni mensili'
                },
                subtitle: {
                    text: ''
                },
                xAxis: {
                    categories: [
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.2f} €</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0,
                        borderWidth: 20,
                        groupPadding: 0,
                        shadow: false
                    }
                },
                series: [{
                    name: 'Donazioni mensili',
                    data: JSON.parse(this.response)
                }]
            });
        }
    };
    xhttp.open("POST", "${pageContext.request.contextPath}/admin/data/donazioni", true);
    xhttp.send();

</script>

<jsp:include page="/WEB-INF/views/footer.jsp" />