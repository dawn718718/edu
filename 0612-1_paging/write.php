<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>게시판 글쓰기</title>
</head>
<body>
    <form action="insert.php" method="post"> <!--url 텍스트수가 다 보이면 지저분하므로. get도 가능-->
        <!--2열 7행-->
        <table border=1>
            <tr>
                <td colspan="2">글쓰기</td>
                <!--<td></td>-->
            </tr>
            <tr>
                <!-- maxlength: 입력 글자수-->
                <td>이름</td>
                <td><input type="text" name="name" size="20" maxlength="10"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" size="20" maxlength="25"></td>
            </tr>
            <tr>
                <td>비번</td>
                <td><input type="password" name="pass" size="8" maxlength="8"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text" name="title" size="60" maxlength="35"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea name="content" cols="65" rows="15"></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="글저장하기">
                    &nbsp;
                    <input type="reset" value="글 다시 쓰기">
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