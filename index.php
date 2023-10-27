<?php 

header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

require "db.php";

if(!isset($_SESSION['user_id'])){
    header("location:login/");
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>CHART - Dashboard</title>
    <!-- MDB icon -->
    <link rel="icon" href="" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="css/mdb.min.css">
    <!-- Your custom styles (optional) -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Your custom styles media query (optional) -->
    <link rel="stylesheet" type="text/css" href="css/media-query.css">
    <!-- MDBootstrap Datatables  -->
    <link href="css/addons/datatables.min.css" rel="stylesheet">

    <!-- Font Styles -->

</head>

<body class="fixed-sn" onload="loadPageFunction()">
<div id="loader5"></div>

<div id="chartDashboard" style="display:none;" class="animate-bottom">

    <!-- MODALS -->

    <!-- Physician's Details Modal -->
    <div class="modal fade" id="editPhysicianDetailsModal" tabindex="-1" role="dialog" aria-labelledby="editPhysicianDetailsModal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header px-3 pt-3 pb-2">
            <h4 class="modal-title-table w-100" id="editPhysicianDetailsModal">Sample Name</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>    
          <div class="modal-body">
            <form>
            <div class="form-row mb-4">
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianName" class="form-control" placeholder="Name">
                  <i class="fa fa-user fa-lg fa-fw" aria-hidden="true"></i>
                </div>
              </div>
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianDept" class="form-control" placeholder="Department">
                  <i class="fas fa-building fa-lg fa-fw"></i>
                </div>
              </div>
            </div>
            <div class="form-row mb-4">
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianSpecialization" class="form-control" placeholder="Specialization">
                  <i class="fas fa-award fa-lg fa-fw" aria-hidden="true"></i>
                </div>
              </div>
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianDegree" class="form-control" placeholder="Degree">
                  <i class="fas fa-graduation-cap fa-lg fa-fw"></i>
                </div>
              </div>
            </div>
            <div class="form-row mb-4">
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianMobile" class="form-control" placeholder="Mobile">
                  <i class="fas fa-phone fa-lg fa-fw" aria-hidden="true"></i>
                </div>
              </div>
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianEmail" class="form-control" placeholder="Email">
                  <i class="fas fa-envelope fa-lg fa-fw"></i>
                </div>
              </div>
            </div>
            <div class="form-row mb-4">
              <div class="col">
                <div class="inputWithIcon">
                  <input type="date" id="physicianJoining" class="form-control" placeholder="Joining Date">
                  <i class="fas fa-calendar-alt fa-lg fa-fw" aria-hidden="true"></i>
                </div>
              </div>
              <div class="col">
                <div class="inputWithIcon">
                  <input type="text" id="physicianID" class="form-control" placeholder="ID" value="PHN-0001" disabled="">
                  <i class="fas fa-id-card fa-lg fa-fw"></i>
                </div>
              </div>
            </div>
            <button type="button" class="btn btn-sm btn-block my-2 primary-bg-color">Save</button>
            <button type="button" class="btn btn-sm btn-block my-2 secondary-bg-color">Cancel</button>
          </form>
        </div>
        </div>
      </div>
    </div>
    <!-- //Physician's Details Modal -->

    <!-- Edit Appointment Modal -->
    <div class="modal fade" id="editAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="editAppointmentModal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header px-3 pt-3 pb-2">
            <h4 class="modal-title-table w-100" id="editAppointmentModal">Edit Appointment</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span class="modal-close-btn" aria-hidden="true"><i class="fas fa-times-circle"></i></span>
            </button>
          </div>    
          <div class="modal-body pt-0">
            <form>
              <div class="form-row">
                <div class="col">
                  <select class="mdb-select md-form" searchable="Search here..">
                    <option value="" disabled selected>Select Patient</option>
                    <option value="1">Sample Patient</option>
                    <option value="2">Sample Patient</option>
                    <option value="3">Sample Patient</option>
                    <option value="3">Sample Patient</option>
                    <option value="3">Sample Patient</option>
                  </select>
                </div>
                <!-- Auto fill up after choosing Patient -->
                <div class="col">
                  <select class="mdb-select md-form" searchable="Search here.." disabled>
                    <option value="" disabled selected>Physician Name</option>
                    <option value="1">Sample Physician</option>
                    <option value="2">Sample Physician</option>
                    <option value="3">Sample Physician</option>
                    <option value="3">Sample Physician</option>
                    <option value="3">Sample Physician</option>
                  </select>
                </div>
              </div>
              <!-- Auto fill up after choosing Patient -->
              <div class="form-row mb-4">
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="text" id="patientMobile" class="form-control" placeholder="Mobile">
                    <i class="fas fa-phone fa-lg fa-fw" aria-hidden="true"></i>
                  </div>
                </div>
                <div class="col">
                  <div class="inputWithIcon">
                    <input type="email" id="patientEmail" class="form-control" placeholder="Email">
                    <i class="fas fa-envelope fa-lg fa-fw"></i>
                  </div>
                </div>
              </div>
              <div class="form-row">
                <div class="col">
                  <label for="poTreatmentDateTime" class="chart-form-label">Set Date/Time</label>
                  <input type="datetime-local" id="poTreatmentDateTime" class="form-control mb-4" placeholder="Select Date/Time">
                </div>
              </div>
            </form>
        </div>
        </div>
      </div>
    </div>
    <!-- //Edit Appointment Modal -->

    <!-- //MODALS -->

    <!--Double navigation-->
    <header>
        <!-- Sidebar navigation -->
        <div id="slide-out" class="side-nav fixed wide chart-side-nav">
            <ul class="custom-scrollbar black-text">
                <!-- Logo -->
                <li>
                    <div class="logo-wrapper sn-ad-avatar-wrapper p-2">
                        <a href="#"><img src="img/chartlogo.png" class="rounded-circle"><span
                                class="logo-wrapper-text">C.H.A.R.T</span></a>
                    </div>
                </li>
                <!--/. Logo -->
                <!-- Side navigation links -->
                <li class="chart-side-nav-acct text-center mb-4">
                    <img src="img/admin.jpg" alt="thumbnail" class="img-thumbnail">
                    <div class="my-1 chart-side-nav-acct-details">
                        <div>Sample Name</div>
                        <div style="font-size: 12px; color: grey;">User Type</div>
                    </div>
                </li>
                <li>
                    <ul class="collapsible collapsible-accordion">
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r side-nav-link active"><i class="fas fa-clinic-medical"></i> Dashboard</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="appointments"><i class="fas fa-calendar-check"></i> Appointments</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="demographics"><i class="fas fa-user-circle"></i>Demographics</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="prescription"><i class="fas fa-file-prescription"></i> Prescription</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="dialysis_treatment"><i class="fas fa-file-medical"></i> Dialysis Treatment</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="laboratory_panels"><i class="fas fa-flask"></i> Laboratory Panels</a>
                        </li>
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="progress_notes"><i class="fas fa-notes-medical"></i> Progress Notes</a>
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
                        <li class="my-2 text-left"><a class="collapsible-header waves-effect arrow-r" href="clinic_administration"><i class="fas fa-cog"></i>Clinic Administration</a>
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
                        <img src="img/admin.jpg" class="rounded-circle z-depth-0" alt="avatar image" height="35">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item chart-nav-dropdown-item" href="./accounts/user_profile/physician"><i class="fas fa-user mr-2 chart-nav-icon rounded-circle"></i>My Profile</a>
                        <a class="dropdown-item chart-nav-dropdown-item" href="php/logout.php"><i class="fas fa-sign-out-alt mr-2 chart-nav-icon rounded-circle"></i>Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- /.Navbar -->
    </header>
    <!--/.Double navigation-->

    <main class="main mx-5">

        <div id="widgetData"></div>

        <!-- SCHEDULE FOR THE DAY -->
        <div class="card chart-card">
            <div class="card-body chart-card table-responsive">
              <p class="table-title">Schedule for the Day</p>
                <input class="form-control mb-4" id="schedTodayTableS" type="text" placeholder="Type something to search">

                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Patient No.</th>
                        <th>Name</th>
                        <th>Nephrologist</th>
                        <th>Mobile</th>
                        <th>Last Treatment</th>
                        <th>Status</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody id="schedTodayTable">
                      <tr>
                        <td>1</td>
                        <td>Sample Name</td>
                        <td>Sample Name</td>
                        <td>09123456789</td>
                        <td>4/15/21</td>
                        <td>Sample Status</td>
                        <td style="padding-top: 1.3%!important;">
                          <div class="d-flex">
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Prescription</a>
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Treatment</a>
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Labs</a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>Sample Name</td>
                        <td>Sample Name</td>
                        <td>09123456789</td>
                        <td>4/15/21</td>
                        <td>Sample Status</td>
                        <td style="padding-top: 1.3%!important;">
                          <div class="d-flex">
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Prescription</a>
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Treatment</a>
                            <a class="flex-fill actions-shortcuts mr-2 p-2">Labs</a>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
            </div>
        </div>


        <!-- New Appointments Table -->
        <div class="card chart-card">
            <div class="card-body chart-card table-responsive">
                <div class="d-flex flex-row">
                    <div class="flex-fill">
                        <p class="table-title">New Appointments</p>
                    </div>
                    <div class="flex-fill">
                        <ul class="nav nav-tabs new-appointments-tab py-auto float-right p-0" id="newAppointmentsTab" role="tablist">
                          <li class="nav-item pl-0">
                            <a class="nav-link active black-text" id="table-view-tab" data-toggle="tab" href="#table" role="tab" aria-controls="table"
                              aria-selected="true"><i class="fas fa-list mr-2"></i> List</a>
                          </li>
                          <li class="nav-item px-2">
                            <a class="nav-link black-text" id="calendar-view-tab" data-toggle="tab" href="#calendar" role="tab" aria-controls="calendar"
                              aria-selected="false"><i class="fas fa-calendar-alt mr-2"></i> Calendar</a>
                          </li>
                        </ul>
                    </div>
                </div>
                
                <div class="tab-content px-0" id="newAppointmentsTabContent">
                  <div class="tab-pane fade show active" id="table" role="tabpanel" aria-labelledby="table-view-tab">
                  
                    <div id="newAppointmentsGridData"></div>
                    
                  </div>
                  <div class="tab-pane fade" id="calendar" role="tabpanel" aria-labelledby="calendar-view-tab">
                      <!-- <div id="Calendar" class="tabcontent">
                          <div class="container" >
                            <div class="calendar">
                              <div class="month"> 
                                <i class="fas fa-angle-left prev"></i>
                                <div class="date">
                                  <h1></h1>
                                  <p></p>
                                </div>
                                <i class="fas fa-angle-right next"></i>
                              </div>
                              <div class="weekdays">
                                <div>Sun</div>
                                <div>Mon</div>
                                <div>Tue</div>
                                <div>Wed</div>
                                <div>Thu</div>
                                <div>Fri</div>
                                <div>Sat</div>
                              </div>
                            <div class="days">
                              
                            </div>
                          </div>
                      </div>
                    </div> -->
                    <iframe src="components/calendar.php" id="apptCalendar"></iframe>
                  </div>
                </div>
                
            </div>
        <!-- Calendar View -->

</div>

        <!-- Calendar View -->

        <!-- Physician List Table -->
        <div class="card chart-card">
            <div class="card-body chart-card table-responsive">
                <p class="table-title">Physicians List</p>
                <div id="physicianListGridData"></div>
            </div>
        </div>

    </main>

    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- MDBootstrap Datatables  -->
    <script type="text/javascript" src="js/addons/datatables.min.js"></script>

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
    $(document).ready(function() {
        $('#dtScheduleToday').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });
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

    <!-- Search Table -->
    <script type="text/javascript">
      // Filter table
      $(document).ready(function(){
        $("#schedTodayTableS").on("keyup", function() {
          var value = $(this).val().toLowerCase();
          $("#schedTodayTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
          });
        });
      });
    </script>
  
    <!--Calendar Script -->

    <script type="text/javascript">
    $('#scheduleTodayGridData').load('php/scheduleTodayGridData.php');
    $('#newAppointmentsGridData').load('php/newAppointmentsGridData.php');
    $('#widgetData').load('php/widgetData.php');
    $('#physicianListGridData').load('php/physicianListGridData.php');
    </script>
    
    
  </div>
</body>

</html>