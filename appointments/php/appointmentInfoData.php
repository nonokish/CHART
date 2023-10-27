<?php
    require '../../db.php';

    $id = $_POST['appointmentId'];
    
    $sql = "SELECT * FROM appointments WHERE id = $id";

    $sql = "SELECT a.id, a.appointment_date,p.phone_no, p.email,p.last_name AS patient_lname,p.first_name AS patient_fname, ph.first_name, ph.last_name FROM appointments a INNER JOIN patients p ON a.patient_id = p.id INNER JOIN physicians ph ON p.nephrologist_doctor_id = ph.id WHERE a.id = $id";

    $result = mysqli_query($conn,$sql);
    
    if(mysqli_num_rows($result) > 0){
        $row = mysqli_fetch_assoc($result);
        $id = $row['id'];
        $mobile = $row['phone_no'];
        $email = $row['email'];
        $firstName = $row['first_name'];
        $lastname = $row['last_name'];

        $appointment_date = $row['appointment_date'];
        $exampleDate = strtotime($appointment_date);
        $newDate = date('Y-m-d\TH:i', $exampleDate);
        
        $patient_lname = $row['patient_lname'];
        $patient_fname = $row['patient_fname'];
        echo"$mobile,$email,$firstName,$lastname,$newDate,$patient_lname,$patient_fname,$id";
    }
?>