<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- fa CSS -->
<link href="${pageContext.request.contextPath}/admin/css/font-awesome.min.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.2.3.min.js"></script> 
<!-- Nav CSS -->
<link href="${pageContext.request.contextPath}/admin/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/admin/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/custom.js"></script>
</head>
<body>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">标题</a>
            </div>
            <!-- /.navbar-header -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="javascript:;"><i class="fa fa-laptop fa-fw nav_icon"></i>系统管理 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminController/getSlide"><i class="fa fa-file-image-o fa-fw nav_icon"></i>轮播图</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminController/getAdmin"><i class="fa fa-cog fa-fw nav_icon"></i>管理员密码修改</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="javascript:;"><i class="fa fa-user fa-fw nav_icon"></i>用户管理 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminController/getUsers"><i class="fa fa-list fa-fw nav_icon"></i>用户列表</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="javascript:;"><i class="fa fa-home fa-fw nav_icon"></i>电影管理 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminController/getMovies"><i class="fa fa-list fa-fw nav_icon"></i>电影列表</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="javascript:;"><i class="fa fa-list-alt fa-fw nav_icon"></i>评论管理 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminController/getComments"><i class="fa fa-list fa-fw nav_icon"></i>评论列表</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
            <div class="panel panel-default "> 
            <div class="panel-heading"> 
                <h3 > 
                    	网站配置&nbsp;&nbsp;
                    <small>修改电影信息</small> 
                </h3> 
            </div> 
            <div class="panel-body"> 
				 <form class="form-horizontal" role="form" action="/adminController/modifyUser" method="post"  > 
				        <div class="form-group"> 
				            <label class="col-sm-2 control-label">编号</label> 
				            <div class="col-sm-10"> 		
				                <input type="text" class="form-control1"  id="id" value="${movie.id}" readonly> 
				            </div> 
				        </div> 
				        <div class="form-group">
				        	<label  class="col-sm-2 control-label">图片</label> 
				            <div class="col-sm-10"> 
				                <img src="${movie.poster}" width="100"> 
				            </div> 
				        </div>			        
				        <div class="form-group">
				        	<label  class="col-sm-2 control-label">电影名</label> 
				            <div class="col-sm-10"> 
				                <input type="text" class="form-control1"  id="name" value="${movie.name}"> 
				            </div> 
				        </div> 
				        <div class="form-group">
				        	<label  class="col-sm-2 control-label">类型</label> 
				            <div class="col-sm-10"> 
				                <input type="text" class="form-control1"  id="type" value="${movie.type}"> 
				            </div> 
				        </div>	
				        <div class="form-group">
				        	<label  class="col-sm-2 control-label">上映日期</label> 
				            <div class="col-sm-10"> 
				                <input type="text" class="form-control1"  id="published_year" value="${movie.published_year}"> 
				            </div> 
				        </div>					        
			   				   					   				        				        				                 
				        <div class="form-group"> 
				            <div class="col-sm-offset-10 col-sm-2"> 
				                <a class="btn btn-info btn-lg"  id="modify">修改</a>
				                <a class="btn btn-info btn-lg" href="/adminController/getMovies">取消</a>
				            </div> 
				        </div> 
				    </form> 
				                
            </div>
            </div>
    </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/admin/js/bootstrap.min.js"></script>
</body>
<script>
$('#modify').click(function(){
	var name = $('#name').val();
	var type = $('#type').val();	
	var id = $('#id').val();
	var published_year = $('#published_year').val();
	if(name == '' || type == '' || id == ''|| published_year== ''){
		alert("不能为空");
		return false;
	}
	
	$.ajax({
		   type: "POST",
		   url: "/adminController/modifyMovie",
		   dataType : "json",
		   data: {
			   name:name,
			   type:type,
			   id:id,
			   published_year:published_year,
		   },
		   success:function(data){
 			   if(data.success){
				   	alert("修改成功");
		     		window.location.href = "/adminController/getMovies";
			   }else{
				   alert("修改失败请重新尝试");
			   } 
		   },
		   
		   error:   function(err){
			   alert(err)
		}
		   
		}); 
});
</script>
</html>
