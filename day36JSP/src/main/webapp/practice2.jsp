<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="cb" class="test.CalcBean"></jsp:useBean>
<%--test패키지에 있는 CalcBean라는 클래스를 cb라는 이름으로 객체화 --%>
<%-- CalcBean cb = new CalcBean(); --%>

<%-- 이제 setter 을 호출하여 멤버변수들을 초기화 할 차례--%>
<%--cb.setNum1(Integer.parseInt(request.getParameter("num1")));
cb.setNum2(Integer.parseInt(request.getParameter("num2")));
cb.setOp(request.getParameter("op")); 이 작업을 아래 명령어로 하나로 해결 --%>
<jsp:setProperty property="*" name="cb"/>
<%-- cb라는 이름을 가진 객체의 setter 메서드 자동 매핑 호출 
name속성의 이름과 객체의 멤버변수명(setter명)을 비교하기 때문에 식별자 규칙이 매우 중요하다--%>


<% cb.calc(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 -2</title>
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
<h2>계산결과: <jsp:getProperty property="result" name="cb"/></h2>

</body>
</html>