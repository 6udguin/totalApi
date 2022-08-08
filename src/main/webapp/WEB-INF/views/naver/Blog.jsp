<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/common.css" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
				<a href="/">API</a>
			</h1>
			<div id="top_bottom"></div>
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