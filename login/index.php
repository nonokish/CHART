<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>CHART - Login</title>
  <!-- MDB icon -->
  <link rel="icon" href="../img/cpu-logo.png" type="image/x-icon">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="../css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <!-- Your custom styles media query (optional) -->
  <link rel="stylesheet" type="text/css" href="../css/media-query.css">
  <!-- MDBootstrap Datatables  -->
  <link href="../css/addons/datatables.min.css" rel="stylesheet">

  <!-- Font Styles -->

</head>
<body class="login-page" onload="loadPageFunction()">
<div id="loader5"></div>

<div id="chartDashboard" style="display:none;" class="animate-bottom">

  <!-- MODALS -->

  <!-- Alert Modal -->
  <div class="modal bounceIn bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="alertModal" id="alertModal" 
  aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content px-3 py-4 flex-center error-bg-color error-text-color">
        <i class="far fa-times-circle mb-2" style="font-size: 46px;"></i>
        <div style="font-size: 20px;" class="text-center mb-3">Invalid Credentials!</div>
        <button type="button" class="px-4 py-2 white-text" style="border-radius: 5px!important; background-color: #721c24; border: none; font-size: 12px;" data-dismiss="modal">OK</button>
      </div>
    </div>
  </div>
  <!-- //Submit Modal -->

  <!-- //MODALS -->

 <div class="row p- mx-auto" style="height: 100vh; width: 100%;">
   <div class="col-md-6 p-0">
     <div class="login-l text-center">
       <div class="login-title"><img src="../img/chartlogo.png" class="mr-3">C.H.A.R.T</div>
       <div class="login-title-desc">Comprehensive Hemodialysis Account Record Treatment</div>
     </div>
   </div>
   <div class="col-md-6 p-0 white">
     <div class="login-r">
        <!-- Default form login -->
        <form class="" method="POST" action="php/login.php">
            <h1 class="font-weight-bold mb-3">Sign In</h1>

            <!-- Username -->
            <div class="md-form">
              <input type="text" id="loginUsername" class="form-control" name="loginUsername">
              <label for="loginUsername">Username</label>
            </div>

            <!-- Password -->
            <div class="md-form mb-5">
              <input type="password" id="loginPassword" class="form-control" name="loginPassword">
              <label for="loginPassword">Password</label>
            </div>

            <div class="row px-0 text-center">
              <div class="col-md-6 mx-auto mb-2">
                <!-- Remember me -->
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="materialLoginFormRemember">
                  <label class="form-check-label" for="materialLoginFormRemember">Remember me</label>
                </div>
              </div>
              <div class="col-md-6 mx-auto mb-2">
                <!-- Forgot password -->
                <a href="" class="secondary-text-color">Forgot password?</a>
              </div>
            </div>

            <!-- Login button -->
            <button class="btn btn-block mt-3 mb-4 primary-bg-color login-btn" type="submit">Login</button>

        </form>
        <!-- Default form login -->
     </div>
   </div>
 </div>


<!-- jQuery -->
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="../js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="../js/mdb.min.js"></script>
  <!-- MDBootstrap Datatables  -->
  <script type="text/javascript" src="../js/addons/datatables.min.js"></script>

  <script>
      var myVar;

      function loadPageFunction() {
        myVar = setTimeout(showPage, 1000);
      }

      function showPage() {
        document.getElementById("loader5").style.display = "none";
        document.getElementById("chartDashboard").style.display = "block";
      }
  </script>

  <script type="text/javascript">
    $(document).ready(function() {

  // SideNav Initialization
  $(".button-collapse").sideNav();
  })
  </script>

  <script type="text/javascript">
    $(document).ready(function() {
    // SideNav Button Initialization
    $(".button-collapse").sideNav({
    slim: true,
    });
  });
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
    $('#dtBasicExample').DataTable();
    $('.dataTables_length').addClass('bs-select');
  });
  </script>
  <?php
    if($_GET['success'] == 'false'){
      echo "<script>
          $('#alertModal').modal('show')
      </script>";
    }
  ?>

    </div>
  </body>
</html>