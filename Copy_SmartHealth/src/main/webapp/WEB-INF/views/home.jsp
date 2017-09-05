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


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" type="text/css" href="resources/custom.css"> -->
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'Hanna', sans-serif;
	font-size: 30px
}

.homebox {
	font-family: 'Hanna', sans-serif;
	height: 400px;
}

.homebox_1 {
	background-image: url('resources/images/homebox4.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.homebox_2 {
	background-image: url('resources/images/homebox3.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.homebox_3 {
	background-image: url('resources/images/backgroundimg2.jpg');
	background-repeat: repeat;
	background-position: center;
}

.container-fluid {
	font-family: 'Hanna', sans-serif;
	font-size: 30px;
	color: #FFFFFF;
}

.homelabel1 {
	height: 600px;
	padding: 115px 0 144px;
	text-align: center;
}

.homelabel2 {
	height: 600px;
	padding: 115px 0 0 0;
	background-image: url('resources/images/backgroundimg.jpg');
	text-align: left;
}
</style>
</head>


<body>


	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid"
		style="padding-right: 0px; padding-left: 0px">

		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<a href="#"><img src="resources/images/carousel1.jpg"
						alt="Los Angeles" style="width: 100%; height: 600px"> </a>
					<div class="carousel-caption">
						<h3>사진 1</h3>
						<p>안녕하세요 모두의 검진 1입니다.</p>
					</div>
				</div>

				<div class="item">
					<a href="#"><img src="resources/images/carousel1.jpg"
						alt="Chicago" style="width: 100%; height: 600px"></a>
					<div class="carousel-caption">
						<h3>사진 2</h3>
						<p>안녕하세요 모두의 검진 2입니다.</p>
					</div>
				</div>

				<div class="item">
					<a href="#"><img src="resources/images/carousel1.jpg"
						alt="New York" style="width: 100%; height: 600px"></a>
					<div class="carousel-caption">
						<h3>사진 3</h3>
						<p>안녕하세요 모두의 검진 3입니다.</p>
					</div>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

		<!-- homebox 시작  -->
		<div class="row">
			<div class="col-sm-4 homebox homebox_1">
				<p style="padding: 5px; font-size: 40pxs;">&nbsp서비스소개</p>
				<p style="padding: 5px; font-size: 20px;">
					명실상부한 대한민국 헬스업계 <br>최고의 그룹 "모두의 검진"

				</p>
			</div>
			<div class="col-sm-4 homebox homebox_2">
				<p style="padding: 5px; font-size: 40pxs;">&nbsp건강검진정보</p>
				<p style="padding: 5px; font-size: 20px;">
					모두의검진에서 제공하는 건강정보를 확인하고 <br>미리 건강을 챙기세요

				</p>


			</div>
			<div class="col-sm-4 homebox homebox_3">
				<p style="padding: 5px; font-size: 40pxs;">&nbsp모두의검진 상담센터</p>
				<p style="padding: 5px; font-size: 20px;">
					명실상부한 대한민국 헬스업계 <br>최고의 그룹 "모두의 검진"

				</p>

			</div>
		</div>
		<!-- home_box 끝  -->
		<!-- home_label 시작 -->
		<div class="row homelabel1">
			<p style="color: #3f5e97; text-align: center; font-size: 50px">예약하기</p>
			<p
				style="color: #3f5e97; text-align: center; font-size: 40px; font-weight: lighter;">
				전국 건강검진 간편 예약! <br> 기다리지 말고 예약된 시간에 검진 받으세요.
			</p>
			<a class="btn btn-primary btn-lg" href="#" style="font-size: 40px;">건강
				검진 예약 신청 </a>
		</div>
		<div class="row homelabel2">
			<div class="homelable2_img col-sm-6"
				style="position: relative; height: 100%;">
				<img
					style="height: 180%; position: absolute; bottom: 0px; right: 100px"
					src="resources/images/pro_img.png">

			</div>
			<div class="homelable2_text col-sm-6">
				<p style="color: white; text-align: left; font-size: 50px">할인이벤트병원</p>
				<p
					style="color: white; text-align: left; font-size: 40px; font-weight: lighter;">
					전국 건강검진 간편 예약! <br> 기다리지 말고 예약된 시간에 검진 받으세요.
				</p>
				<a class="btn btn-default" href="#" style="font-size: 20px;">이벤트
					병원 보기> </a>
			</div>
		</div>
		<!-- home_label 끝 -->


	</div>



	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		// html dom 이 다 로딩된 후 실행된다.
		$(document).ready(function() {});
	</script>

</body>
</html>