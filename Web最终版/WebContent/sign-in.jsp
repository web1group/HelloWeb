<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>注册</title>
	<link type="text/css" rel="stylesheet" href="./css/sign-in.css" />
	<link type="text/css" rel="stylesheet" href="./css/homecss.css" />
	<script type="text/javascript" src="js/ehandler.js"></script>
	<script type="text/javascript">
        function checkna(){
            na = a.username.value;
            if( na.length < 6 || na.length >16)
            {

                divusername.innerHTML='<font class="auth_input_false">长度是6~16个字符</font>';

            }else{
                divusername.innerHTML='<font class="auth_input_true">输入正确</font>';

            }
        }
        //验证密码
        function checkpsd1(){
            psd1=a.password.value;
            var flagZM=false ;
            var flagSZ=false ;
            var flagQT=false ;
            if(psd1.length < 6 || psd1.length > 12){
                divpassword.innerHTML='<font class="auth_input_false">长度错误</font>';
            }else
            {
                for(i=0;i < psd1.length;i++)
                {
                    if((psd1.charAt(i) >= 'A' && psd1.charAt(i) <= 'Z') || (psd1.charAt(i)>='a' && psd1.charAt(i)<='z'))
                    {
                        flagZM=true;
                    }
                    else if(psd1.charAt(i)>='0' && psd1.charAt(i) <= '9')
                    {
                        flagSZ=true;
                    }else
                    {
                        flagQT=true;
                    }
                }
                if(!flagZM||!flagSZ||flagQT){
                    divpassword.innerHTML='<font class="auth_input_false">密码必须是字母数字的组合</font>';

                }else{

                    divpassword.innerHTML='<font class="auth_input_true">输入正确</font>';

                }

            }
        }
        //验证确认密码
        function checkpsd2(){
            if(a.repassword.value !== a.password.value) {
                divrepassword.innerHTML="<font class=\"auth_input_false\">您两次输入的密码不一样</font>";
            } else {
                divrepassword.innerHTML='<font class="auth_input_true">输入正确</font>';
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
				<h1>注册</h1>
			</div>
			<p></p>
			<form name="a" action="sign-in1.jsp">
				<li>
					<label>用户名：</label>
					<input id="username" name="username" placeholder="6-16个字符" required onblur="checkna()" class="auth_input" type="text" value="" style="height:35px;width:200px"/>
					<a href="#" class="icon ticker"> </a>
					<div class="clear" id="divusername"> </div>
				</li>

				<li>
					<label>密码：</label>
					<input id="password" name="password" placeholder="6-12个字符" required onblur="checkpsd1()" class="auth_input" type="password" value="" autocomplete="off" style="height:35px;width:200px"/>
					<a href="#" class="icon into"> </a>
					<div class="clear" id="divpassword"> </div>
				</li>

				<li>
					<label>确认密码：</label>
					<input id="repassword" name="repassword" placeholder="6-12个字符" required onblur="checkpsd2()" class="auth_input" type="password" value="" autocomplete="off" style="height:35px;width:200px"/>
					<a href="#" class="icon into"> </a>
					<div class="clear" id="divrepassword"> </div>
				</li>

				<li>
					<label>手机</label>
					<input id="telNumber" name="telNumber" placeholder="请输入手机号"  class="auth_input" type="tel" value="" autocomplete="off" style="height:35px;width:200px"/>
					<a href="#" class="icon into"> </a>
					<div class="clear"> </div>
				</li>

				<b class="btn"><input type="submit" onClick="myFunction()" value="注册">
					<div class="clear"> </div>
				</b>
			</form>
		</div>
	</div>
	<footer>
		<p>Copyright © 2016.Company name All rights reserved.</p>
	</footer>
</div>
</body>
</html>
