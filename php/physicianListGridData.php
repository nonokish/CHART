<html>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#dtPhysicians').DataTable();
            $('.dataTables_length').addClass('bs-select');
        });
    </script>
</html>
<?php
    require '../db.php';
    $sql = "SELECT physician_no_id,image,first_name,last_name,email,phone_no FROM physicians WHERE is_active = 1";
    $result = mysqli_query($conn, $sql);
    echo'
        <table id="dtPhysicians" class="table chart-datatable table-hover" cellspacing="0">
            <thead>
                <tr>
                    <th class="">ID

                    </th>
                    <th class="">Photo

                    </th>
                    <th class="">Name

                    </th>

                    <th class="">Email

                    </th>

                    <th class="">Mobile
                </tr>
            </thead>
        <tbody>
    ';
    $row = mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_assoc($result)){
            // foreach ($row as $key => $value) {
            //     echo "$".htmlspecialchars($key)." = $'row['".htmlspecialchars($key)."'];<br>";
            //     echo "$".htmlspecialchars($key).",";
            // }
            $physician_no_id = $row['physician_no_id'];
            $image = $row['image'];
            $first_name = $row['first_name'];
            $last_name = $row['last_name'];
            $email = $row['email'];
            $phone_no = $row['phone_no'];
            $phy_name = "Dr. $first_name $last_name";

            echo'
                <tr>
                    <td>'.$physician_no_id.'</td>
                    <td>
                        <img src="uploads/physician_image/'.$image.'" alt="thumbnail" class="datatable-img rounded-circle">
                    </td>
                    <td>'.$phy_name.'</td>
                    <td>'.$email.'</td>
                    <td>'.$phone_no.'</td>
                </tr>
            ';
        }
    }
    echo'
        </tbody>
    </table>
    ';
    
?>