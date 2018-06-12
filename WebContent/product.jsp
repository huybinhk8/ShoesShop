<%@page import="DAO.ProductDAO"%>
<%@page import="model.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Language.getBundles("home", (Locale) session.getAttribute("locale"))%></title>
<title>Thông Tin Sản Phẩm</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%String maSP1= (String)session.getAttribute("maSP1");
	if(maSP1 == null || maSP1.equals("")){
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
		<% 
	}
	SanPham sp = ProductDAO.getSanPham(maSP1);
	String gioiTinh = sp.isPhai()?"Nam":"Nữ";
	%>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-3 sidenav">
				<h4><%=sp.getTenSP() %></h4>
				<img
					src="<%=sp.getHinh() %>" style="width: 100%" alt="Image">
				<button type="submit" class="btn btn-default btn-lg"
					style="color: red; display: block; margin-left: auto; margin-right: auto;">Thanh
					toán ngay</button>
			</div>
			<div class="col-sm-4 sidenav">
				<p style="line-height: 30px; color: #575c68;">Phái: <%=gioiTinh %></p>
				<p style="line-height: 30px; color: #575c68;">Thương hiệu: <%=sp.getTenHang() %></p>
				<p>
					<span
						style="font-size: 30px; font-family: iCielFesterSemiCondensed-Bold; color: #ddba76;">Giá:
						<%=sp.getDonGia() %></span> <span
						style="font-size: 15px; position: relative; top: -11px;">đ</span>
				</p>
			</div>
		</div>
	</div>
</body>
</html>