<?php
    require '../../db.php';

    $id = $_POST['patientId'];

    $sql = "SELECT  p.phone_no, p.email, ph.first_name, ph.last_name FROM patients p INNER JOIN physicians ph ON p.nephrologist_doctor_id = ph.id WHERE p.id = $id";

    $result = mysqli_query($conn,$sql);

    if(mysqli_num_rows($result) > 0){
        $row = mysqli_fetch_assoc($result);
        $mobile = $row['phone_no'];
        $email = $row['email'];
        $firstName = $row['first_name'];
        $lastname = $row['last_name'];
        echo"$mobile,$email,$firstName,$lastname";
    }
?>