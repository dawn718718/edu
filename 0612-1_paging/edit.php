<?php
    include "db_info.php";
    $id = $_GET['id'];
    $query = "SELECT * from board where id=$id";
    $result = mysql_query($query,$conn);
    list($id,$name,$email,$pass,$title,$content,$wdate,$ip,$view)=mysql_fetch_array($result);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>게시판 글쓰기</title>
</head>
<body>
    <!--url 텍스트수가 다 보이면 지저분하므로. get도 가능-->
    <form action="update.php?id=<?=$id?>" method="post"> <!--id를 넘기는 방법-->
    <!--<input type="hidden" name="id" value="<?=$id?>"> -->
        <!--2열 7행-->
        <table border=1>
            <tr>
                <td colspan="2">글쓰기</td>
                <!--<td></td>-->
            </tr>
            <tr>
                <!-- maxlength: 입력 글자수-->
                <td>이름</td>
                <td><input type="text" name="name" size="20" maxlength="10" value="<?=$name?>"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" size="20" maxlength="25" value="<?=$email?>"></td>
            </tr>
            <tr>
                <td>비번</td>
                <td><input type="password" name="pass" size="8" maxlength="8" value="<?=$pass?>"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text" name="title" size="60" maxlength="35" value="<?=$title?>"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea name="content" cols="65" rows="15"><?=$name?></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="글 수정하기">
                    &nbsp;
                    <input type="reset" value="다시 쓰기">
                    &nbsp;
                    <input type="button" value="되돌아가기" onclick="history.back(-1)">
                    &nbsp;
                </td>
                <!--<td></td>-->
            </tr>
        </table>

    </form>
</body>
</html>