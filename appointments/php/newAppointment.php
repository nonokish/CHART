<?php
    require '../../db.php';
    
    foreach ($_POST as $key => $value) {
        echo "Field ".htmlspecialchars($key)." is ".htmlspecialchars($value)."<br>";
    }

    $userId = $_SESSION['user_id'];

    $patientId = mysqli_real_escape_string($conn, trim($_POST['patient']));
    $appointmentDate = mysqli_real_escape_string($conn, trim($_POST['appointmentDate']));

    $sql = "INSERT INTO appointments (patient_id, appointment_date,created_by) VALUES
        ('$patientId','$appointmentDate','$userId')";
    $result = mysqli_query($conn, $sql);
    
    if($result){
        header("location:../?success=true");
    } else {
        echo (mysqli_error($conn));
    }
?>