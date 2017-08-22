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
					<a href = "#"><img src="resources/images/carousel.jpg" alt="Los Angeles"
						style="width: 100%; height: 571px">
						</a>
					<div class="carousel-caption">
						<h3>Carousel No1</h3>
						<p>LA is always so much fun!</p>
					</div>
				</div>

				<div class="item">
					<a href = "#"><img src="resources/images/carousel1.jpg" alt="Chicago"
						style="width: 100%; height: 571px"></a>
					<div class="carousel-caption">
						<h3>Carousel no2</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>

				<div class="item">
					<a href = "#"><img src="resources/images/carousel3.jpg" alt="New York"
						style="width: 100%; height: 571px"></a>
					<div class="carousel-caption">
						<h3>Carousel no3</h3>
						<p>We love the Big Apple!</p>
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
	</div>

	<div>ddd</div>
	<div>ddd</div>
	<div></div>


	<script>
		// html dom 이 다 로딩된 후 실행된다.
		$(document).ready(function() {
		


		});
	</script>

</body>
</html>