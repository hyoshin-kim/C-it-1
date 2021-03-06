<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/join.css?version=1"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/memberAjax.js"></script>
<!-- SECTION -->
<section>
	<!-- 제목 -->
	<!-- SECTION TITLE -->
	<div id="section_title">
		<h1 id="section-title-text">Join us</h1>
	</div>
	<!-- 컨텐츠내용 -->
	<!-- SECTION CONTENTS -->
	<div id="section-contents-wrap">
		<div id="section_contents">
			<p class="sub float--right">
				<span class="ico"></span> 필수입력사항
			</p>
			<!-- JOIN FORM   -->
			<form id="join_form" method="post"
				action="${pageContext.request.contextPath}/JoinController.do">
				<table>
					<colgroup>
						<col width="30%" />
						<col width="auto" />
					</colgroup>

					<tbody>
						<tr>
							<th><span class="ico">아이디</span></th>
							<td><input type="text" placeholder="6자 이상의 영문 혹은 영문+숫자 조합"
								required id="id" name="id"> <a class="btn btn-chk"
								id="checkIdDup">중복 확인</a></td>
						</tr>
						<tr>
							<th><span class="ico">비밀번호</span></th>
							<td><input type="password"
								placeholder="8자 이상의 영문+숫자+특수문자 조합" required id="pw" name="pw"
								pattern="^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+])(?!.*[^a-zA-z0-9$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$"></td>
						</tr>
						<tr>
							<th><span class="ico">비밀번호 확인</span></th>
							<td><input type="password" placeholder="비밀번호를 한 번 더 입력해주세요."
								required id="pw_check" name="pw_check"> <i
								style="display: none; color: red" id="pwMsg">비밀번호가 일치하지
									않습니다. 다시 확인해주세요.</i></td>
						</tr>
						<tr>
							<th><span class="ico">이름</span></th>
							<td><input type="text" placeholder="이름을 입력해주세요" required
								id="name" name="name"></td>
						</tr>
						<tr>
							<th><span class="ico">이메일</span></th>
							<td><input class="email-text" type="email"
								placeholder="예:cit@cit.com" required id="email" name="email"
								style="width: 50%;">
								<a class="btn btn-confirm" id="checkEmail">이메일 인증</a>
								<div id="emailAuthBox" style="display: none">
									<input type="text" name="auth" id="authNum"
										placeholder="발송된 인증번호를 입력해 주세요." required> <a
										type="button" id="checkAuth" class="btn btn-confirm">인증하기</a>
								</div></td>
						</tr>
						<tr>
							<th><span>성별</span></th>
							<td class="radio">
								<div class="chk-group">
									<input type="radio" id="m" name="gender" class="gender-type"
										value="m"> <label for="m">남</label> <input
										type="radio" id="f" name="gender" class="gender-type"
										value="f"> <label for="f">여</label>
								</div>
							</td>
						</tr>
						<tr>
							<th><span>생년월일</span></th>
							<td>
								<div class="birth_day">
									<input type="text" name="year" id="birth_year" pattern="[0-9]*"
										label="생년월일" size="4" maxlength="4" placeholder="YYYY">
									<span class="bar"></span> <input type="text" name="month"
										id="birth_month" pattern="[0-9]*" label="생년월일" size="2"
										maxlength="2" placeholder="MM"> <span class="bar"></span>
									<input type="text" name="day" id="birth_day" pattern="[0-9]*"
										label="생년월일" size="2" maxlength="2" placeholder="DD">
								</div>
							</td>
						</tr>
						<tr>
							<th><span>직업</span></th>
							<td class="radio">
								<div class="chk-group">
									<c:forEach var="job" items="${requestScope.job}">
										<input type="radio" id=${job.value} name="job" value="${job.key}">
										<label for="${job.value}">${job.key}</label>
									</c:forEach>

								</div>
								<div class="etc">
									<input type="radio" id="job-etc" name="job" value="job-etc"><label
										for="job-etc">기타</label> <input type="text" id="job-etc1"
										name="job" placeholder="선택 기입" disabled>
								</div>
							</td>
						</tr>
						<tr>
							<th><span>가입 경로</span></th>
							<td class="checkbox">
								<div class="chk-group">
									<c:forEach var="path" items="${path}">
										<input type="checkbox" id="{path.value}" name="path"
											value="${path.key}">
										<label for="${path.value}">${path.key}</label>
									</c:forEach>
								</div>
								<div class="etc">
									<input type="checkbox" id="path-etc" name="path" value="기타"><label
										for="path-etc">기타</label> <input type="text" id="path-etc1"
										name="path" placeholder="선택 기입" disabled>
								</div>
							</td>
						</tr>
						<tr class="agreeform-wrap top">
							<th><span class="ico">개인정보처리방침</span></th>
							<td class="agreeform-wrap">
								<p class="title">
									개인정보처리방침 동의<span class="required">&nbsp;(필수)</span>
								</p>
								<p class="text">국회는 정부의 동의없이 정부가 제출한 지출예산 각항의 금액을 증가하거나 새
									비목을 설치할 수 없다. 대법원장과 대법관이 아닌 법관의 임기는 10년으로 하며, 법률이 정하는 바에 의하여
									연임할 수 있다. 정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수 없다. 대통령의 임기연장 또는
									중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다. 국회는 법률에 저촉되지
									아니하는 범위안에서 의사와 내부규율에 관한 규칙을 제정할 수 있다. 국정감사 및 조사에 관한 절차 기타 필요한
									사항은 법률로 정한다. 법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그
									심판에 의하여 재판한다. 정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에
									의하여 정당운영에 필요한 자금을 보조할 수 있다. 대한민국의 영토는 한반도와 그 부속도서로 한다. 국회의 회의는
									공개한다. 다만, 출석의원 과반수의 찬성이 있거나 의장이 국가의 안전보장을 위하여 필요하다고 인정할 때에는
									공개하지 아니할 수 있다. 대통령은 조약을 체결·비준하고, 외교사절을 신임·접수 또는 파견하며, 선전포고와 강화를
									한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다. 국회는 정부의 동의없이 정부가 제출한 지출예산
									각항의 금액을 증가하거나 새 비목을 설치할 수 없다. 대법원장과 대법관이 아닌 법관의 임기는 10년으로 하며,
									법률이 정하는 바에 의하여 연임할 수 있다. 정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수
									없다. 대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다.
									국회는 법률에 저촉되지 아니하는 범위안에서 의사와 내부규율에 관한 규칙을 제정할 수 있다. 국정감사 및 조사에
									관한 절차 기타 필요한 사항은 법률로 정한다. 법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은
									헌법재판소에 제청하여 그 심판에 의하여 재판한다. 정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는
									법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다. 대한민국의 영토는 한반도와 그 부속도서로
									한다. 국회의 회의는 공개한다. 다만, 출석의원 과반수의 찬성이 있거나 의장이 국가의 안전보장을 위하여 필요하다고
									인정할 때에는 공개하지 아니할 수 있다. 대통령은 조약을 체결·비준하고, 외교사절을 신임·접수 또는 파견하며,
									선전포고와 강화를 한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다.</p>
								<div class="agreeform-chk-wrap">
									<input type="checkbox" class="agreeform-chkbox"
										id="agreeform-chk" name="agreeform-chk"> <label
										for="agreeform-chk" class="agreeform-chk">동의합니다</label>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- 제출버튼 -->
				<div class="btn-group">
					<input type="reset" class="join reset" value="취소"> <input
						type="submit" class="join join" value="가입하기" id="joinSubmit">
				</div>
			</form>
		</div>
	</div>
</section>
<%-- <%@ include file="/include/footer.jsp" %> --%>