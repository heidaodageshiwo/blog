<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap分页实例</title>



<link href="${pageContext.request.contextPath}/staticfenye/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/staticfenye/js/jQuery/jquery-2.1.4.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/staticfenye/js/bootstrap/js/bootstrap.min.js"></script>
 --%><script src="${pageContext.request.contextPath}/staticfenye/js/bootstrap/js/bootstrap-paginator.min.js"></script>





<style type="text/css">

#bottomTab {
 margin-right: auto;
 margin-left: auto;
 width:600px;
 height: 600px;
}
#queryDiv {
 margin-right: auto;
 margin-left: auto;
 width:600px;
}
#textInput {
 margin-top: 10px;
}
#tableResult {
 margin-right: auto;
 margin-left: auto;
 width:600px;
}
td {
 width:150px
}


</style>
</head>
<body>
	<div id = "queryDiv">
		<input id = "textInput" type="text" style="height:30px;" placeholder="请输入下载文件名称" >
		<button id = "queryButton" class="btn btn-primary" type="button">查询</button>
	</div>
	<form id="form1">
		<table class="table table-bordered" id = 'tableResult'>
			<caption>查询文件列表结果</caption>
			<thead>
				<tr>
					<th>文件编号</th>
					<th>名称</th>
					<th>备注</th>
					<th>文件下载次数</th>
				</tr>
			</thead>
			<tbody id="tableBody">
			</tbody>
		</table>
		
	</form>
	<!-- 底部分页按钮 -->
		<div   class="content" id="bottomTab"></div>
	<script type='text/javascript'>    
	    var PAGESIZE = 10;
        var options = {  
            currentPage: 1,  //当前页数
            totalPages: 10,  //总页数，这里只是暂时的，后头会根据查出来的条件进行更改
            size:"normal",  
            alignment:"center",  
            itemTexts: function (type, page, current) {  
                switch (type) {  
                    case "first":  
                        return "首页";  
                    case "prev":  
                        return "上一页";  
                    case "next":  
                        return "下一页";  
                    case "last":  
                        return "尾页";  
                    case "page":  
                        return  page;  
                }                 
            },  
            onPageClicked: function (e, originalEvent, type, page) {  
            	var userName = $("#textInput").val(); //取内容
            	buildTable(userName,page,PAGESIZE);//默认每页最多10条
            }  
        }  

        //获取当前项目的路径
        var urlRootContext = (function () {
            var strPath = window.document.location.pathname;
            var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
            return postPath;
        })();
        
       
        //生成表格
        function buildTable(userName,pageNumber,pageSize,currentPageNumber) {
        	 /* var url =  urlRootContext+"/fileproscenium" + "/proscenium.do"; //请求的网址 */
        	 var url =  urlRootContext+ "/proscenium.do"; //请求的网址
        	 //alert(url);
             var reqParams = {'userName':userName, 'pageNumber':pageNumber,'pageSize':pageSize};//请求数据
             $(function () {   
             	  $.ajax({
             	        type:"POST",
             	        url:url,
             	        data:reqParams,
             	        async:false,
             	        dataType:"json",
             	        success: function(data){
             	            if(data.isError == false) {
             	           // options.totalPages = data.pages;
             	        var newoptions = {  
             	        		 currentPage: currentPageNumber,  //当前页数  
                                 totalPages: data.pages==0?1:data.pages,  //总页数  
                                 size:"normal",    
                                 alignment:"center",  
           
          onPageClicked: function (e, originalEvent, type, page) {    
                         var userName = $("#textInput").val(); //取内容  
                         var currentPageNumber ;  
                          switch (type) {    
                          case "prev":    
                           currentPageNumber = page + 1;    
                           break;  
                          case "next":    
                           currentPageNumber = page - 1;      
                           break;  
              }                   
                         buildTable(userName,page,PAGESIZE,currentPageNumber);
         }    }         	           
         $('#bottomTab').bootstrapPaginator("setOptions",newoptions); //重新设置总页面数目
         var dataList = data.dataList;
         $("#tableBody").empty();//清空表格内容
         if (dataList.length > 0 ) {
             $(dataList).each(function(){//重新生成
             	    $("#tableBody").append('<tr>');
                    $("#tableBody").append('<td>' + this.id + '</td>');
                    $("#tableBody").append('<td>' + this.name + '</td>');
                    $("#tableBody").append('<td>' + this.beizhu + '</td>');
                   /*  $("#tableBody").append('<td>' + this.dizhi + '</td>'); */
                    $("#tableBody").append('<td> <a href="${pageContext.request.contextPath}/fileproscenium/down.do?id='+this.id+'">' + this.xzl+"次"+ '</a></td>');
                   
                   
                   
                   
                    $("#tableBody").append('</tr>');
             	    });  
             	    } else {             	            	
             	          $("#tableBody").append('<tr><th colspan ="4"><center>查询无数据</center></th></tr>');
             	    }
             	    }else{
             	          alert(data.errorMsg);
             	            }
             	      },
             	        error: function(e){
             	           alert("查询失败:" + e);
             	        }
             	    });
               });
        }
        
        //渲染完就执行
        $(function() {
        	
        	//生成底部分页栏
            $('#bottomTab').bootstrapPaginator(options);     
        	
        	buildTable("",1,10);//默认空白查全部
        	
            //创建结算规则
            $("#queryButton").bind("click",function(){
            	var userName = $("#textInput").val();	
            	buildTable(userName,1,PAGESIZE);
            });
        });
    </script>
</body>
</html>