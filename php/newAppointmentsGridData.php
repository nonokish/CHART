<?php
    require '../db.php';
    $sql = "SELECT a.id,p.id AS patient_id, p.patient_no_id,ph.first_name AS ph_fname, ph.last_name AS ph_lname, p.image, p.sex, p.first_name, p.last_name, p.phone_no, p.email, a.appointment_date FROM appointments a INNER JOIN patients p ON a.patient_id = p.id INNER JOIN physicians ph ON p.nephrologist_doctor_id = ph.id WHERE a.is_active = 1 AND a.is_arrived = 0";
    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result) > 0){
        echo'
        <table id="dtNewAppointments" class="table chart-datatable table-hover" cellspacing="0">
            <thead>
                <tr>
                    <th class="">ID

                    </th>
                    <th class="">Photo

                    </th>
                    <th class="">Name

                    </th>
                    <th class="">Gender

                    </th>
                    <th class="">Date

                    </th>
                    <th class="">Time

                    </th>
                    <th class="">Mobile

                    </th>
                    <th class="">Email

                    </th>
                    <th class="">Physician

                    </th>
                </tr>
            </thead>
            <tbody>
                
           
        ';

        while($row = mysqli_fetch_assoc($result)){
            $id = $row['id'];
            $patient_id = $row['patient_id'];
            $patient_no_id = $row['patient_no_id'];
            $image = $row['image'];
            $first_name = $row['first_name'];
            $last_name = $row['last_name'];
            $phone_no = $row['phone_no'];
            $email = $row['email'];
            $sex = $row['sex'];
            $appointment_date = $row['appointment_date'];
            $ph_fname = $row['ph_fname'];
            $ph_lname = $row['ph_lname'];

            $newDate = date('Y-m-d', strtotime($appointment_date));
            $newTime = date('H:i', strtotime($appointment_date));
            echo'
                <tr>
                    <td>'.$patient_id.'</td>
                    <td>
                        <img src="uploads/patient_image/'.$image.'" alt="thumbnail" class="datatable-img rounded-circle">
                    </td>
                    <td>'.$first_name.' '.$last_name.'</td>
                    <td>'.$sex.'</td>
                    <td>'.$newDate.'</td>
                    <td>'.$newTime.'</td>
                    <td>'.$phone_no.'</td>
                    <td>'.$email.'</td>
                    <td>Dr. '.$ph_fname.' '.$ph_lname.'</td>
                </tr>
            ';
        }

        echo'
            </tbody>
        </table>
        ';
    }
?>