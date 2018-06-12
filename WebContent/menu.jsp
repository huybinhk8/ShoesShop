<%@page import="java.util.Locale"%>
<%@page import="internationalization.message.Language"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<li class="has-sub active"><a href="javascript:;" class="">
			<%=Language.getBundles("manager.product", (Locale) session.getAttribute("locale"))%> <span class="selected"></span>
	</a>
		<ul class="sub">
			<li class=""><a class="" href="#"><%=Language.getBundles("manager", (Locale) session.getAttribute("locale"))%></a></li>
			<li><a class="" href="#"><%=Language.getBundles("add", (Locale) session.getAttribute("locale"))%></a></li>
		</ul></li>
	<li class="has-sub active"><a href="#" class="">
			<%=Language.getBundles("user", (Locale) session.getAttribute("locale"))%> <span class="selected"></span>
	</a>
		<ul class="sub">
			<li class=""><a class="" href="#quanlitaikhoan"><%=Language.getBundles("manager", (Locale) session.getAttribute("locale"))%></a></li>
			<li><a class="" href="#themtaikhoan"><%=Language.getBundles("add", (Locale) session.getAttribute("locale"))%></a></li>
		</ul></li>
	<li class="has-sub active"><a href="javascript:;" class="">
			<%=Language.getBundles("bill", (Locale) session.getAttribute("locale"))%><span class="selected"></span>
	</a>
		<ul class="sub">
			<li class=""><a class="" href="#"><%=Language.getBundles("manager", (Locale) session.getAttribute("locale"))%></a></li>
		</ul></li>
	<li class="has-sub active"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"><span
			class="glyphicon glyphicon-globe"></span><%=Language.getBundles("header.language", (Locale) session.getAttribute("locale"))%></a>
		<ul class="sub">
			<li class=""><a class=""
				href="<%=response.encodeURL("Lang?lang=eng")%>"><%=Language.getBundles("header.english", (Locale) session.getAttribute("locale"))%></a></li>
			<li><a class="" href="<%=response.encodeURL("Lang?lang=vi")%>"><%=Language.getBundles("header.vietnamese", (Locale) session.getAttribute("locale"))%></a></li>
		</ul></li>

</body>
</html>