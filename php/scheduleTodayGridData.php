<html>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#dtScheduleToday').DataTable();
            $('.dataTables_length').addClass('bs-select');
        });
    </script>
</html>
<?php
    require '../db.php';
    $sql = "SELECT ass.assessment_no_id, ass.id,ass.date_created,p.first_name, p.last_name, p.middle_name, p.name_ext, p.phone_no, p.email, ph.first_name AS ph_fname ,ph.last_name AS ph_lname FROM assessments ass INNER JOIN patients p ON ass.patient_id = p.id INNER JOIN physicians ph ON p.nephrologist_doctor_id = ph.id WHERE date(ass.date_created) = CURRENT_DATE";
    $result = mysqli_query($conn, $sql);
    echo'
        <table id="dtScheduleToday" class="table chart-datatable table-hover" cellspacing="0">
            <thead>
                <tr>
                    <th class="">Assessment Number

                    </th>
                    <th class="">Name

                    </th>
                    <th class="">Nephrologist

                    </th>
                    <th class="">Mobile

                    </th>
                    <th class="">Email

                    </th>
                    <th class="">Date & Time

                    </th>
                    <th class="">Actions

                    </th>
                </tr>
            </thead>
            <tbody>
    ';
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_assoc($result)){
            // foreach ($row as $key => $value) {
            //     // echo "$".htmlspecialchars($key)." = $'row['".htmlspecialchars($key)."'];<br>";
            //     // echo "$".htmlspecialchars($key).",";
            // }

            $assessment_no_id = $row['assessment_no_id'];
            $id = $row['id'];
            $date_created = $row['date_created'];
            $first_name = $row['first_name'];
            $last_name = $row['last_name'];
            $middle_name = $row['middle_name'];
            $name_ext = $row['name_ext'];
            $phone_no = $row['phone_no'];
            $email = $row['email'];
            $ph_fname = $row['ph_fname'];
            $ph_lname = $row['ph_lname'];

            $pat_name = "$last_name, $first_name $middle_name $name_ext";
            $doc_name = "Dr. $ph_fname $ph_lname";

            $exampleDate = strtotime($date_created);
            $newDate = date('Y-m-d\TH:i', $exampleDate);
            echo'
                <tr>
                    <td>'.$assessment_no_id.'</td>
                    <td>'.$pat_name.'</td>
                    <td>'.$doc_name.'</td>
                    <td>'.$phone_no.'</td>
                    <td>'.$email.'</td>
                    <td>'.$newDate.'</td>
                    <td>
                        <a type="button" class="btn btn-sm btn-rounded primary-bg-color white-text assess-btn" href="./assessment/admission_assessment/?assessmentId='.$id.'">Assess</a>   
                    </td>
                </tr>
            ';
        }
    }else{
        echo (mysqli_error($conn));
    }
    echo'
            </tbody>
        </table>';
?>