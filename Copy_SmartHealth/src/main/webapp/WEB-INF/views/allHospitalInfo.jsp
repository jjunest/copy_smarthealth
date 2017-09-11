<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'Hanna', sans-serif;
	font-size: 30px
}

.region_search {
	border: solid;
	border-color: #27487e;
	border-width: 10px;
}

.region_search li {
	border-bottom: 1px solid #eee;
	list-style: none;
}

.region_search div {
	height: 166px;
}

.city_on {
	text-decoration: underline;
	background: #808080;
}

.allhos_col1 {
	width: 15%;
	text-align: center;
}

.allhos_col2 {
	width: 10%;
	text-align: center;
}

.allhos_col3 {
	width: 30%;
	text-align: center;
}

.allhos_col4 {
	width: 15%;
	vertical-align: middle;
	text-align: center;
}

.table>tbody>tr>td {
	vertical-align: middle;
}

.table>tbody>tr>th {
	text-align: center;
	vertical-align: middle;
}
</style>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sub_menulabel.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" style="">

				<h2
					style="text-align: center; padding: 20px; color: #3f5e97; font-size: 50px;">전국검진병원보기</h2>


				<!-- 지역별 검색 네비게이션 시작 -->
				<div class="row region_search">

					<div class="col-md-6"
						style="background-image: url('resources/images/region_search.jpg'); background-repeat: no-repeat; background-position: right; text-align: center; padding: 40px;">
						<p>
						<h2>
							지역별 <br>전국검진병원보기
						</h2>
						</p>
					</div>
					<div class="col-md-3"
						style="overflow-y: scroll; margin: 0; text-align: center; padding: 0">

						<p
							style="border-bottom: solid 1px #3f5e97; background: #f5f7fa; font-size: 30px; margin: 0; padding: 0;">
							시/도</p>
						<ul class="city_list" style="margin: 0; padding: 0">
							<li><a href=#>전체</a></li>
							<li style=""><a href=# style="">서울특별시</a></li>
							<li><a href=#>부산광역시</a></li>
							<li><a href=#>대구광역시</a></li>
							<li><a href=#>인천광역시</a></li>
							<li><a href=#>광주광역시</a></li>
							<li><a href=#>대전광역시</a></li>
							<li><a href=#>울산광역시</a></li>
							<li><a href=#>경기도</a></li>
							<li><a href=#>강원도</a></li>
							<li><a href=#>대전광역시</a></li>

						</ul>

					</div>

					<div class="col-md-3"
						style="overflow-y: scroll; margin: 0; text-align: center; padding: 0">

						<p
							style="border-bottom: solid 1px #3f5e97; background: #f5f7fa; font-size: 30px; margin: 0; padding: 0;">
							군/구</p>
						<ul class="city_spec_list" style="margin: 0; padding: 0">
							<li><a href=#>강남구</a></li>
							<li><a href=#>강북구</a></li>
							<li><a href=#>구로구</a></li>
							<li><a href=#>금천구</a></li>
							<li><a href=#>노원구</a></li>
							<li><a href=#>도봉구</a></li>
							<li><a href=#>마포구</a></li>

						</ul>

					</div>
				</div>


				<!-- 지역별 검색 네비게이션 끝 -->

				<div class="table-responsive">
					<table class="table table-striped" style="margin-top: 40px;">
						<thead>
							<tr style="">
								<th class="allhos_col1">병원 사진</th>
								<th class="allhos_col2">지역/병원명</th>
								<th class="allhos_col3">주소</th>
								<th class="allhos_col4">상세정보</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty result_list}">
								<c:forEach var="listValue" items="${result_list}">
									<tr>
										<td class="allhos_col1"><a href="#"><img
												src='resources/images/allhospital1.jpg' style="width: 100%"></a></td>
										<td class="allhos_col2">${listValue.hmcNm}</td>
										<td class="allhos_col3">${listValue.locAddr}</td>
										<td class="allhos_col4"><a href="${listValue.hcmNo}"
											class="btn btn-info btn-lg" role="button">바로가기</a></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>

			</div>






			<div class="col-sm-2"></div>



		</div>

		<!--  페이지게이션 시작! -->
		<fmt:parseNumber var="pNo_share" value="${(pNo-1)/5}"
			integerOnly="true" />


		<div class="row" style="border-top: 1px solid #ccc;">
			<nav style="text-align: center">
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>

				<li id="pageNavi1"><a
					href="allHospitalInfo?pNo=${pNo_share*5+1}">${pNo_share*5+1}</a></li>
				<li id="pageNavi2"><a href="allHospitalInfo?pNo=${pNo_share*5+2}">${pNo_share*5+2}</a></li>
				<li id="pageNavi3"><a
					href="allHospitalInfo?pNo=${pNo_share*5+3}">${pNo_share*5+3}</a></li>
				<li id="pageNavi4"><a href="allHospitalInfo?pNo=${pNo_share*5+4}">${pNo_share*5+4}</a></li>
				<li id="pageNavi0"><a href="allHospitalInfo?pNo=${pNo_share*5+5}">${pNo_share*5+5}</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
			</nav>
		</div>

		<!--  페이지게이션 끝! -->

	</div>
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
	
			$('.city_list li').click(function() {
				$('.city_list li').removeClass('city_on');
				$(this).addClass('city_on');
			});
	
			var activePageNum = ${pNo%5};
			$("#pageNavi"+activePageNum).addClass("active");
	
		});
	</script>
</body>
</html>