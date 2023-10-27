<?php
    require '../../db.php';

    foreach ($_POST as $key => $value) {
        echo "Field ".htmlspecialchars($key)." is ".htmlspecialchars($value)."<br>";
    }
    $userId = $_SESSION['user_id'];
    $appointmentId = $_POST['appointmentId'];
    $appointmentDate = $_POST['appointmentDate'];

    $date = date("Y-m-d");
   
    $sql = "UPDATE appointments SET
        appointment_Date = '$appointmentDate',
        updated_by = '$userId',
        last_updated = '$date'
        WHERE id = $appointmentId
    ";
    echo "$sql";
    $result = mysqli_query($conn, $sql);
    echo mysqli_error($conn);
    if($result){
        header("location:../?appointmentUpdated=true");
    }
?>