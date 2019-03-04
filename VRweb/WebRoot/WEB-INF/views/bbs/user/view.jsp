<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="/VRweb/resources/bbs/css/default/user.css" rel="stylesheet"
    type="text/css" />
</head>

<body>
    <div class="aw-top-menu-wrap">
        <%@ include file="/WEB-INF/views/bbs/head.jsp"%>
    </div>
    <div class="aw-container-wrap">
        <div class="aw-container aw-wecenter">
            <div class="container">
                <div class="row aw-content-wrap">
                    <div class="col-sm-12 col-md-9 aw-main-content">
                        <!-- �û��������� -->
                        <div class="aw-mod aw-user-detail-box">
                            <div class="aw-mod-head" style="padding-left: 20">
                                <span class="pull-right aw-user-follow-box">
                                    <c:if test="${currUser.id==user.id}">
                                        <a href="/VRweb/user/curruser?update" class="btn btn-mini btn-success">�༭</a> 
                                    </c:if>
                                    <c:if test="${currUser!=null and currUser.id!=user.id}">
                                        <a href="javascript:;" class="btn btn-mini btn-default aw-active" id="focus-btn" data-uid="${currUser.id}"  data-fid="${user.id}" onclick="focus_people(this, ${currUser.id}, ${user.id});">��ע</a>
                                    </c:if>                             
                                </span>
                                    
                                <h1>${user.username}</h1>
                                <p class="aw-text-color-999">${user.oneWord}</p>
                                <p class="aw-user-flag">
                                    <span class="aw-text-color-666">
                                        <i class="fa fa-home"></i>
                                        ��ҳ������ : ${user.AC}�η���   
                                    </span>
                                </p>
                            </div>
                            <div class="aw-mod-body">
                                <div class="aw-user-center-follow-meta">
                                    <span><i class="fa fa-signal"></i> ���� : <em
                                        class="aw-text-color-orange">${user.credit}</em>
                                    </span>                                                             
                                </div>

                            </div>
                            <div class="aw-mod-footer">
                                <ul class="nav">
                                    <li class="active"><a href="#overview" id="page_overview"
                                        data-toggle="tab">����</a>
                                    </li>
                                    <li><a href="#questions" id="page_questions"
                                        data-toggle="tab">����</a>
                                    </li>
                                    <li><a href="#answers" id="page_answers" data-toggle="tab">�ظ�</a>
                                    </li>
                                    <li><a href="#focus" id="page_focus" data-toggle="tab">��ע�б�</a>
                                    </li>
                                    <li><a href="#detail" id="page_detail" data-toggle="tab">��ϸ����</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- end �û��������� -->
                        <div class="aw-user-center-tab">
                            <div class="tab-content">
                                <div class="tab-pane active" id="overview">
                                    <!-- �ظ� -->
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>
                                                <a class="pull-right aw-more-content" href="javascript:;"
                                                    onclick="$('#page_answers').click();">���� ...</a>�ظ�
                                            </h3>
                                        </div>
                                        <div class="aw-mod-body">
                                            <c:forEach var="answer" begin="0" end="5" items="${answers}">
                                                <div class="aw-item">
                                                    <div class="aw-mod">
                                                        <div class="aw-mod-head">
                                                            <h4 class="aw-hide-txt">
                                                                <a href="/VRweb/speak/${answer.question.id}">${answer.question.title}</a>
                                                            </h4>
                                                        </div>
                                                        <div class="mod-body">
                                                            <p class="aw-hide-txt">${answer.content}
                                                                <span class="aw-text-color-999">
                                                                     <fmt:formatDate value="${answer.date}" pattern="yyyy-MM-dd hh:mma"/>
                                                                     &nbsp;�ش�
                                                                </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>                        
                                        </div>
                                    </div>
                                    <!-- end �ظ� -->

                                    <!-- ���� -->
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>
                                                <a class="pull-right aw-more-content" href="javascript:;"
                                                    onclick="$('#page_questions').click();">����...</a>����
                                            </h3>
                                        </div>
                                        <div class="aw-mod-body">
                                            <c:forEach var="question" begin="0" end="5" items="${questions}">
                                                <div class="aw-item">
                                                    <div class="aw-mod">
                                                        <div class="aw-mod-head">
                                                            <h4 class="aw-hide-txt">
                                                                <a href="/VRweb/speak/${question.id}">${question.title}</a>
                                                            </h4>
                                                        </div>
                                                        <div class="mod-body">
                                                            <p class="aw-hide-txt">${question.AC} �����&nbsp;
                                                                    <span class="aw-text-color-999">
                                                                        <fmt:formatDate value="${question.date}" pattern="yyyy-MM-dd hh:mma"/>
                                                                        &nbsp;���
                                                                    </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!-- end ���� -->

                                </div>

                                <div class="tab-pane" id="questions">
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>�ظ�</h3>
                                        </div>
                                        <div class="aw-mod-body" id="question-item-container">
                                            <c:forEach var="question" items="${questions}">
                                                    <div class="aw-item">
                                                        <div class="aw-mod">
                                                            <div class="aw-mod-head">
                                                                <h4 class="aw-hide-txt">
                                                                    <a href="/VRweb/speak/${question.id}">${question.title}</a>
                                                                </h4>
                                                            </div>
                                                            <div class="mod-body">
                                                                <p class="aw-hide-txt">${question.AC} �����&nbsp;
                                                                    <span class="aw-text-color-999">
                                                                        <fmt:formatDate value="${question.date}" pattern="yyyy-MM-dd hh:mma"/>
                                                                        &nbsp;���
                                                                    </span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane" id="answers">
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>�ظ�</h3>
                                        </div>
                                        <div class="aw-mod-body" id="answer-item-container">
                                            <c:forEach var="answer" items="${answers}">
                                                <div class="aw-item">
                                                    <div class="aw-mod">
                                                        <div class="aw-mod-head">
                                                            <h4 class="aw-hide-txt">
                                                                <a href="/VRweb/speak/${answer.question.id}">${answer.question.title}</a>
                                                            </h4>
                                                        </div>
                                                        <div class="mod-body">
                                                            <p class="aw-hide-txt">${answer.content}
                                                                <span class="aw-text-color-999">
                                                                     <fmt:formatDate value="${answer.date}" pattern="yyyy-MM-dd hh:mma"/>
                                                                     &nbsp;�ش�
                                                                </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>    
                                        </div>
                                    </div>
                                </div>


                                <div class="tab-pane" id="detail">
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>��ϸ����</h3>
                                        </div>
                                        <div class="aw-mod-body aw-user-center-details">
                                                <dl>
                                                <dd><b>�˻�����</b>${user.username}</dd></br></br>
                                                <dd><b>�Ա�</b>${user.sex}</dd></br></br>
                                                <dd><b>һ�仰���ܣ�</b>${user.oneWord}</dd></br></br>
                                                <dd><b>��ϸ���ܣ�</b>${user.personalDescribe}</dd></br></br>
                                            </dl>

                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane" id="focus">
                                    <div class="aw-mod">
                                        <div class="aw-mod-head">
                                            <h3>��ע</h3>
                                        </div>
                                        <div class="aw-mod-body" id="focus-item-container">
                                            <c:forEach var="user" items="${focuslList}">
                                                <div class="aw-item">
                                                    <div class="aw-mod">
                                                        <div class="aw-mod-head">
                                                            <h4 class="aw-hide-txt">
                                                                <a href="/VRweb/user/${user.id}" class="aw-user-name">${user.username}</a>&nbsp;${user.oneWord}                                                                      
                                                            </h4>
                                                        </div>
                                                        <div class="mod-body">
                                                            <p class="aw-hide-txt">
                                                                <span>
                                                                    <i class="fa fa-tag"></i>����:<em class="aw-text-color-green">${user.AC}</em>
                                                                </span>
                                                                <span>
                                                                    <i class="fa fa-signal"></i>����:<em class="aw-text-color-orange">${user.credit}</em>
                                                                </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <a class="aw-back-top hidden-xs" href="javascript:;"
        onclick="$.scrollTo(1, 600, {queue:true});"><i
        class="fa fa-arrow-up"></i>
    </a>
    <div id="navigation" align="center">  
            <a href="/VRweb/user/${user.id}?page=2"></a> 
    </div> 
    <script type="text/javascript">
         $(document).ready(function (){
             $("#question-item-container").infinitescroll({
                    navSelector: "#navigation",
                    nextSelector: "#navigation a",
                    itemSelector: "#question-item-container .aw-item",          
                    animate: true                       //����ʱ��ʱ����Ҫ������Ĭ����false 
                });
         }); 
         $(document).ready(function (){
             $("#answer-item-container").infinitescroll({
                    navSelector: "#navigation",
                    nextSelector: "#navigation a",
                    itemSelector: "#answer-item-container .aw-item",          
                    animate: true                       //����ʱ��ʱ����Ҫ������Ĭ����false 
                });
         });
         $(document).ready(function (){
            $("#focus-item-container").infinitescroll({
                    navSelector: "#navigation",
                    nextSelector: "#navigation a",
                    itemSelector: "#focus-item-container .aw-item",          
                    animate: true                       //����ʱ��ʱ����Ҫ������Ĭ����false 
                });
         });
         
         function focus_people(object,uid,fid){
            var data = "uid="+uid+"&fid="+fid;
            $.post(
                    "ajax/focususer",
                     data,
                     function(result){
                            if(result=="focus"){
                                $(object).removeClass("aw-active");
                                $(object).text("ȡ����ע");
                            }else if(result=="unfocus"){
                                $(object).addClass("aw-active");
                                $(object).text("��ע");
                            }
                        },
                        "text");    
         };
         
         $(document).ready(function (){
            object = $("#focus-btn");
            if(object.length>0){
                var uid = parseInt(object.attr("data-uid"));
                var fid = parseInt(object.attr("data-fid"));
                var data = "uid="+uid+"&fid="+fid;
                $.post(
                    "ajax/getfocusstatus",
                     data,
                     function(result){
                            if(result=="focus"){
                                $(object).removeClass("aw-active");
                                $(object).text("ȡ����ע");
                            }else if(result=="unfocus"){
                                $(object).addClass("aw-active");
                                $(object).text("��ע");
                            }
                        },
                        "text");    
            }
         });
    </script>
</body>
</html>