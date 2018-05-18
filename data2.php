<?php
    $conn = new mysqli("localhost","root","1111","zzz");
    if($conn->connect_error)
        die('connect error:'.$conn->connect_error);
    mysqli_set_charset($conn,'utf8');
    $result = $conn->query("SELECT * FROM USER");
    $output = array();
    $output = $result -> fetch_all(MYSQLI_ASSOC);
    echo json_encode($output,JSON_UNESCAPED_UNICODE);
?>