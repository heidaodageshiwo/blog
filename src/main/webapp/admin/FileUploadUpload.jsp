<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传管理页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">

	function commentReview(state){
		var selectedRows=$("#dg").datagrid("getSelections");
		if(selectedRows.length==0){
			 $.messager.alert("系统提示","请选择要删除的数据！");
			 return;
		 }
		 var strIds=[];
		 for(var i=0;i<selectedRows.length;i++){
			 strIds.push(selectedRows[i].id);
		 }
		 var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确定要审核这<font color=red>"+selectedRows.length+"</font>条评论吗？",function(r){
			if(r){
				$.post("${pageContext.request.contextPath}/admin/comment/review.do",{ids:ids,state:state},function(result){
					if(result.success){
						 $.messager.alert("系统提示","提交成功！");
						 $("#dg").datagrid("reload");
					}else{
						$.messager.alert("系统提示","提交失败！");
					}
				},"json");
			} 
  	   });
	}

	
	function formatBlogTitle(val,row){
		if(val==null){
			return "<font color='red'>该博客已被删除！</font>";
		}else{
			return "<a target='_blank' href='${pageContext.request.contextPath}/blog/articles/"+val.id+".html'>"+val.title+"</a>";			
		}
	}
	
</script>
</head>
<body style="margin: 1px">

 <form action="${pageContext.request.contextPath}/file/upload.do?name="+$("#name").val()+"&beizhu="+$("#beizhu").val() method="post" enctype="multipart/form-data">  
        选择文件:<input type="file" name="file" width="120px"> </br>
       名称： <input type="text" id="name" name="name"/><font color="red">上传文件名称必须与选择的文件名相同</font> </br>
     备注：   <input type="text" id="beizhu" name="beizhu"/> </br>
        <input type="submit" value="上传">  
    </form>  
    <hr>  
    <form action="http://localhost:8080/uploadDemo/rest/file/down" method="get">  
        <input type="submit" value="下载">  
    </form>  
 
</body>
</html>