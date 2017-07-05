<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>index</title>
	<link type="text/css" rel="stylesheet" href="./css/login.css" />
	<link type="text/css" rel="stylesheet" href="css/homecss.css" />
	<script type="text/javascript" src="./js/ehandler.js"></script>
	<script type="text/javascript">
        function a()  {

            var name = document.getElementById("username").value;
            var passed = document.getElementById("password").value;

            if(name==null||passed==null||name==""||passed==""){
                alert("用户名或密码不能为空");
                return false;
            }
        }
	</script>
</head>

<body>
<div class="container">
    <header>
        <nav class="top-nav">
            <div id="group">
            HelloWeb
            </div>
        </nav>
    </header>
    <div class="content">
        <div class="contact">
        	<div class="header" >
				<h1>登录</h1>
			</div>
            
    		<form  id="form1" onsubmit="return a()"  action="Login1.jsp">
				<li>
                	<label>用户名:</label>
               		<i class="auth_icon auth_icon_user"></i>
                	<input id="username" name="username" placeholder="用户名" class="auth_input" type="text" value="" style="height:35px;width:200px"/>
                	<span id="usernameError" style="display:none;" class="auth_error">请输入用户名</span>
                   
            	</li>
            	<li>
                	<label>密码: </label>
                	<i class="auth_icon auth_icon_pwd"></i>
             		<input id="password" name="password" placeholder="密码" class="auth_input" type="password" value="" autocomplete="off" style="height:35px;width:200px"/>
                	<span id="passwordError" style="display:none;" class="auth_error">请输入密码</span>
            	</li>
            	<li>
                	<button type="submit" class="btn">登录
                	</button>
                	<a href="sign-in.jsp" style="color:black">注册</a>
            	</li>
            	<a id="getBackPasswordMainPage" href="getBackPasswordMainPage.do" class="auth_login_forgetp">
                	<small>忘记密码？</small>
            	</a>
				
			</form>
        </div>
    </div>
	
	<p></p>
	
    <footer>
        <p>Copyright © 2016.Company name All rights reserved.</p>
    </footer>
</div>
</body>
</html>
