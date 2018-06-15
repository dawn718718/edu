<?php
include "db_info.php" ;
    //id,view는 안적어도됨
$id = $_GET['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$pass = $_POST['pass'];
$title = $_POST['title'];
$content = $_POST['content'];
$remoteAddr = $_SERVER['REMOTE_ADDR'];


$query = "UPDATE board set 
                    name = '$name',
                    email = '$email',
                    pass = '$pass',
                    title  = '$title',
                    content  = '$content',
                    wdate  = now(),
                    ip  = '$remoteAddr'
            where   id= $id";

  $result = mysql_query($query,$conn);
  if ($result) {
      echo "<meta http-equiv='Refresh' content='1; url=read.php?id=$id'>"; //1초후에 저 url로 가라
  }else {
      echo "저장실패";
  }

?>