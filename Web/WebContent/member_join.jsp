<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="abc.InsertDb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="common.css" rel="stylesheet" />
</head>
<%
try {
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	

	InsertDb in = new InsertDb(response);
	in.insert(name,phone,address,grade,city);
	
}catch(Exception e){
	out.print(e.getMessage());
}
%>
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
				회원 등록
			</h2>
			<form action="member_join.jsp" method="post">
				<table id="table-detail">
					<tr>
						<td><label>이름</label></td>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<td><label>전화번호</label></td>
						<td><input type="tel" name="phone" ></td>
					</tr>
					<tr>
						<td><label>주소</label></td>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<td><label>등급</label></td>
						<td><input type="text" name="grade" ></td>
					</tr>
					<tr>
						<td><label>지역코드</label></td>
						<td><input type="text" name="city" placeholder="2글자 이내로 입력" ></td>
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