<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
<style type="text/css">
</style>
<body>

	<div class="aw-top-menu-wrap">
		<%@ include file="/WEB-INF/views/bbs/head.jsp"%>
	</div>
	<div class="container">
			<div class="page-header">
				<h2>
					<b>校园论坛</b>
				</h2>
			</div>
			<div class="row">
				<c:forEach var="category" items="${categoryList}">
					<div class="col-xs-6 col-sm-6 col-md-6 placeholder">
						<div class="thumbnail">
							<img
								src="/VRweb/resources/image/shoolLogo/${category.logo_img}.png" />
							<div class="caption">
								<h3 class="text-center">
								<a href="/VRweb/category/${category.id}"><b>${category.name}</b></a>
								</h3>
								<p class="text-center text-muted">${category.AC}人浏览过该板块</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
</body>
</html>