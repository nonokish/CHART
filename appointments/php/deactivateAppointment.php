<?php
    require '../../db.php';

    $id = $_POST['appointmentId'];

    $sql = "UPDATE appointments SET is_active = 0 WHERE id = $id";

    $result = mysqli_query($conn,$sql);
    if($result){
        header("location:../?deactivate=true");
    }
    
?>