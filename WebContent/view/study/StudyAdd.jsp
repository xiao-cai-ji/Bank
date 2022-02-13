<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="listlearn">学习园地管理</a></li>
    <li><a href="toAddlearn">添加</a></li>
    </ul>
    </div>
    
    <form action="${pageContext.request.contextPath}/learn/LearnAddPost" method="post"  enctype="multipart/form-data">
    <div class="formbody">
    <div class="formtitle"><span>学习园地资料管理</span></div>
    
    <ul class="forminfo">
    <li><label>资料名称</label><input name="l_name" type="text" class="dfinput" /></li>
    <li><label>完全公开</label><cite><input name="ispublic" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="ispublic" type="radio" value="" />否</cite></li>
    <li><label>资料类型</label><cite><select class="dfselect1" name="l_type">
						            <option value="">请选择</option>
								    <option value="1">规章制度</option>
								    <option value="2">学习培训材料</option>
								    <option value="3">资格岗位考试教程</option>
								    <option value="4">客户营销技巧</option></select></cite></li>
    <li><label>资料描述</label><textarea name="l_des" cols="" rows="" class="textinput"></textarea></li>
    <li><label>附件上传</label><input name="file" type="file" class="dfinputfile"/> </li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="添加"/>&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="reset" class="btn" value="重置"/></li>
    </ul>
    
    </div>
    </form>
</body>
</html>