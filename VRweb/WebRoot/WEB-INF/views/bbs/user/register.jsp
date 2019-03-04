<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gbk"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<title>ע�� 360ȫ��У԰��̳</title>
<!--[if IE]>
</base>
<![endif]-->
<link href="/VRweb/resources/bbs/css/default/img/favicon.png"
	rel="shortcut icon" type="image/x-icon" />

<link rel="stylesheet" type="text/css"
	href="/VRweb/resources/bbs/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/VRweb/resources/bbs/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="/VRweb/resources/bbs/css/aw-font.css" />

<link href="/VRweb/resources/bbs/css/default/common.css"
	rel="stylesheet" type="text/css" />
<link href="/VRweb/resources/bbs/css/default/link.css" rel="stylesheet"
	type="text/css" />
<link href="/VRweb/resources/bbs/js/plug_module/style.css"
	rel="stylesheet" type="text/css" />
<link href="/VRweb/resources/bbs/css/default/register.css"
	rel="stylesheet" type="text/css" />
	
    <script src="/VRweb/resources/bbs/js/jquery.2.js" type="text/javascript"></script>

</head>
<body>
	<div class="aw-register-bg">
		<div class="aw-register-head">
			<h1>ȫ��У԰BBS ��һ����Թ�����У��Դ��Ϣ��������ƽ̨</h1>
			<p class="aw-register-head-title" id="header_action">
				<i class="icon-add-alt"></i>
			</p>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#header_action').append('ע�����û�');
		});
	</script>

	<div class="aw-register-box">
		<sf:form class="aw-register-form" action="/VRweb/user/process/register/"
			method="post" id="register_form" modelAttribute="user">
			<ul>
				<li class="alert alert-danger hide error_message"><i
					class="fa fa-times"></i> <em></em></li>
				<li><sf:input path="username" name="username" placeholder="�û���"
						tips="������һ�� 4-16 λ���û���,���ܺ������ַ�" errortips="�û������Ȳ�����" />
						 <sf:errors path="username" cssClass="aw-reg-err" /></li>
				<li><sf:password path="password" name="password"
						placeholder="����" tips="������ 6-16 ���ַ������ִ�Сд" errortips="���벻���Ϲ���" />
					<sf:errors path="password" cssClass="aw-reg-err" /></li>
				<li class="more-information hide">
					<ul>
						<li>�Ա�: <label> <sf:radiobutton path="sex" name="sex"
									value="��" checked="checked" />��
						</label> &nbsp; <label> <sf:radiobutton path="sex" name="sex"
									value="Ů" />Ů
						</label>
						</li>
						<li><sf:input path="oneWord" class="form-control"
								placeholder="һ�仰����" id="welcome_signature" /></li>
					</ul>
				</li>
				<li><a class="btn btn-default btn-block more-information-btn">
						�������� <i class="fa fa-chevron-down"></i>
				</a></li>
				<li class="last">
					<div class="aw-regiter-agreement hide">
						<div class="aw-register-agreement-txt" id="register_agreement"></div>
					</div></li>
				<li class="clearfix">
					<button class="pull-right btn btn-large btn-success"
						onclick="$('#register_form').submit();">ע��</button>
				</li>
			</ul>
		</sf:form>
	</div>

	<div class="aw-footer-wrap">
		<div class="aw-footer aw-wecenter">Copyright 2015 - ȫ��У԰BBS ,
			All Rights Reserved</div>
	</div>

</body>
</html>
