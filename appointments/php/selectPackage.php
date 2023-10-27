<?php
    require '../../db.php';
    
    foreach ($_POST as $key => $value) {
        echo "Field ".htmlspecialchars($key)." is ".htmlspecialchars($value)."<br>";
    }

    $userId = $_SESSION['user_id'];

    $patientId = mysqli_real_escape_string($conn, trim($_POST['patientId']));
    $appointmentId = mysqli_real_escape_string($conn, trim($_POST['appointment_id']));
    $package = mysqli_real_escape_string($conn, trim($_POST['package']));

    $appSql = "UPDATE appointments SET is_arrived = 1 WHERE id = $appointmentId";
    $appResult = mysqli_query($conn, $appSql);
    if($appResult){

        $getAssessmentId = "SELECT assessment_no_id FROM assessments ORDER BY date_created DESC LIMIT 1";
        $getAssessmentIdResult = mysqli_query($conn, $getAssessmentId);

        if(mysqli_num_rows($getAssessmentIdResult)<1){
            $assessment_no_id = "ASS-100000";
        }else{
            $row = mysqli_fetch_assoc($getAssessmentIdResult);
            $id = $row['assessment_no_id'];

            $tempId = explode("-", $id);
            $tempId[1] +=1;
            $assessment_no_id = "ASS-".$tempId[1];
        }

        $asseSql = "INSERT INTO assessments (patient_id,appointment_id,created_by,status,assessment_no_id) VALUES
        ('$patientId','$appointmentId','$userId','ongoing','$assessment_no_id')";
        $asseResult = mysqli_query($conn, $asseSql);

        $getBillingId = "SELECT billing_no_id FROM billings ORDER BY date_created DESC LIMIT 1";
        $getbillingIdResult = mysqli_query($conn, $getBillingId);

        if(mysqli_num_rows($getbillingIdResult)<1){
            $billing_no_id = "BIL-100000";
        }else{
            $row = mysqli_fetch_assoc($getbillingIdResult);
            $id = $row['billing_no_id'];

            $tempId = explode("-", $id);
            $tempId[1] +=1;
            $billing_no_id = "BIL-".$tempId[1];
        }

        $sql = "INSERT INTO billings (patient_id, appointment_id,created_by,status,billing_no_id) VALUES
        ('$patientId','$appointmentId','$userId','pending','$billing_no_id')";
        $result = mysqli_query($conn, $sql);
        $last_id = $conn->insert_id;

        if($result && $asseResult){
            $billSql = "INSERT INTO billing_items (billing_id,item_id,created_by) VALUES
            ($last_id,$package,$userId)";
            $billResult = mysqli_query($conn, $billSql);

            if($billResult){
                header("location:../?success=true");
            } else {
                echo (mysqli_error($conn));
            }
        } else {
            echo (mysqli_error($conn));
        }
    } else {
        echo (mysqli_error($conn));
    }
    
?>