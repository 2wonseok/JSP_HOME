<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>이원석</title>
</head>
<body>
	<form>
		<input type="text" name="id"/> <br/>
		<input type="text" name="pw"/> <br/>
		<input type="password" name="pw2"/> <br/>
		<input type="number" name="age" value="1"/> <br/>
		<input type="date" name="date"/>
		<input type="submit" class="btn-sm btn-primary mt-1" value="전송"/>
		<input type="button" class="btn-sm btn-danger" onclick="reLoad()" value="초기화" />
	</form>
<%
	String val1 = request.getParameter("id");
	String val2 = request.getParameter("pw");
	String val3 = request.getParameter("pw2");
	String val4 = request.getParameter("age");
	String val5 = request.getParameter("date");
	int val4int = 0;
	if (val4 != null) {
		val4int = Integer.valueOf(val4);
	}
	
%>
	id: <%= val1 %> <br/>
	pw: <%= val2 %> <br/>
	pw2: <%= val3 %> <br/>
	age: <%= val4 %> <br/>
	date: <%= val5 %> <br/>
	
</body>
<script>
	//파라미터 초기화 스크립트
	function reLoad() {
		window.location = window.location.pathname; 
	}

</script>

</html>