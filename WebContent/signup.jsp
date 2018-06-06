<%@page import="internationalization.message.Language"%>
<%@page import="java.util.Locale"%>
<%@page import="DAO.UserDAO"%>
<%@page import="model.NguoiDung"%>
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
	<%
		String tenND = (String) session.getAttribute("tenND");
			if (tenND == null) {
				tenND = "";
			}
			String errTenND = (String) session.getAttribute("err_tenND");
			if (errTenND == null) {
				errTenND = "";
			}

			String birthday = (String) session.getAttribute("ngaysinh");
			if (birthday == null) {
				birthday = "";
			}
			String errngaysinh = (String) session.getAttribute("err_ngaysinh");
			if (errngaysinh == null) {
				errngaysinh = "";
			}

			String username = (String) session.getAttribute("user");
			if (username == null) {
				username = "";
			}
			String errusername = (String) session.getAttribute("err_username");
			if (errusername == null) {
				errusername = "";
			}

			String errpassword = (String) session.getAttribute("err_pass");
			if (errpassword == null) {
				errpassword = "";
			}
			String errRepass = (String) session.getAttribute("err_repass");
			if (errRepass == null) {
				errRepass = "";
			}
			String err_notSame = (String) session.getAttribute("err_notSame");
			if (err_notSame == null) {
				err_notSame = "";
			}
	%>
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<div class="well">
			<h1 style="text-align: center;"><%=Language.getBundles("signup", (Locale) session.getAttribute("locale"))%></h1>
			<center>
				<form action="<%=request.getContextPath()%>/dangKy" method="post">
					<table>
						<tr>
							<th><%=Language.getBundles("signup.fullname", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="name"
								value="<%=tenND%>"><font color="red"><%=errTenND%></font></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.birthday", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="birthday"
								value="<%=birthday%>"><font color="red"><%=errngaysinh%></font></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.sex", (Locale) session.getAttribute("locale"))%></th>
							<td><input type="radio" class="" name="sex" values="nam"
								checked="checked" style="margin-left: 10px;"> <%=Language.getBundles("signup.male", (Locale) session.getAttribute("locale"))%>
								&emsp;&emsp;<input type="radio" class="" name="sex" values="nu">
								<%=Language.getBundles("signup.female", (Locale) session.getAttribute("locale"))%></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.username", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" name="username"
								value="<%=username%>"><font color="red"><%=errusername%></font></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.pass", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" type="password" name="pass"><font
								color="red"><%=errpassword%></font></td>
						</tr>
						<tr>
							<th><%=Language.getBundles("signup.repass", (Locale) session.getAttribute("locale"))%></th>
							<td><input class="form-control" type="password"
								name="repass"><font color="red"><%=errRepass%><%=err_notSame%></font></td>
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