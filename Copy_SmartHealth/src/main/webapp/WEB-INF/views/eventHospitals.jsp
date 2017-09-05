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

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" style="">

				<h2 style="text-align: center; padding: 20px">할인 이벤트 병원</h2>
				<p
					style="width: 90%; background: #27487e; padding: 25px; color: white; margin: 0px 5%; font-size: 20px; text-align: center;">
					<strong style="font-size: 30px; font-weight: 600;">50%
						할인이벤트 진행중!</strong> <br> <br> "( 기간 : 8월 1일 ~ 8월 31일 )" <br>
					<b> ※ 대학병원급 시설※ </b> <br> <b>※ 추가비용 절대 없음※ </b>
				</p>

				<!--  이벤트 병원 사진 시작. 이미지 크기 272 x 223 px -->

				<div class="row" style="margin: 20px">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<a href="detailHospital"><img
								src="resources/images/event3_big.jpg" alt="..."></a>
							<div class="caption">
								<h3>모두의 검진 제휴 병원</h3>
								<p>- 병원 설명 부분-</p>
								<p style="text-align: center;">
									<a href="detailHospital" class="btn btn-primary" role="button"
										style="display: block;">Button</a>

								</p>
							</div>
						</div>
					</div>
				</div>

				<!--  이벤트 병원 사진 끝. 이미지 크기 272 x 223 px -->
				<!--  페이지게이션 시작! -->
				<div class="row" style="border-top: 1px solid #ccc;">
					<nav style="text-align: center">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
					</nav>
				</div>

				<!--  페이지게이션 끝! -->


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
			if (urlpath.includes("/smarthealth/eventHospitals")) {
	
				$("#nav_eventHostpitals").addClass("active");
				$("#sub_menulabel_name").text("할인이벤트");
				$("#sub_menulabel_loc").text("홈 > 할인이벤트");
			}
			/* navigation menu 주소에 따라서 active 설정 끝 */
	
		});
	</script>
</body>
</html>