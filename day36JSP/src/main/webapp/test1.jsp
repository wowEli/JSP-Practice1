<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%><!-- %@을 지시어 라고한다 -->
    <!-- 만약 1번 라인에 빨간밑줄이 생기면 라이브러리가 없어서 그러니 클래스 파트에 아파치 톰캣 라이브러리를 추가해야된다 Add라이브러리 > 톰캣9.0버전  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html주석은 사용자가 볼 수 있음 -->
<%-- JSP주석은 하이딩 됨 --%>
<p>JSP는 JAVA언어를 사용할 수 있게 해주는 서버 프로그래밍 언어</p>
<h1><%= new Date() %></h1> <!-- 임포트 해야함 -->

</body>
</html>