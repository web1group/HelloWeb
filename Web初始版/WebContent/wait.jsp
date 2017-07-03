<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>待借阅</title>
<link type="text/css" rel="stylesheet" href="css/mycss1.css" />
<link type="text/css" rel="stylesheet" href="css/homecss.css" />
<link type="text/css" rel="stylesheet" href="css/personal.css" />
</head>

<body>
<div class="container">
    <header>
        <nav class="top-nav">
            <ul>
                <li><a href="platform.jsp" id="navlia1">平台</a></li>
                <li><a href="personal.jsp" id="navlia2">个人中心</a></li>
            </ul>
        </nav>
    </header>
<div class="meun">
     <b>菜单</b><br>
                    <li class="top-search">
                      <form>
                            <input type="text" name="搜索" placeholder="Search ...">
                            <button type="submit" class="btn">搜索</button>
                      </form><br/><br/>
                    </li>
                    <li><a href="personal.jsp">已借阅<i class="im-screen"></i></a>
                    </li><br/>
                    <li><a href="publish.jsp">已发布<i class="st-chart"></i></a>
                    </li> <br/>
    <li><a href="wait.jsp">待借阅<i class="st-chart"></i></a>
                    </li>         
     </div> 
    <div class="content">
      <table border="1" bordercolor="#000000" cellpadding="6" cellspacing="10" class="booktable">
        <tr>
           <td align="center">
            <div  class="demo">
            <img src="images/baijiashici.jpg" width="200" height="200" alt="百家诗词" />
            </div>
            <div class="bookName">
           <a href="bookInstruction.jsp">百家诗词</a>
            </div>     
         </td>
         </tr>
         </table>
      </div>
  <footer>
        <p>Copyright © 2016.helloweb name All rights reserved.</p>
    </footer>
</div>
</body>
     
</html>
