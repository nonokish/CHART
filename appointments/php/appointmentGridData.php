<html>
<script type="text/javascript">
    $(document).ready(function () {
    $('#appointmentTable').DataTable();
    $('.dataTables_length').addClass('bs-select');
  });
  </script>
    <script type="text/javascript">
        $('#appointmentsTable').DataTable( {
            "order": [[ 5, "desc" ]]
        } );
    </script>
</html>
<?php
    require '../../db.php';
    $sql = "SELECT a.id,p.id AS patient_id, p.patient_no_id, p.image, p.first_name, p.last_name, p.phone_no, p.email, a.appointment_date FROM appointments a INNER JOIN patients p ON a.patient_id = p.id WHERE a.is_active = 1 AND a.is_arrived = 0";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) > 0){
        echo'
            <table id="appointmentTable" class="table table-hover mb-0" cellspacing="0" width="100%" data-sort-name="date" data-sort-order="desc">
                <thead>
                    <tr>
                        <th>ID
                        </th>
                        <th>Photo
                        </th>
                        <th>Name
                        </th>
                        <th>Mobile
                        </th>
                        <th>Email
                        </th>
                        <th>Date/Time
                        </th>
                        <th>Actions
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
            $appointment_date = $row['appointment_date'];

            echo '
                <tr>
                    <td>'.$patient_no_id.'</td>
                    <td><img src="../uploads/patient_image/'.$image.'" alt="thumbnail" class="datatable-img rounded-circle"></td>
                    <td>'.$first_name.' '.$last_name.'</td>
                    <td>'.$phone_no.'</td>
                    <td>'.$email.'</td>
                    <td>'.$appointment_date.'</td>
                    <td>
                        <a type="button" onclick="selectPackage('.$id.','.$patient_id.')" class="btn btn-sm btn-rounded white-text arrive-btn" data-toggle="modal" data-target="#selectPackageModal">Arrive</a>
                        <a type="button" onclick="appointmentInfoData('.$id.')" class="btn-floating btn-vsm edit-btn"><i class="action-btn fas fa-clipboard-list" aria-hidden="true" data-toggle="modal" data-target="#editAppointmentModal"></i></a>
                        <a type="button" onclick="deactivateAppointment('.$id.')" class="btn-floating btn-vsm delete-btn" data-toggle="modal" data-target="#deleteModal"><i class="fas fa-times"></i></a>
                    </td>
                </tr>
            ';
        }

        echo '
            </tbody>
        </table>
        ';
    } else {
        echo'
        <table id="appointmentTable" class="table table-hover mb-0" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>ID
                        </th>
                        <th>Photo
                        </th>
                        <th>Name
                        </th>
                        <th>Mobile
                        </th>
                        <th>Email
                        </th>
                        <th>Date/Time
                        </th>
                        <th>Actions
                        </th>
                    </tr>
                </thead>
            <tbody>
            </tbody>
        </table>
        ';
    }
?>