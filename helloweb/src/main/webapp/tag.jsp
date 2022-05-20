<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>

	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>

		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>둘리</td>

		</tr>

		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>

	</table>
	<br />
	<!-- 외부 -->
	<img width="10%"
		src="http://Localhost:8080/helloweb/assets/images/mc.jpg" />
	<!-- 절대경로 -->
	<img width="15%" src="/helloweb/assets/images/mc.jpg" />
	<!-- 상대경로 -->
	<img width="20%" src="assets/images/mc.jpg" />

	<p>
		"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,
		consectetur, adipisci velit..."
		<br/>
		 "There is no one who loves pain
		itself, who seeks after it and wants to have it, simply because it is
		pain..."
		<br/>
	</p>

	<br />
	<a href="/helloweb/hello">hello로 가기</a>
	<br />
	<a href="form.jsp">폼으로 가기</a>

</body>
</html>