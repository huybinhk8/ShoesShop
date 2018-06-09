<%@page import="model.NguoiDung"%>
<%@page import="java.util.Locale"%>
<%@page import="internationalization.message.Language"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
</head>
<body>
	<!-- Khi chưa đăng nhập -->

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp">H2K shop</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="home"><a class="home"
				href="<%=request.getContextPath()%>/index.jsp"><%=Language.getBundles("home", (Locale) session.getAttribute("locale"))%></a></li>
			<li class="support"><a
				href="<%=request.getContextPath()%>/support.jsp"><%=Language.getBundles("support", (Locale) session.getAttribute("locale"))%></a></li>
			<li class="contact"><a
				href="<%=request.getContextPath()%>/contact.jsp"><%=Language.getBundles("contact", (Locale) session.getAttribute("locale"))%></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="shoppingcart"><a
				href="<%=request.getContextPath()%>/shoppingcart.jsp"><span
					class="glyphicon glyphicon-shopping-cart"></span><%=Language.getBundles("cart", (Locale) session.getAttribute("locale"))%></a></li>
			<%
				if (session.getAttribute("username") == null) {
			%>
			<li class="register"><a
				href="<%=request.getContextPath()%>/signup.jsp"><span
					class="glyphicon glyphicon-user"></span><%=Language.getBundles("signup", (Locale) session.getAttribute("locale"))%></a></li>
			<li class="logins"><a
				href="<%=request.getContextPath()%>/signin.jsp"><span
					class="glyphicon glyphicon-log-in"></span><%=Language.getBundles("signin", (Locale) session.getAttribute("locale"))%></a></li>
			<%
				} else {
					NguoiDung u = (NguoiDung) session.getAttribute("username");
			%>
			<%
				if (u.getChucVu() == 0) {
			%>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><span
					class="glyphicon glyphicon-user"></span> <%=u.getTenTK()%> <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							<%=Language.getBundles("header.userinfor", (Locale) session.getAttribute("locale"))%></a></li>
					<li><a class="glyphicon glyphicon-log-out"
						href="<%=response.encodeURL("Logout")%>"><%=Language.getBundles("header.logout", (Locale) session.getAttribute("locale"))%></a></li>
				</ul></li>
			<%
				} else {
			%>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><font color="red"><span
						class="glyphicon glyphicon-user"></span> <%=u.getTenTK()%></font> <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							<%=Language.getBundles("header.userinfor", (Locale) session.getAttribute("locale"))%></a></li>
					<li><a class="glyphicon glyphicon-log-out"
						href="<%=response.encodeURL("Logout")%>"><%=Language.getBundles("header.logout", (Locale) session.getAttribute("locale"))%></a></li>
				</ul></li>
			<%
					}
				}
			%>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><span
					class="glyphicon glyphicon-globe"></span><%=Language.getBundles("header.language", (Locale) session.getAttribute("locale"))%><span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<%=response.encodeURL("Lang?lang=eng")%>"><%=Language.getBundles("header.english", (Locale) session.getAttribute("locale"))%></a></li>
					<li><a href="<%=response.encodeURL("Lang?lang=vi")%>"><%=Language.getBundles("header.vietnamese", (Locale) session.getAttribute("locale"))%></a></li>
				</ul></li>
		</ul>
		<form class="navbar-form navbar-right">
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="<%=Language.getBundles("header.nameproduct", (Locale) session.getAttribute("locale"))%>">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit" style="height: 34px;">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
	</nav>
</body>
</html>