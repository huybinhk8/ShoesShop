<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Language.getBundles("signin", (Locale) session.getAttribute("locale"))%></title>
</head>
<body>
<%
	if(session.getAttribute("username") != null){
	 %>
	 <jsp:forward page="index.jsp"></jsp:forward>
	 <%
	}else{
		
%>
	<%@include file="header.jsp"%>
	<script>
		$(".logins").addClass('active');
	</script>
	<%
		String tentk = (String) session.getAttribute("signin");
		if (tentk == null) {
			tentk = "";
		}
		String errTentk = (String) session.getAttribute("err_signin");
		if (errTentk == null) {
			errTentk = "";
		}

		String errPass = (String) session.getAttribute("err_pass");
		if (errPass == null) {
			errPass = "";
		}

		String errLogin = (String) session.getAttribute("errLogin");
		if (errLogin == null) {
			errLogin = "";
		}
	%>
	<!-- Sign in -->
	<br>
	<br>
	<div class="container">
		<div class="col-md-3"></div>

		<div class="col-md-6">
			<div class="signin">

				<div class="well">
					<h2 class="text-center"><%=Language.getBundles("signin", (Locale) session.getAttribute("locale"))%></h2>
					
					<form action="<%=request.getContextPath()%>/Signin" method="post">
					<center>
						<table>
							<!-- tentk -->
							<tr>
								<th><%=Language.getBundles("signin.username", (Locale) session.getAttribute("locale"))%></th>
							</tr>
							<tr>
								<td><input type="text" class="form-control" name="tentk"
									value="<%=tentk%>"><font color="red"><%=errTentk%></font></td>
								<td></td>
							</tr>
							<!-- matkhau -->
							<tr>
								<th><%=Language.getBundles("signin.password", (Locale) session.getAttribute("locale"))%></th>
							</tr>
							<tr>
								<td><input type="password" class="form-control"
									name="password"><font color="red"><%=errPass%></font></td>
								<td></td>
							</tr>
							<tr>
								<td><a href="#" class="forgetpass"><%=Language.getBundles("signin.forgetpass", (Locale) session.getAttribute("locale"))%></a> <a
									href="<%=request.getContextPath()%>/signup.jsp" class="account"><%=Language.getBundles("signin.createacount", (Locale) session.getAttribute("locale"))%></a></td>
							</tr>
							<tr>
								<td><font color="red"><%=errLogin%></font></td>
							</tr>
						</table>
						</center>
						<center>
							<button type="submit" class="btn btn-default btn-lg"><%=Language.getBundles("signin", (Locale) session.getAttribute("locale"))%></button>
						</center>
					</form>
				</div>
			</div>
		</div>

		<div class="col-md-3"></div>
	</div>
<% } %>
</body>
</html>