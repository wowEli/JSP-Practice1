<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int result = 0; // 초기화 필수

if (request.getMethod().equals("POST")) { // 계산결과보기 버튼을 누르는 순간 post요청을 받음
	// 초기 로딩시 절차지향으로 이 함수가 먼저 실행되기때문에 if 조건문을 걸어서 오류가 안나오게 하기
	// get방식으로 할 경우에 처음에 바로 실행이 됨 그래서 if(!(request.getParameter("num1")))
	
	int num1 = Integer.parseInt(request.getParameter("num1")); // 웹에서는 모든 정보들이 String타입으로 관리된다
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String op = request.getParameter("op");
	
	if (op.equals("+")) {
		result = num1 + num2;
	} else if (op.equals("-")) {
		result = num1 - num2;
	} else if (op.equals("x")) {
		result = num1 * num2;
	} else if (op.equals("/")) {
		result = num1 / num2;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 -1</title>
</head>
<body>

<h1>계산기</h1>
<hr>
<form action="#" method="post">
	<input type="text" name="num1"> <!-- name속성으로 접근하기 -->
	<select name="op">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input type="text" name="num2">
	<input type="submit" value="계산 결과보기">
</form><!-- form의 submit을 통해 POST방식으로 요청을 한다 -->
<!--  요청에 대한 정보는 request객체에 저장되어있다 -->
<!-- 웹에서는 모든 정보들이 String타입으로 관리된다 -->
<hr>
<h2>계산결과: <%=result%></h2>

</body>
</html>