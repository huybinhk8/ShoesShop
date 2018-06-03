<%@page import="internationalization.message.Language"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Language.getBundles("signup", (Locale) session.getAttribute("locale"))%></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<%
		if (session.getAttribute("username") != null) {
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
		} else {
	%>
	<%@include file="header.jsp"%>
	<script>
		$(".register").addClass('active');
	</script>
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<div class="well">
			<h1 style="text-align: center;"><%=Language.getBundles("signup", (Locale) session.getAttribute("locale"))%></h1>
			<center>
				<form action="" method="post">
					<table>
						<tr>
							<th><%=Language.getBundles("signup.fullname", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="name"></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.birthday", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="birthday"></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.sex", (Locale) session.getAttribute("locale"))%></th>
							<td><input type="radio" class="" name="sex" values="nam"
								style="margin-left: 10px;"> <%=Language.getBundles("signup.male", (Locale) session.getAttribute("locale"))%>
								&emsp;&emsp;<input type="radio" class="" name="sex" values="nu">
								<%=Language.getBundles("signup.female", (Locale) session.getAttribute("locale"))%></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.username", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="username"></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.pass", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="pass"></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.repass", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="repass"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><input
								type="submit"
								value="<%=Language.getBundles("signup", (Locale) session.getAttribute("locale"))%>"
								class="btn btn-primary"></td>
						</tr>
					</table>
				</form>
			</center>
		</div>
	</div>
	<div class="col-md-3"></div>



	<%
		}
	%>
</body>
</html>