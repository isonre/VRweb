<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"  %>

<!DOCTYPE html>
<html class="">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="/VRweb/resources/bbs/js/editor/ckeditor.js"></script>
    <title>����   360ȫ��У԰��̳</title>
<style type="text/css">.fancybox-margin{margin-right:17px;}</style>
<style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style>
</head>

<body data-feedly-mini="yes">
<div class="aw-top-menu-wrap">
    <%@ include file="/WEB-INF/views/bbs/head.jsp"%>
</div>
<div class="aw-container-wrap">
<div class="aw-container aw-wecenter aw-publish">
    <div class="container">
        <div class="row aw-content-wrap">
            <div class="tabbable">
                <!-- tab  -->
                <ul class="nav nav-tabs aw-reset-nav-tabs aw-publish-tabs">
                    <li class="active">��������</li>
                </ul>
                <!-- tab -->

                <div class="col-sm-12 col-md-9 aw-main-content">
                    <sf:form method="post" id="question_form" modelAttribute="question" action="/VRweb/speak/publish?${mode} ">
                    	<span id="cur_category" class="hide" value="${question.category.name}">
                    	</span>
                    	<input  name="question_id" type="hidden"  value="${question.id}">
                        <select name="category_id" class="hide" id="category_id" >
                        	<option value="-1">��Ч����</option>
                        	<c:forEach var="category" items="${categories}">    
                        		<option value="${category.id}">${category.name}</option>
                        	</c:forEach>
                	    </select>
                    <div class="aw-mod aw-dynamic-index aw-mod-publish">
                        <div class="aw-mod-body">
                            <h3>�������:</h3>
                             <!-- ������� -->
                            <div class="aw-publish-title">
                                <sf:input path="title" placeholder="�������..." name="question_title" id="question_title" class="form-control" errortips="���ⲻ������5����"/>
                                <sf:errors path="title" cssClass="alert alert-danger"/>
                                <div class="aw-publish-title-dropdown">
                                    <p class="dropdown-toggle" data-toggle="dropdown">
                                        <span id="aw-topic-tags-select">ѡ�����</span>
                                        <a href="javascript:;">
                                            <i class="fa fa-chevron-down"></i>
                                        </a>
                                    </p>
                                    <div aria-labelledby="dropdownMenu" role="menu" class="dropdown-menu aw-category-dropdown">
                                        <span>
                                            <i class="i-dropdown-triangle"></i>
                                        </span>
                                        <ul class="aw-category-dropdown-list">
                                        	<c:forEach var="category" items="${categories}">    
                        						<li><a data-value="${category.id}">${category.name}</a></li>
                        					</c:forEach>
                                        </ul>
                                    </div>
                                    <c:if test="${cateError!=null}">
                                    <span  class="alert alert-danger pull-right">${cateError}</span>
                                    </c:if>
                                </div>
                            </div>
                            <!-- end ������� -->

                            <h3>����˵��:</h3>
                            <div class="aw-mod aw-mod-publish-box">
                                <div class="aw-mod-head">
                                	<p><sf:errors path="content" cssClass="alert alert-danger"/></p>
                                    <sf:textarea path="content" name="answer" id="answer" errortips="���ݲ�������5����"/>
                                        <script>
                                            CKEDITOR.replace('answer',{
                                                autoGrow_minHeight: 382,
                                                resize_enabled: false
                                            });
                                        </script>
                                </div>
                            </div>
                        </div>
                        <div class="aw-mod-footer clearfix">                          
                            <a class="btn btn-large btn-success btn-publish-submit" id="publish_submit" onclick="$(question_form).submit();">ȷ�Ϸ���</a>
                        </div>
                    </div>
                </sf:form>
            </div>
            <!-- ����� -->
            <div class="col-sm-12 col-md-3 aw-side-bar hidden-xs">
                <!-- ���ⷢ��ָ�� -->
                <div class="aw-side-bar-mod aw-no-border-bottom aw-side-bar-mod-publish">
                    <div class="aw-side-bar-mod-head">
                        <h3>���ⷢ��ָ��</h3>
                    </div>
                    <div class="aw-side-bar-mod-body">
                        <p> <b>�� �������:</b>
                            ����׼ȷ����������������������˼��
                        </p>
                        <p> <b>�� ���ⲹ��:</b>
                            ��ϸ����������������, ���ṩһЩ��ص��ز��Թ������߸�����˽�����Ҫ���������˼��
                        </p>
                        <p>
                            <b>�� ѡ����:</b>
                            ѡ��һ�����߶�����ʵĻ���, ��������������õ���������ͬ��Ȥ���˲���. �����˿���������������֮����Ӻͱ༭�����������Ļ���
                        </p>
                        <p>
                            <b>�� ���ڻ��֣�</b>
                            ����һ������������� 20 ������, ÿ��һ���ظ��㽫��� 5 �����ֵĽ���, Ϊ����������, �ڷ��������ʱ��ϣ���ܹ����õ��������������Լ���ʹ��վ����������
                        </p>
                    </div>
                </div>
                <!-- end ����״̬ --> </div>
            <!-- end ����� --> </div>
    </div>
</div>
</div>
</div>

<div class="aw-footer-wrap">
    <div class="aw-footer aw-wecenter">
         Copyright  2015 - ȫ��У԰BBS , All Rights Reserved
        <br />
        <span class="hidden-xs">��ǰʱ��: GMT +8 &nbsp;</span>
    </div>
</div>
<script type="text/javascript">
	$("ul.aw-category-dropdown-list li").click(function(event){
		category_name = event.currentTarget.innerText.trim();
		$("#aw-topic-tags-select").text(category_name);
		$("#category_id option").each(function (){  
			$(this).removeAttr("selected"); 
    		if($(this).text()==category_name){   
    		$(this).attr("selected" , "selected");   
 			}});
		});
		
	$(document).ready(function () {
        category_name = $('#cur_category').attr("value");
        if(category_name!=""){
       	 	$("#aw-topic-tags-select").text(category_name);
       	 	$("#category_id option").each(function (){  
			$(this).removeAttr("selected"); 
    		if($(this).text()==category_name){   
    		$(this).attr("selected" , "selected");   
 			}});
       	 	}
  		});
	
</script>
</body>
</html>