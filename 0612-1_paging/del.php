<?php
include "db_info.php";

 $id = $_POST['id'];
 $pass = $_POST['pass'];

 //패스워드 체크
 $query = "SELECT count(*) from board where id=$id and pass='$pass'";
 $rs = mysql_query($query,$conn);
 $row = mysql_fetch_row($rs);
 if($row[0]==0) {
     die ("삭제 실패.mysql_error()");
 } 

 
 //패스워드 체크 후
    $query = "DELETE from board where id=$id";
    $result = mysql_query($query,$conn);

    if($result) {
        echo "<meta http-equiv='Refresh' content='1; url=list.php'>"; //1초후에 저 url로 가라
    }else {
        echo "실패";
    }
?>