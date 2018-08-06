<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Java 
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">jmeter</a></li>
					<li><a href="#">EJB</a></li>
					<li><a href="#">Jasper Report</a></li>
					<li class="divider"></li>
					<li><a href="#">分离的链接</a></li>
					<li class="divider"></li>
					<li><a href="#">另一个分离的链接</a></li>
				</ul>
			</li>
		</ul>
		
		<form action="${pageContext.request.contextPath}/blog/q.html" class="navbar-form navbar-right" role="search" method="post" onsubmit="return checkData()">
		        <div class="form-group" >
		          <input type="text" id="q" name="q" value="${q }" class="form-control" placeholder="请输入要查询的关键字...">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		
	</div>
	</div>
</nav>








	</div>
</div>