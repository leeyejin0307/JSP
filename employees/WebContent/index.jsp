<%@page import="employees.MyDb"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>사원 및 부서조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	tr{
	height:30px;
	}
</style>
</head>
<%
	MyDb mydb = new MyDb();
	String result="";
	try{
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String position = request.getParameter("position");
		String department = request.getParameter("department");
		String sal = request.getParameter("sal");
		String op = request.getParameter("op");
		
		if(!mydb.connectDb()){
			return;
		}
		
		result = mydb.executeQuery(fname,lname,position,sal,op);
		}catch(Exception e){
		System.out.println();
	}
%>
<body>
	<div id="wrap">
		<header>
			<div style="width:300px;margin:0 auto;">
				<h1>사원  조회</h1>
			<nav>
				<ul>
					<li><a href="index.jsp">사원조회</a></li>
					<li><a href="dep_list.jsp">부서조회</a></li>
				</ul>
			</nav>
			</div>
		</header>
		<section>
			<div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form" action="index.jsp" method="post">
        <fieldset>

          <!-- Form Name -->
          <legend>Address Details</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">성</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" placeholder="성" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">이름</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" placeholder="이름" class="form-control">
            </div>
          </div>
		<div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">직책</label>
            <div class="col-sm-10">
              <input type="text" name="position" placeholder="직책" class="form-control">
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            

            <label class="col-sm-2 control-label" for="textinput">연봉</label>
            <div class="col-sm-4">
              <input type="text" name="sal" placeholder="연봉" class="form-control"> <input type="radio" value=">=" name="op" id="up"><label for="up">이상</label> <input type="radio" id ="down" value="<=" name="op"><label for="down">이하</label>
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
		
		<div>
			여기에 출력댑니다.
			<hr>
			<table style="width:500px;margin:0 auto;">
			<tr>
				<th>회원 번호</th>
				<th>성</th>
				<th>이름</th>
				<th>연봉</th>
				<th>직책</th>
				<th>성별</th>
				<th>날짜</th>
			</tr>
				<%=result %>	
			</table>	
		</div>
		</section>
		<footer>
		</footer>
	</div>
</body>
</html>