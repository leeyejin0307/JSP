<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="common.css" rel="stylesheet" />
</head>
<body>
<div id="wrap">
	<header>
		<h1>쇼핑몰 회원 관리</h1>
		<nav>
			<ul>
				<li><a href="member_join.jsp">회원 등록</a></li>
				<li><a href="member_list.jsp">회원 조회·수정</a></li>
				<li><a href="member_money_list.jsp">회원 매출 조회</a></li>
			</ul>
		</nav>
	</header>
	<hr>
	<section>
		<article>
			<h2>
				회원 정보 수정
			</h2>
			<form>
				<table id="table-detail">
					<tr>
						<td><label>name</label></td>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<td><label>phone</label></td>
						<td><input type="tel" name="phone"></td>
					</tr>
					<tr>
						<td><label>address</label></td>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<td><label>city</label></td>
						<td><input type="text" name="city"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit"></td>
					</tr>
				</table>
			</form>		
		</article>
	</section>
	<footer>
	</footer>
</div>
</body>
</html>