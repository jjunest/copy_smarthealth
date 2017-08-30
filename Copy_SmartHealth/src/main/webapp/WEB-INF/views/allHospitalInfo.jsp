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
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sub_menulabel.jsp"></jsp:include>


	<jsp:include page="footer.jsp"></jsp:include>

	<script>
		// html dom 이 다 로딩된 후 실행된다.
		$(document).ready(function() {
	
			/* navigation menu 주소에 따라서 active 설정 시작 */
			var urlpath = $(location).attr("pathname");
			if (urlpath.includes("/smarthealth/allHospitalInfo")) {
	
				$("#nav_allHospitalInfo").addClass("active");
				$("#sub_menulabel_name").text("전국검진병원");
				$("#sub_menulabel_loc").text("홈 > 전국검진병원");
			}
			/* navigation menu 주소에 따라서 active 설정 끝 */
	
		});
	</script>


</body>
</html>