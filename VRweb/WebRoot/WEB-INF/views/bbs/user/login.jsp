<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gbk"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>��¼ 360ȫ��У԰��̳</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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
<link href="/VRwebresources/bbs/css/default/link.css" rel="stylesheet"
	type="text/css" />
<link href="/VRweb/resources/bbs/js/plug_module/style.css"
	rel="stylesheet" type="text/css" />
<link href="/VRweb/resources/bbs/css/default/login.css" rel="stylesheet"
	type="text/css" />

<script src="/VRweb/resources/bbs/js/jquery.2.js" type="text/javascript"></script>

<script type="text/javascript">
    function getQueryString(name) {//��ȡĳ��url�������Ĳ���
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
    }
    
    $().ready(function(){ //�������error��Ϊ�գ�����ʾ�û��������������
        if(getQueryString("error")!=null){
            $(".error_message").removeClass("hide");
        }
    });
    
	</script>

</head>

</head>
<body>
	<div id="wrapper" class="clearfix">
		<div class="aw-login-wrap clearfix" style="margin-bottom: 150px;">
			<!-- ��½�� -->
			<div class="aw-login-box pull-right">
				<div class="aw-mod">
					<div class="aw-mod-head">
						<a href="register" class="b-new-user pull-right">ע�����û�</a> <i
							class="fa fa-user"></i> <span class="hidden-xs">��¼</span>
					</div>
					<div class="aw-mod-body">
						<form id="login_form" method="post" action="process/login">
							<input type="hidden" name="return_url" value="" />
							<ul>
								<li><label class="aw-label-icon pull-left"
									for="aw-login-user-name"> <i class="fa fa-user"></i>
								</label> <input type="text" id="aw-login-user-name" class="form-control"
									placeholder="�û���" name="username" /></li>
								<li><label class="aw-label-icon pull-left"
									for="aw-login-user-password"> <i class="fa fa-key"></i>
								</label> <input type="password" id="aw-login-user-password"
									class="form-control" placeholder="����" name="password" /></li>
								<li class="alert alert-danger hide error_message"><i
									class="fa fa-times"></i> <em>�û������벻��ȷ</em></li>
								<li class="last"><a href="javascript:;"
									onclick="$('#login_form').submit();" id="login_submit"
									class="pull-right btn btn-large btn-success">��¼</a></li>
							</ul>
						</form>
					</div>
					<div class="aw-mod-footer"></div>
				</div>
			</div>
			<!-- end ��½�� -->
			<!-- ������ֽ��ܲ��� -->
			<h1 class="hidden-xs">
				<p>ȫ��У԰BBS ��һ����Թ�����У��Դ��Ϣ��������ƽ̨</p>
			</h1>
			<div class="aw-login-state hidden-xs">
				<p>
					��ӭ���� ȫ��У԰BBS �ʴ�����������֪����һ�У�����𰸶������ <br /> <span>2.0 ��ʽ�淢����</span>
				</p>
				<p class="hide">��ף Y Know�ʴ� 2.0 ��ʽ����</p>
				<p class="hide">
					ȫ��У԰BBS ��һ�����͵�������վ���򣬰������ʴ�ά�����Լ��罻�ȷḻ�����������Ĺ��ܡ� <br /> <span>�⽫���������ѡ��</span>
				</p>
			</div>
			<!-- end ������ֽ��ܲ��� -->

			<div class="aw-login-box-bg hidden-xs"></div>
		</div>
		<!-- �����л� -->
		<div class="aw-bg-wrap hidden-xs">
			<ul id="aw-bg-loading">
				<li
					style="height: 590px;background-image: url(/VRweb/resources/image/skdslider/gm1.jpg);"></li>
			</ul>
		</div>
		<!-- end �����л� -->
	</div>

	<div class="aw-footer-wrap">
		<div class="aw-footer aw-wecenter">Copyright 2015 - ȫ��У԰BBS ,All Rights Reserved</div>
	</div>

</body>
</html>