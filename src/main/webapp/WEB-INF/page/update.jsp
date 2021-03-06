<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String prefix = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改书籍</title>
<link href="<%=prefix%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=prefix%>/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="<%=prefix%>/css/jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
<link href="<%=prefix%>/js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
	body {
		padding-top: 50px;
	}
	.demoMain {
		padding: 15px;
		text-align: center;
	}
	.input-group {
		margin: 10px 0;
	}
</style>

<script type="text/javascript" src="<%=prefix%>/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<%=prefix%>/js/jquery.datetimepicker.full.min.js"></script>
<script type="text/javascript" src="<%=prefix%>/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=prefix%>/js/jquery-form/jquery.form.js"></script>
<script type="text/javascript" src="<%=prefix%>/js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$('#publicationTime').datetimepicker({
		lang:'ch',
		format:"Y/m/d",	//格式化日期
		timepicker:false,	//关闭时间选项
	});
	
	$(".alert").hide();
	
	$("#name").blur(function(){
		var name = $("#name").val();
		if(name == ""){
			$("#alertMsg").html("书名不能为空").fadeIn();
		} else {
			if("书名不能为空" == $("#alertMsg").html()){
				$("#alertMsg").fadeOut();
			}
		}
	});
	
	$("#publicationTime").blur(function(){
		var publicationTime = $("#publicationTime").val();
		if(publicationTime == ""){
			$("#alertMsg").html("出版时间不能为空").fadeIn();
		} else {
			if("出版时间不能为空" == $("#alertMsg").html()){
				$("#alertMsg").fadeOut();
			}
		}
	});
	
	$("#isbn").blur(function(){
		var isbn = $("#isbn").val();
		if(isbn == ""){
			$("#alertMsg").html("ISBN不能为空").fadeIn();
		} else {
			if("ISBN不能为空" == $("#alertMsg").html()){
				$("#alertMsg").fadeOut();
			}
		}
		
		if(isbn != ""){
			$.post('<%=prefix%>/queryByISBN.do',{"isbn":isbn},function(data){
				if(data.book != "" && data.book != null){
					var id = $("#bookId").val();
					if(data.book.id != id){
						$("#alertMsg").html("ISBN已存在").fadeIn();
					} else {
						if("ISBN已存在" == $("#alertMsg").html()){
							$("#alertMsg").fadeOut();
						}
					}
				} else {
					if("ISBN已存在" == $("#alertMsg").html()){
						$("#alertMsg").fadeOut();
					}
				}
			},'json');
		}
	});
	
	//表单提交
	$("#update").click(function(){
		
		var options = {
			dataType:"json",
			beforeSubmit:function(){
				var flag = true;
				var name = $("#name").val();
				if(name == ""){
					$("#alertMsg").html("书名不能为空").fadeIn();
					flag = false;
				}
				
				var publicationTime = $("#publicationTime").val();
				if(publicationTime == ""){
					$("#alertMsg").html("出版时间不能为空").fadeIn();
					flag = false;
				}
				
				var isbn = $("#isbn").val();
				if(isbn == ""){
					$("#alertMsg").html("ISBN不能为空").fadeIn();
					flag = false;
				}
				$.ajax({
					async:false,
					url:"<%=prefix%>/queryByISBN.do",
					data:{"isbn":isbn},
					dataType:"json",
					success:function(data){
						if(data.book != "" && data.book != null){
							var id = $("#bookId").val();
							if(data.book.id != id){
								$("#alertMsg").html("ISBN已存在").fadeIn();
								flag = false;
							}
						} 
					}
				});
				return flag;
			},
			success:function(data){
				swal({
					title: data.updateResult,
					text: "确认后将返回查询页面",
					type: data.updateResult == "修改成功！" ? "success" : "error",
					showCancelButton: false,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "确认"
				}).then(function(isConfirm){
					location.href='<%=prefix%>/toQuery.do';
				});
			}
		}
		$("#updateForm").ajaxForm(options);
	});
});
	
</script>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=prefix%>/toIndex.do">DEMO</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="<%=prefix%>/toIndex.do">Home</a>
						</li>
						<li>
						<a href="#about">About</a>
						</li>
						<li>
						<a href="#contact">Contact</a>
						</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div id="main" align="center">
		<div id="title" class="demoMain">
			<h1>修改书籍</h1>
		</div>
		<div class="alert alert-danger" role="alert" id="alertMsg"></div>
		<div id="content">
			<form id="updateForm" action="<%=prefix%>/update.do" method="post">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">书名：</span>
								<input type="text" class="form-control" placeholder="name" name="name" id="name" value="${book.name }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">作者：</span>
								<input type="text" class="form-control" placeholder="author" name="author" id="author" value="${book.author }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">出版社：</span>
								<input type="text" class="form-control" placeholder="publisher" name="publisher" id="publisher" value="${book.publisher }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">出版时间：</span>
								<input type="text" class="form-control" placeholder="publicationTime" name="publicationTime" id="publicationTime" value="${book.publicationTime }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">价格：</span>
								<input type="text" class="form-control" placeholder="price" name="price" id="price" value="${book.price }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<span class="input-group-addon">ISBN：</span>
								<input type="text" class="form-control" placeholder="isbn" name="isbn" id="isbn" value="${book.isbn }"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center">
							<input type="hidden" name="id" id="bookId" value="${book.id }"/>
							<hr/>
							<div class="btn-group">
								<button type="submit" class="btn btn-default" name="update" id="update">提交</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
			
		</div>
	</div>
	<div style=" clear:both;"> </div>
	<div style=" clear:both;"> </div>
	<div style="height:10px; line-height:10px;">&nbsp;</div>
</body>
</html>