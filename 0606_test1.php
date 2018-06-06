<?php
$conn = mysql_connect("localhost", "root", "1111");
mysql_select_db("jendb",$conn);
mysql_query("set names utf8");
$id = $_POST['id'];
$query = "SELECT name from users where userid='$id'";
$rs = mysql_query($query,$conn);
$output = mysql_fetch_array($rs);
echo json_encode($output);




/*
    $conn = mysql_connect("localhost", "root", "hslim") or die(mysql_error());
    mysql_select_db("zdb", $conn);
    mysql_query("set names utf8");

    $userid = $_POST['userid'];

    $query = "SELECT COUNT(*) AS count
              FROM users
              WHERE userid='$userid'";
    
    $result = mysql_query($query, $conn);
    $output = mysql_fetch_array($result);
    echo json_encode($output);

*/
?>