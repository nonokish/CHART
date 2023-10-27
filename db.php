<?php
    session_start();
	date_default_timezone_set("Asia/Hong_Kong");
	//Development
    $conn = mysqli_connect("localhost", "root", "","chart");

    //Heroku
    // $conn = mysqli_connect("remotemysql.com", "R0izi9SlGE", "ZIyY2iLo6n","R0izi9SlGE", "3306");
    if(!$conn){
		die("connection failed: " .mysql_connect_error());
	}
?>