<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新发布</title>
<link type="text/css" rel="stylesheet" href="css/mycss1.css" />
<link type="text/css" rel="stylesheet" href="css/homecss.css" />
<link type="text/css" rel="stylesheet" href="css/personal.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
        $("#submit").click(function(){
			alert("添加成功");
			});
    });
</script>
<style type="text/css">
body,td,th {
	font-family: SimSun, "宋体", "Arial Narrow";
}
body {
	margin-left: 0px;
}
</style>
</head>

<body>
<div class="container">
    <header>
        <nav class="top-nav">
            <ul>
                <li><a href="platform.html" id="navlia">平台</a></li>
                <li><a href="personal.html" id="navlia">个人中心</a></li>
            </ul>
        </nav>
    </header>
    <div class="meun">
       <b>菜单</b><br>
                    <li class="top-search">
                      <form>
                            <input type="text" name="搜索" placeholder="Search ...">
                            <button type="submit"></button>
                      </form>
                      <br />
                      <br/>
                    </li>
                    <li><a href="personal.html" target="_self">已借阅<i class="im-screen"></i></a>
                    </li><br/>
                    <li><a href="publish.html" target="_self">已发布<i class="st-chart"></i></a>
                    </li> <br/>
                    <li><a href="wait.html" target="_self">待借阅<i class="st-chart"></i></a>
                    </li><br />
                     <li><a href="addbook.html" target="_self">新发布<i class="st-chart"></i></a>
                    </li>    
     </div> 
    <div class="content">
    <div class="head">
       <font size="+1">
       <br />
        <h2 align="center">添加图书</h2><br />
        <form>
        书名：<input type="text" name="text" size="30"/><br /><br />
        请上传书的照片：<input type="file" name="file" /><br /><br />
        简要描述：<textarea name="miaoshu" rows="5" cols="40">
        </textarea>
        <br /><br />
            <input type="submit" name="submit" id="submit" value="提交表单"/>&nbsp;
            <input type="reset" name="reset" id="reset" value="重置按钮"/>
        </form>
      </font>
      </div>
  </div>
  <footer>
        <p>Copyright © 2016.helloweb name All rights reserved.</p>
  </footer>
</div>
</body>
     
</html>
