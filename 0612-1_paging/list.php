<?php
    include "db_info.php";
    //게시물을 잘라서 가져온다. 0, 10, 20, 30...
    $no = (isset($_GET['no']))? $_GET['no'] : 0 ; // 게시물 시작 인덱스 번호
    
   
    $page_size = 10; //한 페이지 내 게시물 갯수 (레코드 수)
    $page_list_size = 10; // 한 리스트 내 페이지 갯수

    $PHP_SELF = $_SERVER['PHP_SELF']; //자기 자신의 서버 URL 경로

    $query = "SELECT * from board limit $no,$page_size";

    $result = mysql_query($query,$conn);

    $query = "SELECT count(*) from board"; //테이블 내 총 레코드 갯수
    $count = mysql_query($query,$conn);
    $rs = mysql_fetch_row($count);
    $total_row = $rs[0]; // 게시물의 총 갯수와 총 페이지수 계산
    echo $total_row; //352

    //음수일때 예외 처리
    if($total_row <=0) {
        $total_row = 0;
    }

    //인덱스(페이지) 번호: 0 1  2  3  4  5
    //시작 게시물 번호:    0 10 20 30 40 50
    $total_page = floor(($total_row -1) / $page_size);
    // 352-1 / 10 = 35.1  -> 35
    // 10-1 / 10 = 0.9 -->floor(절삭.소수점) -> 0

    $current_page = floor($no / $page_size);
    // 20 / 10
?>

<table border=1>
    <tr>
        <td>번호</td>
        <td>제목</td>
        <td>글쓴이</td>
        <td>날짜</td>
        <td>조회수</td>
    </tr>
<?php
    while(list($id,$name,$email,$pass,$title,$content,$wdate,$ip,$view)=mysql_fetch_array($result)){
?>
    <tr>
        <td align=center><a href="read.php?id=<?=$id?>"><?=$id?></td>
        <td><?=$title?></td>
        <td><?=$name?></td>
        <td><?=$wdate?></td>
        <td><?=$view?></td>
    </tr>
<?php
}
?>
<tr align = "center">
    <td colspan=5>
        <?php
            //페이지 리스트 첫번째 페이지 구하기
            //0, 10, 20, 30, 40 ... 1/10 = int(0.1) = 0의미
            $start_page= (int)($current_page / $page_list_size) * $page_list_size; // 현재 페이지가 10을 넘어서는지 체크함
            

            //페이지리스트 마지막 페이지 구하기
            //0부터 시작함 첫번째 페이지 + 9페이지 = 마지막페이지
            $end_page = $start_page + $page_list_size -1;
            //그런데 마지막리스트가 10개가 안될 수도 있으므로, 마지막 페이지와 전체 페이지를 비교해서 다시 계산
            if($total_page < $end_page) {
                $end_page = $total_page;
            }

            #이전 페이지 리스트 필요할때
            //시작지가 페이지 리스트보다 클때
            if($start_page >= $page_list_size){
                $pre_list = ($start_page -1) * $page_size;
                echo  "<a href=\"$PHP_SELF?no=$pre_list\"> << </a>";
            }
            ##페이징
             for ($i= $start_page; $i <= $end_page; $i++) {
                 $page = $i * $page_size; //$page: 전달될 페이지 값을 no로 변환
                 $page_num = $i+1; //보여질 페이지 번호
                 echo "<a href=\"$PHP_SELF?no=$page\">";
                 echo "$page_num ";
                 echo "</a>";
             }

             ## 다음페이지 리스트 필요할때
             //총페이지가 마지막 리스트페이지보다 클때
             if($total_page > $end_page) {
                $next_list = ($end_page +1) * $page_size; 
                echo "<a href=\"$PHP_SELF?no=$next_list\"> >> </a>";
             }

        ?>
        <!--1 2 3 4 5 6 7 8 9 10-->
    </td>
</tr>
</table>
<br>
<a href="write.php">글쓰기</a>

