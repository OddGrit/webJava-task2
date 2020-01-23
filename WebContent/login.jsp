<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="grit.task2.loginBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie ck[] = request.getCookies();
if (ck != null && ck.length > 1){
	loginBean bean = new loginBean();
	boolean found = false;
	for (Cookie c : ck){
		if (c.getName().equals("name")){
			bean.setName(c.getName());
			request.setAttribute("bean", bean);
			found = true;
			break;
		}
	}
	if (found)
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
}

%>
<form action="loginServlet" method="post">
Name: <input type="text" name="name"><br>
Password: <input type="password" name="password"><br>
<input type="submit" value="login">
</form>

</body>
</html>