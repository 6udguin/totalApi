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

<!--   자바스크립트 .html('').html()로 검색창 추가, submit 추가 $().submit(function(){ ... , 한 page에서 다하고 결과만 다른 페이지에서 할려고 함. 에러.
<script>
/* 
	window.onload = function() {
		var searchBox = document.getElementById('top_bottom');

		$('#top_bottom').html(
				'<input type="text" value="왼쪽 카테고리 선택" readonly />').html();

		$('.api')
				.click(
						function(e) {
							var clickedCategory = $(this).attr('id');

							switch (clickedCategory) {
							case '1':
								html = '';

								html += '<select id="displayOption" name="display">';
								html += '<option value="10">10</option>';
								html += '<option value="20">20</option>';
								html += '<option value="30">30</option></select>';
								html += '<select id="sortOption" name="sort">';
								html += '<option value="sim">유사도순</option>';
								html += '<option value="date">날짜순</option></select>';
								html += '<input type="text" id="keyword" name="keyword" placeholder="네이버 블로그 검색">';
								html += '<input type="submit" value="검색">';
								$('#form1').html(html).html();
								return false;
								break;
							case '2':
								alert('clicked=' + clickedCategory);
								$('#top_bottom').html(
										'<p>test, test, test, test, test<p>')
										.html(); // 이 방식 사용
								return false;
								break;
							case '3':
								alert('clicked=' + clickedCategory);
								//	$('#top_bottom').innerHtml = '<p>t, t, t, t, t, t';
								return false;
								break;
							case '4':
								html = '';
								html += 'avcx';
								$('#top_bottom').html(html).html(); // 이 방식 사용 계속
								return false;
								break;
							case '5':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '6':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '7':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '8':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '9':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '10':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '11':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '12':
								alert('clicked=' + clickedCategory);
								return false;
								break;
							case '13':
								alert('clicked=' + clickedCategory);
								return false;
								break;

							}
						})
		let form1El = document.getElementById('form1');
		$(form1El).submit(function(e) {
			alert('submit click1');
			alert('submit click2');
			location.href = '/Naver/Blog';
			alert('submit click3')
		})

	}
	*/
</script>
 -->

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