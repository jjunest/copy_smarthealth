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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
    // html dom 이 다 로딩된 후 실행된다.
 		$(document).ready(function() {

			var urlpath = $(location).attr("pathname");
			if (urlpath.includes("/smarthealth/checkupInfos")) {
				$("#nav_checkupInfos").addClass("active");
			}

		});
</script>

</body>
</html>