<?php
require '../../db.php';

$username = mysqli_real_escape_string($conn, trim($_POST['loginUsername']));
$password = mysqli_real_escape_string($conn, md5(trim($_POST['loginPassword'])));

$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
$result = mysqli_query($conn,$sql);

if(mysqli_num_rows($result) > 0){
    $row = mysqli_fetch_assoc($result);
    echo "$row ni";
    $_SESSION['user_id'] = $row['id'];
    $_SESSION['user_firstName'] = $row['first_name'];
    $_SESSION['user_lastName'] = $row['last_name'];
    $_SESSION['user_email'] = $row['email'];
    header("location:../../?success=true");
}else{
    header("location:../?success=false");
}

?>