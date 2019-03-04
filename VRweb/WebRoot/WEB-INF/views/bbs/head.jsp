<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="/VRweb/resources/bbs/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/VRweb/resources/bbs/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/VRweb/resources/bbs/css/aw-font.css" />

    <link href="/VRweb/resources/bbs/css/default/common.css" rel="stylesheet" type="text/css" />
    <link href="/VRweb/resources/bbs/css/default/link.css" rel="stylesheet" type="text/css" />

    <script src="/VRweb/resources/bbs/js/jquery.2.js" type="text/javascript"></script>
    <script src="/VRweb/resources/bbs/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/VRweb/resources/bbs/js/jquery.infinitescroll.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/VRweb/resources/bbs/js/compatibility.js"></script>
</head>

<body>
    <div class="aw-wecenter aw-top-menu clearfix">
        <div class="container">
            <!-- logo -->
            <div class="aw-logo hidden-xs">
                <a href="/VRweb/bbs/index"></a>
            </div>
            <!-- end logo -->
            <!-- ������ -->
            <div class="aw-search-box  hidden-xs hidden-sm">
                <form class="navbar-search pull-right" action="/VRweb/bbs/search" id="global_search_form" method="post">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="�������⡢ѧУ����" autocomplete="off" name="keyword" id="aw-search-query" class="search-query" />
                        <span class="input-group-addon" title="����" id="global_search_btns" onClick="$('#global_search_form').submit();"> <i class="fa fa-search"></i>
                        </span>
                    </div>
                </form>
            </div>
            <!-- end ������ -->
            <!-- ���� -->
            <div class="aw-top-nav navbar">
                <div class="navbar-header">
                    <button  class="navbar-toggle pull-left">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <nav role="navigation" class="collapse navbar-collapse bs-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/VRweb/category/">ѧУ����</a>
                        </li>

                        <li>
                            <a href="/VRweb/user/" >�û�</a>
                        </li>
                        
                         <li>
                            <a href="/VRweb/scenic/allScenic" >ȫ��</a>
                        </li>

                    </ul>
                </nav>
            </div>
            <!-- end ���� -->
            <!-- �û��� -->
            <c:if test="${currUser==null}">
                <div class="aw-user-nav">
                    <span>
                        <a href="/VRweb/user/register">ע��</a>
                        <a href="/VRweb/user/login">��¼</a>
                    </span>
                </div>
            </c:if>

            <c:if test="${currUser!=null}">
                <div class="aw-user-nav">
                    <!-- ��½&ע���� -->
                    <a href="/VRweb/user/${currUser.id}" class="aw-user-nav-dropdown aw-hide-txt">${currUser.username}</a>
                    <div class="aw-user-nav-dropdown-list pull-right">
                        <ul>
                            <li>
                                <a href="/VRweb/user/curruser?logout">
                                    <i class="fa fa-power-off"></i>
                                    �˳�
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- end ��½&ע���� --> </div>
                <div class="aw-publish-btn">
                    <a id="header_publish" href="/VRweb/speak/publish/" class=" active" >
                        <i class="fa fa-edit"></i>
                        ����
                    </a>
                </div>
            </c:if>
        </div>
    </div>
</body>
</html>