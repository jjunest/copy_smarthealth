<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<%--ContextPath 선언 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'Hanna', sans-serif;
	font-size: 30px
}

.detailhos_col1 {
	width: 30%;
	text-align: center;
	background: #f4f4f4;
	padding: 3cm;
}

.detailhos_col2 {
	width: 70%;
	text-align: left;
	margin: 10px;
	font-family: aria;
	background: blue;
	ww
}
</style>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sub_menulabel.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" style="">

				<h2 style="text-align: center; padding: 20px">병원 이름</h2>


				<table class="table" style = "width:70%;">

					<tbody>
						<tr>
							<td class="detailhos_col1">병원 소개</td>
							<td class="detailhos_col2" style = "padding:20px;">인천을 대표하는 종합병원</td>

						</tr>
						<tr>
							<td class="detailhos_col1">주소</td>
							<td class="detailhos_col2">인천 남구 독배로 503 (숭의동,현대유비스병원)</td>

						</tr>
						<tr>
							<td class="detailhos_col1">운영시간</td>
							<td class="detailhos_col2">평일 07:50~17:00 / 토요일 07:50~12:00
								/ 일요일 및 공휴일 휴무</td>

						</tr>
						<tr>
							<td class="detailhos_col1">전화번호</td>
							<td class="detailhos_col2">032-890-5722</td>

						</tr>
						<tr>
							<td class="detailhos_col1">검진항목</td>
							<td class="detailhos_col2">평일 07:50~17:00 / 토요일 07:50~12:00
								/ 일요일 및 공휴일 휴무</td>

						</tr>
					</tbody>
				</table>


			</div>






			<div class="col-sm-2"></div>
		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<script>
		// html dom 이 다 로딩된 후 실행된다.
		$(document).ready(function() {
	
			/* navigation menu 주소에 따라서 active 설정 시작 */
			var urlpath = $(location).attr("pathname");
			if (urlpath.includes("/smarthealth/detailHospital")) {
	
	
				$("#sub_menulabel_name").text("병원 상세정보");
				$("#sub_menulabel_loc").text("병원 상세정보 보기");
			}
			/* navigation menu 주소에 따라서 active 설정 끝 */
	
		});
	</script>


</body>
</html>