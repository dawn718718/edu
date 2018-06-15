<?php
include "db_info.php";
$id = $_GET['id'];
$query = "SELECT * from board where id=$id";
$result = mysql_query($query,$conn);
list($id,$name,$email,$pass,$title,$content,$wdate,$ip,$view)=mysql_fetch_array($result);

?>
<center>
<table border=1>
    <tr>
        <td colspan=4><?=$title?></td>
    </tr>
    <tr>
        <td>글쓴이</td>
        <td><?=$name?></td>
        <td>이메일</td>
        <td><?=$email?></td>
    </tr>
    <tr>
        <td>날짜</td>
        <td><?=$wdate?></td>
        <td>조회수</td>
        <td><?=$view?></td>
    </tr>
    <tr>
        <td colspan=4><pre><?=$content?></pre></td>
    </tr>
    <tr>
        <td colspan=4>
        <a href="list.php">[목록보기]</a> 
        <a href="write.php">[글쓰기]</a>
        <a href="edit.php?id=<?=$id?>">[수정]</a>
        <a href="predel.php?id=<?=$id?>">[삭제]</a>
        </td>
    </tr>
    

</table>
</center>
