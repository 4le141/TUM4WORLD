<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>attivita</title>
  <link rel="stylesheet" href="main.css">
  <link rel="icon" type="image/x-icon" href="/images/logo.png">
  <jsp:include page="header.jsp"/>

  <style>
    /* style per le colonne */
     * {
       box-sizing: border-box;
     }
     html, body, div {
       height: 100%;			<!-- spalma le colonne in altezza -->
       overflow: hidden; 	<!-- hides scrollbars -->
     }
     /* Create three equal columns that floats next to each other */
    .column {
      /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); *//*carine le ombre ma no*/
      float: left;
      width: 33.33%;
      padding: 10px;
      border: 2px solid #eee; <!-- bordo tra le colonne -->
    }

    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }

  </style>
</head>

<body>

<!-- manca header -->

<div class="row">
  <div class="column" style="background-color:lightgray;">
    <a href="./3attivita/attivita1.html">
      <div ><img class="animazione" src="images/logo.png" alt="attività 1" width="100%"></div>
    </a>
    <h2>Attività 1</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:lightgray;">
    <a href="./3attivita/attivita2.html">
      <div ><img class="animazione" src="images/logo.png" alt="attività 2" width="100%"></div>
    </a>
    <h2>Attività 2</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:lightgray;">
    <a href="./3attivita/attivita3.html">
      <div><img class="animazione" src="images/logo.png" alt="attività 3" width="100%"></div>
    </a>
    <h2>Attività 3</h2>
    <p>Some text..</p>
  </div>
</div>

<!-- manca footer -->

</body>
</html>
