<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<script>
$(function() {
	$("#signCheck").on("click", function() {
		let idVal = $("#id").val();
		let pwVal = $("#pw").val();
		$.ajax({
			type : 'post',
			async : 'true',
			url : "/Cit/signInCheck.do",
			data : {id: idVal, pw : pwVal}, 
			dataType : 'json',
			success : function(data){
						console.log(data.id);
						console.log(data.result);
						if(data.id == "-1" || data.pw =="-1") {
							alert("아이디 또는 비밀번호를 입력해주세요.")
						}else if(data.result == "-1"){
							alert("비밀번호가 다릅니다.")
						}else if(data.result == "0"){
							alert("아이디가 없습니다.")
						}else {
							$("#login_form").submit();
						}
						},
			error : function(request, status, error) {
				alert("에러코드 : "+  error);			
			}
		})
	})
})  
</script>
	<section>
        <!-- 제목 -->
        <div id="section_title"><h1 id="section-title-text">Sign In</h1></div>
        <!-- 컨텐츠내용 -->
        <div id="section-contents-wrap">
            <div id="section_contents">
              	<div id="box-name">Welcome to C-it</div>
               	 <div id="box">
               	 <form method="post" name="log" action="<%=request.getContextPath()%>/loginController.do" id="login_form">
                    <div class="box-div input" id="fist"><input type="text" placeholder="아이디" name="id" id="id"></div>
                    <div class="box-div input"><input type="password" placeholder="비밀번호" name="pw" id="pw"></div>
                    <div class="box-div input" id="signin"><input type="button" value="Sign in" id="signCheck"></input></div>                
                    <div class="box-div idck"><input type="checkbox" name="idStatus">아이디저장</div>
                </form>    
                    <div class="box-text-out">
                        <div class="box-text" id="id-text"><a href="/Cit/search/findId.jsp">아이디찾기</a></div>
                        <div class="box-text" id="pw-text"><a href="/Cit/search/findpw.jsp">/비밀번호찾기</a></div>
                        <div class="box-text" id="join-text"><a href="/Cit/JoinController.do">회원가입</a></div>
                    </div>
                </div>  
            </div>   
        </div>     
    </section>
<%@ include file="/include/footer.jsp" %>  