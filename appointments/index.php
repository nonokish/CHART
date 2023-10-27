<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>CHART - Appointments</title>
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
  <link rel="stylesheet" type="text/css" href="../../css/media-query.css">
  <!-- MDBootstrap Datatables  -->
  <link href="../css/addons/datatables.min.css" rel="stylesheet">

  <!-- Font Styles -->

</head>
<body class="fixed-sn" onload="loadPageFunction()">
  <div id="loader5"></div>

  <div id="chartAssessment" style="display:none;">

  <!-- MODALS -->

    <!-- New Appointment Modal -->
    <div class="modal fade" id="addAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="addAppointmentModal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header px-3 pt-3 pb-2">
            <h4 class="modal-title-table w-100" id="addAppointmentModal">New Appointment</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>    
          <div class="modal-body pt-0">
            <form class="needs-validation" novalidate method="POST" action="php/newAppointment.php">
              <div class="form-row">
                <div class="col">
                  <select class="mdb-select md-form" onchange="patientData(this.value)" id="patientList" name="patient" searchable="Search here.." required>
                    <option value="0" disabled selected>Select Patient</option>
                  </select>
                </div>
                <!-- Auto fill up after choosing Patient -->
                <div class="col">
                  <div class="md-form form-sm">
                    <input type="text" id="nephrologist1" value="Nephrologist" class="form-control form-control-sm" disabled>
                    <label for="nephrologist1">Nephrologist</label>
                  </div>
                </div>
              </div>
              <!-- Auto fill up after choosing Patient -->
              <div class="form-row mb-4">
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="text" id="patientMobile1" class="form-control" placeholder="Mobile" disabled>
                    <i class="fas fa-phone fa-lg fa-fw" aria-hidden="true"></i>
                  </div>
                </div>
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="email" id="patientEmail1" class="form-control" placeholder="Email" disabled>
                    <i class="fas fa-envelope fa-lg fa-fw"></i>
                  </div>
                </div>
              </div>
              <div class="form-row">
                <div class="col">
                  <label for="poTreatmentDateTime1" class="chart-form-label">Set Date/Time</label>
                  <input type="datetime-local" id="poTreatmentDateTime1" class="form-control mb-4" name="appointmentDate" placeholder="Select Date/Time" required>
                </div>
              </div> 

              <button type="submit" class="btn btn-sm btn-block my-2 primary-bg-color">Set Appointment</button>
              <button type="button" class="btn btn-sm btn-block my-2 secondary-bg-color">Reset</button>
            </form>
        </div>
        </div>
      </div>
    </div>
    <!-- //New Appointment Modal -->

    <!-- Edit Appointment Modal -->
    <div class="modal fade" id="editAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="editAppointmentModal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header px-3 pt-3 pb-2">
            <h4 class="modal-title-table w-100" id="editAppointmentModal1">Edit Appointment</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>    
          <div class="modal-body pt-0">
            <form class="needs-validation" novalidate method="POST" action="php/updateAppointment.php">
              <div class="form-row">
                <div class="col">
                  <input type="hidden" id="appointmentId" name="appointmentId"/>
                  <div class="md-form form-sm">
                    <input type="text" id="patientName" value="Patient" class="form-control form-control-sm" disabled>
                    <label for="patientName">Patient</label>
                  </div>
                </div>
                <!-- Auto fill up after choosing Patient -->
                <div class="col">
                  <div class="md-form form-sm">
                    <input type="text" id="nephrologist" value="Nephrologist" class="form-control form-control-sm" disabled>
                    <label for="nephrologist">Nephrologist</label>
                  </div>
                </div>
              </div>
              <!-- Auto fill up after choosing Patient -->
              <div class="form-row mb-4">
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="text" id="patientMobile" class="form-control" placeholder="Mobile" disabled>
                    <i class="fas fa-phone fa-lg fa-fw" aria-hidden="true"></i>
                  </div>
                </div>
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="email" id="patientEmail" class="form-control" placeholder="Email" disabled>
                    <i class="fas fa-envelope fa-lg fa-fw"></i>
                  </div>
                </div>
              </div>
              <div class="form-row">
                <div class="col">
                  <label for="poTreatmentDateTime" class="chart-form-label">Set Date/Time</label>
                  <input type="datetime-local" id="poTreatmentDateTime" name="appointmentDate" class="form-control mb-4" placeholder="Select Date/Time">
                </div>
              </div> 

              <button type="submit" class="btn btn-sm btn-block my-2 primary-bg-color">Update</button>
              <button type="button" class="btn btn-sm btn-block my-2 secondary-bg-color">Reset</button>
            </form>
        </div>
        </div>
      </div>
    </div>
    <!-- //Edit Appointment Modal -->

    <!-- Select Package Modal -->
    <div class="modal fade" id="selectPackageModal" tabindex="-1" role="dialog" aria-labelledby="selectPackageModal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header px-3 pt-3 pb-2">
            <h4 class="modal-title-table w-100" id="selectPackageModal">Hemodialysis Package</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>    
          <div class="modal-body">
            <form class="needs-validation" novalidate method="POST" action="php/selectPackage.php">

              <label class="mb-3">Choose a Package:</label>
              <input type="hidden" id="patientId" name="patientId"/>
              <input type="hidden" id="appointment_id" name="appointment_id"/>
              <div class="row">
                <div class="col-6">
                  <div class="custom-control custom-radio package-list mb-3">
                    <input type="radio" class="custom-control-input px-4" id="defaultGroupExample1" value="1" required name="package">
                    <label class="custom-control-label" for="defaultGroupExample1">Conventional New</label>
                  </div>

                  <div class="custom-control custom-radio package-list mb-3">
                    <input type="radio" class="custom-control-input" id="defaultGroupExample2" value="2" required name="package">
                    <label class="custom-control-label" for="defaultGroupExample2">Conventional Reuse</label>
                  </div>
                </div>

                <div class="col-6">
                  <div class="custom-control custom-radio package-list mb-3">
                    <input type="radio" class="custom-control-input" id="defaultGroupExample3" value="3" required name="package">
                    <label class="custom-control-label" for="defaultGroupExample3">Hemodiafiltration New</label>
                  </div>
         
                  <div class="custom-control custom-radio package-list mb-3">
                    <input type="radio" class="custom-control-input" id="defaultGroupExample4" value="4" required name="package">
                    <label class="custom-control-label" for="defaultGroupExample4">Hemodiafiltration Reuse</label>
                  </div>
                </div>

              </div>

              <button type="submit" class="btn btn-sm btn-block my-2 primary-bg-color">Arrive</button>
              <button type="button" class="btn btn-sm btn-block my-2 secondary-bg-color">Cancel</button>

            </form>
        </div>
        </div>
      </div>
    </div>
    <!-- //Select Package Modal -->

    <!-- Delete Modal -->
    <div class="modal bounceIn bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="deleteModal" id="deleteModal" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <form action="php/deactivateAppointment.php" method="POST">
        <input type="hidden" id="deactivateAppointmentId" name="appointmentId"/>
        <div class="modal-content px-3 py-4 flex-center error-text-color">
          <i class="fas fa-times mb-2" style="font-size: 46px;"></i>
          <div style="font-size: 20px;" class="text-center mb-3">Delete Appointment?</div>
            <div class="modal-footer py-0" style="border: none!important;">
              <button type="submit" class="px-4 py-2 white-text primary-bg-color" style="border-radius: 5px!important; border: none; font-size: 12px;">Yes</button>
              <a type="button" class="px-4 py-2 white-text secondary-bg-color" style="border-radius: 5px!important; background-color: #721c24; border: none; font-size: 12px;" data-dismiss="modal">No</a>
            </div>
        </div>
        </form>
      </div>
    </div>
    <!-- //Delete Modal -->

    <!-- Delete Alert Modal -->
      <div class="modal bounceIn bd-example-modal-sm " tabindex="-1" role="dialog" aria-labelledby="deleteAlert" id="deleteAlert" aria-hidden="true">
      <div class="modal-dialog modal-sm"> 
        <div class="modal-content px-3 py-4 flex-center success-text-color success-bg-color">
          <i class="fas fa-times mb-2" style="font-size: 46px;"></i>
          <div style="font-size: 20px;" class="text-center">Appointment Deleted!</div>
        </div>
      </div>
    </div>
    <!-- //Delete Alert Modal -->

    <!-- Success Alert Modal -->
    <div class="modal bounceIn bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="successApptModal" id="successApptModal" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content px-3 py-4 flex-center success-bg-color success-text-color">
          <i class="far fa-calendar-check mb-2" style="font-size: 46px;"></i>
          <div style="font-size: 20px;" class="text-center">Appointment Scheduled!</div>
        </div>
      </div>
    </div>
    <!-- //Success Alert Modal -->

    <!-- Rescheduled Alert Modal -->
    <div class="modal bounceIn bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="reschedApptModal" id="reschedApptModal" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content px-3 py-4 flex-center success-bg-color success-text-color">
          <i class="far fa-calendar-check mb-2" style="font-size: 46px;"></i>
          <div style="font-size: 20px;" class="text-center">Rescheduled Successfully!</div>
        </div>
      </div>
    </div>
    <!-- //Rescheduled Alert Modal -->

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
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r side-nav-link active"><i class="fas fa-calendar-check"></i> Appointments</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../demographics"><i class="fas fa-user-circle"></i>Demographics</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../prescription"><i class="fas fa-file-prescription"></i> Prescription</a>
            </li>
            <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="../dialysis_treatment"><i class="fas fa-file-medical"></i> Dialysis Treatment</a>
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

    <div class="row mb-3">
      <div class="col-12 mb-3">
          <div class="page-title" style="display: inline-block;">Appointments 
            <!-- <span class="grey-text"><i class="fas fa-caret-right" style="font-size: 30px;"></i></span>
            <span class="page-title-name ">Physicians</span> -->
          </div>

      </div>
    </div>

    <div class="card chart-card">
      <div class="card-body chart-card table-responsive">

        <div class="d-flex flex-row">
          <a class="ml-auto add-file-note" style="font-size: 18px!important;" data-toggle="modal" data-target="#addAppointmentModal"><i class="far fa-plus-square mr-1"></i>New Appointment</a>
        </div>
        <div id="appointmentGridData"></div>
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
      document.getElementById("chartAssessment").style.display = "block";
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
    // Material Select Initialization
    $(document).ready(function() {
    $('.mdb-select').materialSelect();
    });
  </script>

  <script type="text/javascript">
    // Data Picker Initialization
    $('.datepicker').pickadate();
  </script>

  <script type="text/javascript">
    $(document).ready(function() {
      var patientId;
      $('#nephrologist-list').materialSelect({
        validate: true,
        labels: {
          validFeedback: 'Selected',
          invalidFeedback: 'Nephrologist Required'
        }
      });
      function validateSelect(e) {
        $('.needs-validation').addClass('was-validated');
        if ($('.needs-validation select').val() === null) {
          console.log("$('#addAppointmentModal').hasClass('show')",$('#addAppointmentModal').hasClass('show'))
          if($('#addAppointmentModal').hasClass('show')){
            console.log("ga sulod diri?")
            $('.needs-validation').find('.valid-feedback').hide();
            $('.needs-validation').find('.invalid-feedback').show();
            $('.needs-validation').find('.select-dropdown').val('').prop('placeholder', 'No patient selected')
            e.preventDefault();
          }
        } else {
          $('.needs-validation').find('.valid-feedback').show();
          $('.needs-validation').find('.invalid-feedback').hide();
        }
      }
      $('.needs-validation select').on('change', e => validateSelect(e))
      $('.needs-validation').on('submit', e => validateSelect(e))
    });
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

  <script type="text/javascript">
    $.ajax({
      url: "php/patientList.php",
      type: "GET",
      success: function(response) {
        $("#patientList").append(response);
      }
    })

    $.ajax({
      url: "php/appointmentGridData.php",
      type: "GET",
      success: function(response) {
        $("#appointmentGridData").append(response);
      }
      
    })

    function appointmentInfoData(id){
      $.ajax({
        url: "php/appointmentInfoData.php",
        type: "POST",
        data:{
          "appointmentId": id
        },
        success: function(response) {
          console.log("response",response);
          var res = response.split(",");
          console.log("res",res);
          var docName = res[2]+' '+res[3];
          var patName = res[5]+', '+res[6];
          $('#patientName').val(patName);
          $('#patientMobile').val(res[0]);
          $('#patientEmail').val(res[1]);
          $('#nephrologist').val(docName);
          $('#poTreatmentDateTime').val(res[4]);
          $('#appointmentId').val(res[7]);
        }
      })
    }

    function deactivateAppointment(id){
      $('#deactivateAppointmentId').val(id);
    }

    function patientData(params){
      $.ajax({
        url: "php/patientData.php",
        type: "POST",
        data:{
          "patientId": params
        },
        success: function(response) {
          console.log("response",response);
          var res = response.split(",");
          console.log("res",res);
          var docName = res[2]+' '+res[3];
          $('#nephrologist1').val(docName);
          $('#patientMobile1').val(res[0]);
          $('#patientEmail1').val(res[1]);
          
        }
      })
    }

    function selectPackage(appointment_id,patient_id){
      $('#appointment_id').val(appointment_id);
      $('#patientId').val(patient_id);
    }
  </script>
  <?php
    if(isset($_GET['success']) == 'true'){
      echo "<script>
          $('#successApptModal').modal('show')
      </script>";
    }

    if(isset($_GET['deactivate']) == 'true'){
      echo "<script>
          $('#deleteAlert').modal('show')
      </script>";
    }

    if(isset($_GET['appointmentUpdated']) == 'true'){
      echo "<script>
          $('#reschedApptModal').modal('show')
      </script>";
    }
    
  ?>
</div>
</body>
</html>