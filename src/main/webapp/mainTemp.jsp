<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<meta http-equiv="Cache-Control" content="no-transform "> 
	<meta http-equiv="Cache-Control" content="no-siteapp">   
    <meta http-equiv="Window-target" content="_top">
        
	<link href="${pageContext.request.contextPath}/static/_files/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/_files/index.css" rel="stylesheet">









<title></title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
<link href="${pageContext.request.contextPath}/static/images/qiang.png" rel="SHORTCUT ICON">
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
<script>
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?aa5c701f4f646931bf78b6f40b234ef5";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
</script>

<style type="text/css">
	  body {
        padding-top: 10px;
        padding-bottom: 40px;
      }
</style>
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backgroundxiantiao/canvas-nest.min.js"></script><canvas height="926" width="1920" style="position: fixed; top: 0px; left: 0px; z-index: -1; opacity: 1;" id="c_n1"></canvas>
<script src="${pageContext.request.contextPath}/zhangqiangDate/digit.js"></script>
<script src='${pageContext.request.contextPath}/zhangqiangDate/main.js'></script>

<div class="container">

<jsp:include page="/foreground/common/head.jsp"/>
	
	<jsp:include page="/foreground/common/menu.jsp"/>

	<div class="row">
		
		<div class="col-md-3">
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/user_icon.png"/>
					博主信息
				</div>
				<div class="user_image">
					<img src="${pageContext.request.contextPath}/static/userImages/${blogger.imageName }"/>
				</div>
				
				<div class="nickName">${blogger.nickName }</div>
				<div class="userSign">(${blogger.nickName })</div>
			</div>
			<div class="data_list" style="height: 60px;">
				<canvas id='canvas' style="width:300px;">您的浏览器不支持canvas</canvas>
			</div>
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="blogCount" items="${blogCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?releaseDateStr=${blogCount.releaseDateStr }">${blogCount.releaseDateStr }(${blogCount.blogCount })</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="link" items="${linkList }">
							<li><span><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			
		</div>
		 <div class="col-md-9">
			<jsp:include page="${mainPage }"></jsp:include>
		</div> 
		
		
	</div>
	<jsp:include page="/foreground/common/foot.jsp"/>
</div>
</body>
</html>