<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/common.css" />
<style>
#selectedCategoryName {
	font-size: 30px;
	text-align: center;
}
</style>
<title>Api List Main</title>
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	
</script>
</head>
<body>
	<div id="container">
		<div id="sidenav">
			<div id="side_top">
				<p>API List</p>
			</div>
			<!-- side_top end -->
			<div id="side_bottom">
			<%@include file="/WEB-INF/include/side_bottom.jsp" %>
			</div>
			<!-- side_bottom end -->
		</div>
		<!-- sidenav end -->
		<div id="top">
			<h1>
				<a href="/">Naver Blog API</a>
			</h1>
			<div id="top_bottom">
				<form action="/Naver/Blog" id="form1" method="POST">
					<select id="displayOption" name="display">
						<option value="10">10</option>
						<option value="20">20</option>
						<option value="30">30</option>
					</select> <select id="sortOption" name="sort">
						<option value="sim">유사도순</option>
						<option value="date">날짜순</option>
					</select> <input type="text" id="keyword" name="keyword"> <input
						type="submit" value="검색">
				</form>
			</div>
			<!-- top_bottom end -->
		</div>
		<!-- top end -->
		<div id="main">
			<h2>결과물</h2>
		</div>
		<!-- main end -->
	</div>
	<!-- container end -->
</body>
</html>