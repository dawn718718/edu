<?
$id = $_GET['id'];
?>
비밀번호 확인:
<form action="del.php" method="post">
    <input type="password" name = "pass">
    <input type="hidden" name="id" value="<?=$id?>">
    <input type="submit" value="전송">
</form>