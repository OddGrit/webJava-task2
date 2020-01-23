<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="grit.task2.loginBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
Welcome inside! <br>
<%
if (request.getAttribute("bean") != null){
	loginBean bean = (loginBean)request.getAttribute("bean");
	if (bean.getName().equals("Odd")){
		out.print("Hello me!<br>");
		out.print("<img src='1.png'>");
	} else if (bean.getName().equals("Marcus")){
		out.print("Hello you!<br>");
		out.print("<img src='2.png'>");
	}
} else {
	request.getRequestDispatcher("login.jsp").forward(request, response);
}
%>

<form action="AddItem" method="post">
	<input type="text" name="item">
	<input type="submit" value="add">
</form>

<%
for (Cookie c : request.getCookies()){
	System.out.println(c.getName().substring(0, 4));
	if (c.getName().substring(0, 4).equals("Item")){
		out.print("<br>" + c.getValue());
	}
}
%>
</body>
</html>