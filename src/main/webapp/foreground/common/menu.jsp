<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script type="text/javascript">
	function checkData(){
		var q=document.getElementById("q").value.trim();
		if(q==null || q==""){
			alert("请输入您要查询的关键字！");
			return false;
		}else{
			return true;
		}
	}
</script>
<div class="row">
	<div class="col-md-12" style="padding-top: 10px">
		
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">首页</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<!-- <li class="active"><a href="#">iOS</a></li> -->
			<%-- <li class="active"><a href="${pageContext.request.contextPath}/index.html"">首页</a></li> --%>
			<!-- <li><a href="#">SVN</a></li> -->
			<li><a href="${pageContext.request.contextPath}/blog/aboutMe.html">关于博主</a></li>
			<!-- 关于 -->
			<!-- http://www.runoob.com/bootstrap/bootstrap-dropdown-plugin.html  关于下拉菜单问题 -->
			<!-- 关于java一列 -->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Java 
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<!-- <li><a href="#">jmeter</a></li>
					<li><a href="#">EJB</a></li>
					<li><a href="#">Jasper Report</a></li> -->
					<c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
					</c:forEach>
					
					
					
					<li class="divider"></li>
					<li><a href="#">博主真懒还没写东西</a></li>
					<!-- <li class="divider"></li>
					<li><a href="#">博主真懒还没写东西</a></li> -->
				</ul>
			</li>
			<!-- 关于oracle一列 -->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Oracle 
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					 <li><a href="#">博主真懒还没写东西</a></li>
					<!--<li><a href="#">EJB</a></li>
					<li><a href="#">Jasper Report</a></li> -->
					<%-- <c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
					</c:forEach> --%>
					
					
					
					<!-- <li class="divider"></li>
					<li><a href="#">分离的链接</a></li>
					<li class="divider"></li>
					<li><a href="#">另一个分离的链接</a></li> -->
				</ul>
			</li>
			<!-- 关于mysql一列 -->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Mysql 
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">博主真懒还没写东西</a></li>
					<!-- <li><a href="#">EJB</a></li>
					<li><a href="#">Jasper Report</a></li> -->
					<%-- <c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
					</c:forEach>
					
					
					
					<li class="divider"></li>
					<li><a href="#">分离的链接</a></li>
					<li class="divider"></li>
					<li><a href="#">另一个分离的链接</a></li> --%>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/fileproscenium/filedown.html">源码下载</a></li>
			
			
			
			
			
			
			
			
		</ul>
		
		<form action="${pageContext.request.contextPath}/blog/q.html" class="navbar-form navbar-right" role="search" method="post" onsubmit="return checkData()">
		        <div class="form-group" >
		          <input type="text" id="q" name="q" value="${q }" class="form-control" style="height:30px;" placeholder="请输入要查询的关键字...">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		
	</div>
	</div>
</nav>








	</div>
</div>