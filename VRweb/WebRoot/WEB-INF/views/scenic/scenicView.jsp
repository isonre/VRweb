<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>ȫ���б�</title>
<script src="/VRweb/resources/js/jquery.min.js"></script>
<script src="/VRweb/resources/js/bootstrap.min.js"></script>
<link href="/VRweb/resources/css/bootstrap.css" rel="stylesheet">

</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="javascript:window.history.go(-1)"><span
					class="glyphicon glyphicon-chevron-left"></span><b>����</b></a>
			</div>
		</div>
	</nav>

	<!--ȫ������-->
	<div id="360VR" style="padding-top:51px;">
		<iframe width="100%" height="100%" frameborder="0" scrolling="no" src="/VRweb/resources/panoraman/${scenic.scenic_id}/index.html"></iframe>
	</div>
	<!--ȫ������ end-->
	<script>
		$(document).ready(function() {
			resizeControls();
		});
		$(window).resize(function() {
			resizeControls();
		});
		//���ø߶�Ϊ���ڿɼ��߶�
		function resizeControls() {
			$("#360VR").css("height", $(window).height());
		}
	</script>
</body>
</html>
