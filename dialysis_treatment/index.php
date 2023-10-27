<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>CHART - Dialysis Treatment</title>
  <!-- MDB icon -->
  <link rel="icon" href="" type="image/x-icon">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="../css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <!-- Your custom styles media query (optional) -->
  <link rel="stylesheet" type="text/css" href="../../css/media-query.css">
  <!-- MDBootstrap Datatables  -->
  <link href="../css/addons/datatables.min.css" rel="stylesheet">

  <!-- Font Styles -->

</head>
<body class="fixed-sn" onload="loadPageFunction()">
  <div id="loader5"></div>

  <div id="chartDialysisTreatment" style="display:none;">

  <!-- MODALS -->

    <!-- Select Patient Modal -->
    <div class="modal fade" id="selectPatient" tabindex="-1" role="dialog" aria-labelledby="selectPatient"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title font-weight-bold" id="selectPatient">Select Patient</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>
          <div class="modal-body">
            <select class="mdb-select" searchable="Search here..">
              <option value="1" disabled selected>Choose your option</option>
              <option value="2" data-icon="https://mdbootstrap.com/img/Photos/Avatars/avatar-1.jpg" class="rounded-circle">
              Patient 1
              </option>
              <option value="3" data-icon="https://mdbootstrap.com/img/Photos/Avatars/avatar-2.jpg" class="rounded-circle">
              Patient 2
              </option>
              <option value="4" data-icon="https://mdbootstrap.com/img/Photos/Avatars/avatar-3.jpg" class="rounded-circle">
              Patient 3
              </option>
            </select>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn primary-bg-color btn-sm btn-block mb-2">Select</button>
            <button type="button" class="btn secondary-bg-color btn-sm btn-block mb-2">Cancel</button>
          </div>
        </div>
      </div>
    </div>


  <!-- MODALS-->

  <!--Double navigation-->
  <header>
    <!-- Sidebar navigation -->
    <div id="slide-out" class="side-nav fixed wide chart-side-nav">
      <ul class="custom-scrollbar black-text">
        <!-- Logo -->
        <li>
          <div class="logo-wrapper sn-ad-avatar-wrapper p-2">
            <a href="#"><img src="../img/chartlogo.png" class="rounded-circle"><span class="logo-wrapper-text">C.H.A.R.T</span></a>
          </div>
        </li>
        <!--/. Logo -->
        <!-- Side navigation links -->
        <li class="chart-side-nav-acct text-center mb-4">
         <img src="../img/admin.jpg" alt="thumbnail" class="img-thumbnail">
         <div class="my-1 chart-side-nav-acct-details">
           <div>Sample Name</div>
           <div style="font-size: 12px; color: grey;">User Type</div>
         </div>     
        </li>
        <li>
          <ul class="collapsible collapsible-accordion">
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../"><i class="fas fa-clinic-medical"></i> Dashboard</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r"><i class="fas fa-calendar-check"></i> Appointments</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../demographics"><i class="fas fa-user-circle"></i>Demographics</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../prescription"><i class="fas fa-file-prescription"></i> Prescription</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r side-nav-link active" href="../dialysis_treatment"><i class="fas fa-file-medical"></i> Dialysis Treatment</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../laboratory_panels"><i class="fas fa-flask"></i> Laboratory Panels</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../progress_notes"><i class="fas fa-notes-medical"></i> Progress Notes</a>
                <div class="collapsible-body">
                    <ul>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> NN </span>
                        <span class="sv-normal">Nurses Notes</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> PPN </span>
                        <span class="sv-normal">Physician's Progress Notes</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> DN </span>
                        <span class="sv-normal">Dietician's Notes</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> SWN </span>
                        <span class="sv-normal">Social Work Notes</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> VN </span>
                        <span class="sv-normal">Vascular Notes</span></a>
                      </li>
                    </ul>
                </div>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../clinic_administration"><i class="fas fa-cog"></i>Clinic Administration</a>
                <div class="collapsible-body">
                    <ul>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> MP </span>
                        <span class="sv-normal">Manage Patient</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> MPS </span>
                        <span class="sv-normal">Manage Patient Schedule</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> MU </span>
                        <span class="sv-normal">Manage Users</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> MCL </span>
                        <span class="sv-normal">Manage Clinic Layout</span></a>
                      </li>
                      <li><a class="waves-effect">
                        <span class="sv-slim"> MSM </span>
                        <span class="sv-normal">Manage Station and Machine</span></a>
                      </li>
                    </ul>
                </div>
            </li>
            <li class="my-2"><a id="toggle" class="waves-effect"><i class="sv-slim-icon fas fa-angle-double-left"></i>Minimize menu</a>
            </li>
          </ul>
        </li>
        <!--/. Side navigation links -->
      </ul>
      
    </div>
    <!--/. Sidebar navigation -->

        <!-- Navbar -->
        <nav class="navbar fixed-top chart-navbar navbar-toggleable-md navbar-expand-lg chart-nav p-2" style="color: black!important;">
            <!-- SideNav slide-out button -->
            <div class="float-left">
                <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars side-menu"></i></a>
            </div>
            <!-- Breadcrumb-->
            <div class="breadcrumb-dn mr-auto">

            </div>
            <ul class="nav navbar-nav nav-flex-icons ml-auto">
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <img src="../img/admin.jpg" class="rounded-circle z-depth-0" alt="avatar image" height="35">
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="../accounts/user_profile/physician"><i class="fas fa-user mr-2 chart-nav-icon rounded-circle"></i>My Profile</a>
                    <a class="dropdown-item" href="../login"><i class="fas fa-sign-out-alt mr-2 chart-nav-icon rounded-circle"></i>Logout</a>
                  </div>
              </li>
            </ul>
        </nav>
        <!-- /.Navbar -->

  </header>
  <!--/.Double navigation-->

  <main class="main mx-5">

    <div class="row mb-4">

    <div class="col-12 px-0">
      <div class="card info-card primary-color-gradient">
        <div class="chart-body">
          <div class="row text-center">
            <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-user-injured fa-2x"></i>
              <div class="mb-2 info-patient-label">Patient Name</div>
              <div class="info-detail">Sample Name
                <a class="fas fa-caret-down ml-1" id="patientSearch" data-toggle="modal" data-target="#selectPatient" title="Select Patient"></a>           
              </div>
            </div>
             <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-user-md fa-2x"></i>
              <div class="mb-2 info-patient-label">Patient Of</div>
              <div class="info-detail">Sample Name</div>
            </div>
            <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-exclamation-triangle fa-2x"></i>
              <div class="mb-2 info-patient-label">Alerts</div>
              <div class="info-detail">
                <!-- NOTE: Green means no allergies or isolation needs -->
                <div class="d-flex flex-center">
                  <a tabindex="0" role="button" class="alert-circle red mx-2" data-toggle="popover" data-trigger="focus" data-placement="bottom" title="Medication Alergies" data-content="" id="category">
                  </a>
                  <a tabindex="0" role="button" class="alert-circle green mx-2" data-toggle="popover" data-trigger="focus" data-placement="bottom" title="Food Alergies" data-content="">
                  </a>
                  <a tabindex="0" role="button" class="alert-circle red mx-2" data-toggle="popover" data-trigger="focus" data-placement="bottom" title="Isolation Precautions" data-content="">
                  </a>
                </div>
                <!-- loaded popover content -->
                <div id="popover-content" style="display: none">
                  <ul class="list-group custom-popover">
                    <li class="list-group-item">List 1</li>
                    <li class="list-group-item">List 2</li>
                    <li class="list-group-item">List 3</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-info fa-2x"></i>
              <div class="mb-2 info-patient-label">Status</div>
              <div class="info-detail">Permanent</div>
            </div>
            <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-calendar-alt fa-2x"></i>
              <div class="mb-2 info-patient-label">Schedule</div>
              <div class="info-detail">(MWF)</div>
            </div>
            <div class="col info-box px-2 pt-4 pb-2">
              <i class="fas fa-pills fa-2x"></i>
              <div class="mb-2 info-patient-label">Active Meds</div>
              <div class="info-detail"><label>Scheduled:</label> (12)</div>
            </div>
            <div class="col info-box px-2 pt-4 pb-2" style="border: none!important;">
              <i class="fas fa-check-circle fa-2x"></i>
              <div class="mb-2 info-patient-label">Acknowledge Orders</div>
              <div class="info-detail">1</div>
            </div>
          </div>
        </div>
      </div>
    </div>

    </div>

    <div class="row mb-3">
      <div class="col-12 mb-3">
        <div class="page-title" style="display: inline-block;">Dialysis Treatment
        </div>
      </div>

      <div class="col-12 mb-3">
        <ul class="nav nav-tabs nav-justified md-tabs chart-tabs" id="dTreatmentTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="treatment-tab" data-toggle="tab" href="#treatment" role="tab" aria-controls="treatment"
              aria-selected="true">Treatment</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="treatmentOrders-tab" data-toggle="tab" href="#treatmentOrders" role="tab" aria-controls="treatmentOrders"
              aria-selected="false">Treatment Orders</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="homeMeds-tab" data-toggle="tab" href="#medications" role="tab" aria-controls="homeMeds"
              aria-selected="false">Medications</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="billing-tab" data-toggle="tab" href="#billing" role="tab" aria-controls="billing"
              aria-selected="false">Billing</a>
          </li>
        </ul>
        <div class="tab-content card pt-5" id="dTreatmentTabContent">
          <div class="tab-pane fade show active" id="treatment" role="tabpanel" aria-labelledby="treatment-tab">
            <p>Treatment</p>
          </div>
          <div class="tab-pane fade" id="treatmentOrders" role="tabpanel" aria-labelledby="treatmentOrders-tab">
            <p>Treatment Orders</p>
          </div>
          <div class="tab-pane fade" id="medications" role="tabpanel" aria-labelledby="medications-tab">
            <p>Medications</p>
          </div>
          <div class="tab-pane fade" id="billing" role="tabpanel" aria-labelledby="billing-tab">
            <p>Billing</p>
          </div>
        </div>
      </div>

    </div> 

  </main>
 


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
      document.getElementById("chartDialysisTreatment").style.display = "block";
    }
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
    // Material Select Initialization
    $(document).ready(function() {
    $('.mdb-select').materialSelect();
    });
  </script>

  <script type="text/javascript">
    // Data Picker Initialization
    $('.datepicker').pickadate();
  </script>

   <!-- Popover -->
  <script type="text/javascript">
    $(document).ready(function() {
    $('[data-toggle="popover"]').popover({
      html: true,
      content: function() {
        return $('#popover-content').html();
      }
    });
  });
  </script>

  <script type="text/javascript">
    $('.popover-dismiss').popover({
      trigger: 'focus'
  })
  </script>

  <script type="text/javascript">
    (function() {
      'use strict';
      window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        console.log("forms",forms)
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
        }, false);
    })();
  </script>

</div>
</body>
</html>