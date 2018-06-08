<%@page import="internationalization.message.Language"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liên hệ</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
</head>
<body>
	<%@include file="header.jsp"%>
	<div style="text-align: center; margin-top: 10px; font-size: 20px;">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2928594361697!2d106.78832181435133!3d10.865315592261211!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752766cfd117c7%3A0x4b50ae961c43a664!2zNDMsIDIxIMSQxrDhu51uZyBz4buRIDE4LCBMaW5oIFRydW5nLCBUaOG7pyDEkOG7qWMsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1528479418223"
			width="600" height="450" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
		<br> <b><font color="red" style="font-size: 40px"><%=Language.getBundles("shoeshop", (Locale) session.getAttribute("locale"))%></font></b><br />
		<br />
		<%=Language.getBundles("workingtime", (Locale) session.getAttribute("locale"))%>:
		9:00am-23:00pm<br /> <br /><%=Language.getBundles("phone", (Locale) session.getAttribute("locale"))%>:
		(03) 83.840.205 - 01662258006<br /> <br />
		<%=Language.getBundles("support", (Locale) session.getAttribute("locale"))%>
		Yahoo: webgiaydepH2S<br /> <br /> Email: webgiaydepH2S@yahoo.com<br />
		<br /> Website: www.webgiaydep.com<br /> <br /> Facebook:
		WebgiaydepH2S<br /> <br />
	</div>
</body>
</html>