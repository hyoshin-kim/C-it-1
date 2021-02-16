<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cit.notice.model.NoticeDao" %>
<%@page import="java.util.List"%>
<%@page import="java.util.Date" %>
<%@ include file="/include/header.jsp" %>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
<script>
$(document).ready(function() {
  $(".accordion_head").click(function() {
      let icon = $(this).children('#plus');
      let body = $(this).next(".accordion_body");
      let minusClass = 'fa-minus-square';
      let plusClass = 'fa-plus-square';
      
      icon.removeClass(minusClass);
      icon.removeClass(plusClass);

    if (body.is(':visible')) {
      body.slideUp(300);
      icon.addClass(plusClass);
    } else {
      body.slideDown(300);
      icon.addClass(minusClass);
    }
  });
});
</script>    
<section>
<!-- 제목 -->
	<div id="section_title"><h1 id="section-title-text">Notice</h1></div>
	<!-- 컨텐츠내용 -->
	<div id="section-contents-wrap">
		<div id="section_contents">
		<!-- 게시판 목록 -->
			<c:forEach var="n" items="${list}">
			<div class="accordion_container">
				<div class="accordion_head" width="auto">
				<div class="new-icon float--left"><p>new</p></div>
				<div class="title-wrap1">
					<p class="notice-title">${n.title}</p>
					<div class="title-wrap2">
						<p class="notice-category">${n.cate}</p>
						<p class="notice-date">${n.date}</p>
					</div>
				</div>
				<i id="plus" class="fas fa-plus-square"></i> 
				</div>
				<div class="accordion_body" style="display: none;">
					<p>${n.cont}</p>
				</div>
			</div>
			</c:forEach>
			<div class="bottom">
				<div class="more-btn"><input class="more-btn-input" type="submit" value="+더보기" ></input></div>
			</div>   
		</div>
	</div>
</section>
<%@ include file="/include/footer.jsp" %>