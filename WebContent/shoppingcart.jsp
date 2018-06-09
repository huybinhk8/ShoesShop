<%@page import="java.util.Locale"%>
<%@page import="internationalization.message.Language"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giỏ hàng</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<h2 style="text-align: center;"><%=Language.getBundles("cart", (Locale) session.getAttribute("locale"))%></h2>
		<table class="table">
			<thead>
				<tr>
					<th><%=Language.getBundles("no", (Locale) session.getAttribute("locale"))%></th>
					<th><%=Language.getBundles("productname", (Locale) session.getAttribute("locale"))%></th>
					<th><%=Language.getBundles("picture", (Locale) session.getAttribute("locale"))%></th>
					<th><%=Language.getBundles("num", (Locale) session.getAttribute("locale"))%></th>
					<th><%=Language.getBundles("price", (Locale) session.getAttribute("locale"))%></th>
					<th><%=Language.getBundles("tool", (Locale) session.getAttribute("locale"))%></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="submit" class="btn btn-danger"
						value="<%=Language.getBundles("delete", (Locale) session.getAttribute("locale"))%>">
					</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>