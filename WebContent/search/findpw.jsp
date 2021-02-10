<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/layout.css">
    <link rel="stylesheet" href="../css/findpw.css">  
    <title>findPW</title>
</head>
<body>     
    <header>       
        <div class="header-wrap">   
             <!-- LOGO -->
            <h1 class="logo"><a href="#">C-it</a></h1>        
            <!-- 헤더왼쪽-flex -->            
            <ul id="header_01">            
                <li><a href="#" class="header_01_a">Notice</a></li>
                <li><a href="#" class="header_01_a">News</a></li>
                <li><a href="#" class="header_01_a">Board</a></li>
                <li><a href="#" class="header_01_a">MeetUp</a></li> 
            </ul> 
            <!-- 헤더오른쪽-flex -->
            <ul id="header_02">
                <li><a href="" class="header_02_a">Sign in</a></li>
                <li><a href="" class="header_02_a">Join us</a></li>
            </ul>
        </div>
    </header>     
    <div>
        <!-- 제목 -->
        <div id="section_title"><h1>Find Password</h1></div>
        <!-- 컨텐츠내용 -->
        <div id="section-contents-wrap"></div>
            <div id="section_contents">
                <div id="box-name">비밀번호 찾기</div>
                <div id="box">
                    <div class="box-div" id="box-div-text">비밀번호는 가입시 입력하신 아이디,이메일을 통해 찾을 수 있습니다.</div>
                    <div class="box-div input"><input type="text"  placeholder="이름" ><br></div>
                    <div class="box-div input"><input type="text"  placeholder="아이디" ><br></div>
                    <div class="box-div input"><input type="email" placeholder="이메일"><br></div>
                    <div class="box-div input"><input type="submit" value="찾기"></input></div>
                </div>
            </div> 
        </div>       
    </section>
    <footer>
        <!-- 푸터 -->
        <div class="footer">
            <a id="logo">C-it</a>
            <a>상호명:C-it| 대표명:김효신| 문의:Aaa@gmail.com</a>
            <a>copyright 2021 ⓒHYOSHIN Corp. All Rights Reserve.</a>
        </div>
    </footer>
</body>
</html> 