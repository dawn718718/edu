<?php
  include "db_info.php" ;
    //id,view는 안적어도됨
$name = $_POST['name'];
$email = $_POST['email'];
$pass = $_POST['pass'];
$title = $_POST['title'];
$content = $_POST['content'];
$remoteAddr = $_SERVER['REMOTE_ADDR'];


  $query = "INSERT INTO board(id,name,email,pass,title,content,wdate,ip,view) 
                        values(null, '$name','$email','$pass','$title','$content',now(),'$remoteAddr',0)";
  $result = mysql_query($query,$conn);
  if ($result) {
      echo "<meta http-equiv='Refresh' content='1; url=list.php'>";
  }else {
      echo "저장실패";
  }
?>