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

<body>


	<style type="text/css">
.navbar-brand {
	background-image: url('resources/images/logo.png');
	background-size: contain;
	background-repeat: no-repeat;
	width: 230px;
}

.navbar {
	
}
</style>
	<br>

	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li id="nav_companyIntros"><a href="companyIntros">회사소개</a></li>
				<li id="nav_checkupInfos" class="dropdown"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">건강검진정보
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="checkupInfos">건강검진정보1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li id="nav_eventHostpitals"><a href="eventHospitals">할인이벤트</a></li>
				<li id="nav_allHospitalInfo"><a href="allHospitalInfo">전국검진병원보기</a></li>
			</ul>



		</div>
	</div>
	</nav>



</body>
</html>