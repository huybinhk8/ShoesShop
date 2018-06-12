<%@page import="DAO.HangDAO"%>
<%@page import="model.Hang"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="model.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Language.getBundles("home", (Locale) session.getAttribute("locale"))%></title>

</head>
<body>
	<%@include file="header.jsp"%>
	<%
		String maHang = (String) session.getAttribute("maHang1");
		String phai = (String) session.getAttribute("sex");
		boolean gioiTinh = false;
		if (phai.equals("nam")) {
			gioiTinh = true;
		}
		if (maHang == null || phai == null) {
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
		}
	%>
	<script>
		$(".home").addClass('active');
	</script>
	<img src="./images/a.jpg"
		style="display: block; margin-left: auto; margin-right: auto; height: 150px; width: 500px;">
	<nav class="navbar navbar-default ">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Giày Nam <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<%
						for (Hang h : HangDAO.getHang()) {
							String link = "ViewHang?maHang=" + h.getMaHang() + "&phai=nam";
					%>
					<li><a href="<%=response.encodeURL(link)%>"><%=h.getTenHang()%></a></li>
					<%
						}
					%>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Giày Nữ <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<%
						for (Hang h : HangDAO.getHang()) {
							String link = "ViewHang?maHang=" + h.getMaHang() + "&phai=nu";
					%>
					<li><a href="<%=response.encodeURL(link)%>"><%=h.getTenHang()%></a></li>
					<%
						}
					%>
				</ul></li>
			<li><a href="<%=request.getContextPath()%>/index.jsp">Tất cả</a></li>
		</ul>
	</div>
	</nav>
	<div class="container-fluid bg-3 text-center">
		<h3>Sản Phẩm Bán Chạy</h3>
		<br>
		<div class="row">
			<%
				for (SanPham sp : ProductDAO.getProduct(maHang, gioiTinh)) {
					String link = "ViewSP?maSP=" + sp.getMaSP();
			%>
			<div class="col-sm-3">
				<a href="<%=response.encodeURL(link)%>"><%=sp.getTenSP()%></a> <img
					src="<%=sp.getHinh()%>" style="width: 200px" alt="Image">
				<p>
					Giá:
					<%=sp.getDonGia()%></p>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<br>
	<br>

	<footer class="container-fluid text-center">
	<p>
		Mọi chi tiết cần xin liên hệ:<br> 01656968613 (Khánh) hay
		0934772679(Huy)
	</p>
	</footer>

</body>
</html>