<%@page import="com.loginpage.service.ILoginPageService"%>
<%@page import="com.loginpage.service.LoginPageServiceImpl"%>
<%@page import="com.loginpage.model.LoginPage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<%
		LoginPage loginPageObject = new LoginPage();
		ILoginPageService loginPageService = new LoginPageServiceImpl();

		loginPageObject.setUserName(request.getParameter("uname"));
		loginPageObject.setPassword(request.getParameter("passwd"));

		boolean status = loginPageService.getAddUser(loginPageObject);
		if (status) {
			response.sendRedirect("Welcome.jsp");
		} else {
	%>
	<h3 style="color: red">Invalid User Name And Password</h3>

	<%
		RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("index.jsp");
			requestDispatcher.include(request, response);
		}
	%>
</body>
</html>