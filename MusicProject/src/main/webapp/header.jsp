<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="user_menu">
		<ul id="user_menu">
			<li style="margin:10px; "><a href="Account/signup.jsp">회원가입</a></li>  <!-- 각 기능이 있는 파일 링크 걸기 -->
			<%
				String username = (String)session.getAttribute("name");
				String role = (String)session.getAttribute("role");
				if(username == null) {
			%>
			<li style="margin:10px;"><a href="Account/login.jsp"> 로그인</a>  </li>
			<% }
				else {
					System.out.println("헤더: " + role);
					if(role.equals("none")) {
			%><!-- 로그아웃 링크 추가하기(Account/logout.jsp) -->
						<li style="margin:10px;"><a href="mypage.jsp"><b><%=username %></b></a> 님  </li>
			<%		} else if(role.equals("admin")) { %>
						<li style="margin:10px;"><a href="mypage_admin.jsp"><b><%=username %></b></a> 님  </li>
			<%		}
				} 
			%>
		</ul>
	</div>

</body>
</html>