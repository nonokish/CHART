<?php
    require '../db.php';
    $sql ="SELECT COUNT(*) AS total1 FROM appointments WHERE is_arrived = 0 AND is_active = 1";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $new_app = $row['total1'];

    $sql ="SELECT COUNT(*) AS total2 FROM assessments WHERE status = 'ongoing'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $active_pat = $row['total2'];

    $sql ="SELECT COUNT(*) AS total3 FROM patients WHERE MONTH(date(date_created)) = MONTH(NOW())";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $new_pat = $row['total3'];

    $sql ="SELECT COUNT(*) AS total4 FROM patients WHERE is_active = 1";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $total_pat = $row['total4'];

    $active_pat += $new_app; 
    echo'
    <!--Grid row-->
    <div class="row mt-1">

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <div class="media white rounded">
                <i class="dboard-icon fas fa-calendar-plus fa-lg p-4 rounded-left mr-2"></i>
                <div class="dboard-info media-body">
                    <p class="dboard-title text-muted mb-1 text-right">New Appointments</p>
                    <h5 class="dboard-detail font-weight-bold mb-0 text-right secondary-text-color">'.$new_app.'</h5>
                </div>
            </div>


        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <div class="media white rounded">
                <i class="dboard-icon fas fa-calendar-check fa-lg p-4 rounded-left mr-3"></i>
                <div class="dboard-info media-body">
                    <p class="dboard-title text-muted mb-1 text-right">Active Patients</p>
                    <h5 class="dboard-detail font-weight-bold mb-0 text-right secondary-text-color">'.$active_pat.'</h5>
                </div>
            </div>


        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <div class="media white rounded">
                <i class="dboard-icon fas fa-user-plus fa-lg p-4 rounded-left mr-3"></i>
                <div class="dboard-info media-body">
                    <p class="dboard-title text-muted mb-1 text-right">New Patients</p>
                    <h5 class="dboard-detail font-weight-bold mb-0 text-right secondary-text-color">'.$new_pat.'</h5>
                </div>
            </div>


        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <div class="media white  rounded">
                <i class="dboard-icon fas fa-user fa-lg p-4 rounded-left mr-3"></i>
                <div class="dboard-info media-body">
                    <p class="dboard-title text-muted mb-1 text-right">Patients</p>
                    <h5 class="dboard-detail font-weight-bold mb-0 text-right secondary-text-color">'.$total_pat.'</h5>
                </div>
            </div>


        </div>
        <!--Grid column-->

    </div>
    <!--Grid row-->
    ';
?>