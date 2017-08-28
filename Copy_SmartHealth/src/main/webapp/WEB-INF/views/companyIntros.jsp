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

#floatMenu {
	position: absolute;
	width: 200px;
	height: 200px;
	right: 50px;
	top: 250px;
	background-color: #606060;
	color: #fff;
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sub_menulabel.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8"
				style="background: white; text-align: center; padding-top: 30px">

				<div>
					똑똑한 검진
					<h1 style="margin: 1px; color: #3f5e97">프리미엄 헬스 케어 서비스 !!</h1>
				</div>
				<div style="margin: 10px">
					<img src="resources/images/companyintro_pic.jpg"></img>

				</div>
				<div class="row" style="margin: 40px;">
					<div class="col-sm-6">
						<img src="resources/images/companyintro_pic2.png" />
					</div>
					<div class="col-sm-4"
						style="font-family: serif; font-size: 16px; padding: 20px; text-align: left; position: relative;">
						<p>저희 똑똑한검진은, 국내최초 프리미엄 헬스케어 서비스를 제공합니다. 전국에 대학병원급 제휴로, 가까운 병원
							및 센터에서 최상의 시설 및 장비로 수준높은 의료서비스 및 검진프로그램을 제공하며,</p>
						<br>
						<p>건강검진에서 끝나는 것이 아닌, 검진 후 이상 발견시 한국 최고의 수준높은 병원들과 연계하여 치료까지
							가능합니다.</p>
						<br>
						<p>똑똑한검진을 이용해주시는 고객분들의 성원에 응하여, 일반 헬스케어 서비스와 차별화된 똑똑한검진만의 전국
							프리미엄 헬스케어 서비스로 보답하겠습니다.</p>
						<br> <br> 감사합니다.
					</div>
					<div class="col-sm-offset-2"></div>
				</div>


			</div>



			<div class="col-sm-2" style=""></div>

		</div>


	</div>

	<jsp:include page="footer.jsp"></jsp:include>


<div id="floatMenu">
플로팅 메뉴
</div>


	<script>
		// html dom 이 다 로딩된 후 실행된다.
		$(document).ready(function() {
	
			var urlpath = $(location).attr("pathname");
	
	
			if (urlpath.includes("/smarthealth/companyIntros")) {
	
				$("#nav_companyIntros").addClass("active");
				$("#sub_menulabel_name").text("회사소개");
				$("#sub_menulabel_loc").text("홈 > 회사소개");
			}

			// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
			var floatPosition = parseInt($("#floatMenu").css('top'));
			// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

			$(window).scroll(function() {
				// 현재 스크롤 위치를 가져온다.
				var scrollTop = $(window).scrollTop();
				var newPosition = scrollTop + floatPosition + "px";

				/* 애니메이션 없이 바로 따라감
				 $("#floatMenu").css('top', newPosition);
				 */

				$("#floatMenu").stop().animate({
					"top" : newPosition
				}, 500);

			}).scroll();

			
			
		});
	</script>
</body>
</html>