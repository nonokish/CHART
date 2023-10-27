<?php 
    require '../../db.php';

    // $sql = "SELECT id,last_name,first_name,middle_name,image from physicians WHERE physician_type ='Affiliated Nephrologist' AND is_active = 1";

    $sql = "SELECT id,last_name,first_name,middle_name,image from patients WHERE is_active = 1";

    $result = mysqli_query($conn,$sql);
    
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_assoc($result)){
            $id = $row['id'];
            $last_name = $row['last_name'];
            $first_name = $row['first_name'];
            $middle_name = $row['middle_name'];
            $image = $row['image'];

            echo'<option value="'.$id.'" data-icon="../uploads/patient_image/'.$image.'" class="rounded-circle">'.$last_name.', '.$first_name.' '.$middle_name.'</option>';
        }
    }
?>