<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <title>폼유효성검사</title>
    
    <style>
    td {
        color:rgb(60, 60, 60);
        font-size:18px;
        font-weight: bold;
        padding: 10px;
        
    }

    h3 {
        color:tomato; font-size:30px;
    }

    #inputButton1 {
        font-size:18px;
        margin-left:5px; 
        width:230px; height:45px; 
        font-weight:bold;
        background-color: white;
        color: black;
        border: 2px solid #555555;
    }
    #inputButton1:hover {
        background-color: #555555;
        color: white;
    }
    #inputButton2 {   
        font-size:18px; margin-left:20px; width:120px;
        font-weight:bold;height:45px;
        background-color: white;
        color: black;
        border: 2px solid #555555;
    }
    #inputButton2:hover {
        background-color: #555555;
        color: white;
    }
    
</style>
<script>

        //정규표현식 변수
        var regNameError = /^[0-9]+$/g;
        var regMobile = /^\d{3}-\d{3,4}-\d{4}$/;
        var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        var regPw = /^[0-9a-zA-Z]{6,8}$/;
        
    
        $(document).ready(function(){
            $("#myForm").submit(function(){
                
                //이름 검증
                
                //var myNameVal = $("#myForm").children("input[name='name']").val();
                var myNameVal = $("input[name='name']").val();
                var myNameValLeng = myNameVal.length;
                if(myNameValLeng==0 || myNameValLeng<2 || myNameValLeng>8){
                alert('이름은 2-8자리로 입력하세요');
                $("input[name='name']").focus()
                return false;
                } else if (myNameVal.match(regNameError)) {
                alert('이름에 숫자는 불가합니다');
                $("input[name='name']").focus()
                return false;
                }
    
                //성별 검증
                // var myGenderVal = $("input[name='gender']").val();
                //alert($("input[name='gender']:checked"));
                var genderLength = $("input[name='gender']:checked").length;
                if (genderLength==0){
                    alert('적어도 하나의 성별을 입력해야합니다');
                    return false;
                }
                
                //휴대폰 검증
                var myMobileVal=$("input[name='phone']").val();
                if (!myMobileVal.match(regMobile)) {
                alert('올바른 모바일 번호 형식 ###-####-#### 으로 입력하세요')
                $("input[name='phone']").focus();
                return false;
                }   
                
                //이메일 검증
                var myEmailVal=$("input[name='email']").val();
                if(!myEmailVal.match(regEmail)) {
                    alert('올바른 이메일 형식으로 입력하세요.');
                    $("input[name='email']").focus();
                    return false;
                }
                
                //패스워드 검증
                var myPwVal=$("input[name='pw']").val();
                if (!myPwVal.match(regPw)) {
                alert('패스워드가 특수문자를 포함하고 있거나, 6-8자리 글자가 아닙니다');
                $("input[name='pw']").focus();
                return false;
                }

                //패스워드 검증의 검증
                var myPwChkVal=$("input[name='pwChk']").val();
                if(myPwChkVal!==myPwVal){
                    alert('입력한 패스워드가 다릅니다. 다시 확인하십시오');
                    $("input[name='pwChk']").focus();
                    return false;
                }
                
                //취미 검증
                var a=0;
                var myHobbyLength=$("input[name='hobby']:checked").length;
                if (myHobbyLength==0){
                    alert('적어도 하나의 취미는 입력해야합니다');
                    $("input[name='hobby']").focus();
                    return false;
                }
                
                //도시 검증
                
                //var myCitySelLeng=$("select#city option:selected").length;
                //alert(("select#city option:selected").val());
                if ($("select#city option:selected").val()=="select"){
                    
                    alert('사는 곳을 체크해야 합니다');
                    $("select#city").focus();
                    return false;
                }
          

            });//제출 버튼 이벤트 끝
    
        });//끝
    
    
     
         
</script> 
</head>
<body>
    <h3>회원 신청서 </h3>
    <form id="myForm" onsubmit="return checkForm()"> <!--post="get"이 디폴트임. -->
        
        <table>
            <tr>
                <td><?php echo "강제조항" ?>이름*</td>
                <td><input type="text" id="name" name="name"></td>
            </tr>
            <tr>
                <td>성별*</td>
                <td><input type="radio" name="gender" value="m">남성<input type="radio" name="gender" value="w">여성</td>
            </tr>
            <tr>
                <td>휴대폰*</td>
                <td><input type="tel" id="phone" name="phone"></td>
            </tr>
            <tr>
                <td>Email*</td>
                <td><input type="text" id="email" name="email"></td>
            </tr>
            <tr>
                <td>패스워드*<br><span style="font-size:12px">(6-8글자의 알파벳과 숫자만)</span></td>
                <td><input type="password" id="pw" name="pw"></td>
            </tr>
            <tr>
                <td>패스워드검증*</td>
                <td><input type="password" id="pwChk" name="pwChk"></td>
            </tr>
            <tr>
                <td>취미*</td> <!--라디오버튼-->
                <td><input type="checkbox" name="hobby" value="love">연애
                    <input type="checkbox" name="hobby" value="cooking">요리
                    <input type="checkbox" name="hobby" value="travel">여행<br>
                    <input type="checkbox" name="hobby" value="computer">컴퓨터
                    <input type="checkbox" name="hobby" value="car">자동차
                    <input type="checkbox" name="hobby" value="shop">쇼핑
                </td>
            </tr>
            <tr>
                <td>사는 곳*</td> <!--드랍다운 선택-->
                <td><select name="city" id="city" style="font-size:15px;">
                        <option value="select">선택</option>
                        <option value="seoul">서울</option>
                        <option value="busan">부산</option>
                        <option value="daegu">대구</option>
                        <option value="ulsan">울산</option>
                        <option value="daejeon">대전</option>
                        <option value="jeju">제주</option>
                        <option value="others">기타</option>
                    </select>
                </td>
            </tr>
        </table><br>
        <input id="inputButton1" type="submit" value="제출" onmouseover="changeColor()">
        <input id="inputButton2" type="reset" value="지우기" onClick="changeColor()">
        
       
       
       
    </form>
</body>
</html>
