<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书概览</title>
<link type="text/css" rel="stylesheet" href="./css/platform.css" />
<link type="text/css" rel="stylesheet" href="./css/homecss.css" />
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
    <div class="content">
    	<center><!--该标签的作用就是让被嵌套在它里面的元素居中-->
      <table border="1" bordercolor="#000000" cellpadding="6" cellspacing="10" class="booktable">
        <tr>
          <td align="center">
            <img src="./images/hongloumeng.jpg" alt="红楼梦" />
            <div class="bookName">
            <a href="bookInstruction.jsp">红楼梦</a> </div>
          </td>
          <td>
          <img src="./images/banmianshejijichu.jpg" alt="版面设计基础">
          <div class="bookName">
            版面设计基础
            </div> 
          </td>
          <td>
           <img src="./images/cumeng.jpg" alt="逐梦">
          <div class="bookName">
            逐梦
            </div> 
          </td>
        </tr>
       <tr>
          <td align="center">
            <img src="./images/baijiashici.jpg" alt="百家诗词" />
            <div class="bookName">
            百家诗词
            </div>     
         </td>
          <td>
          <img src="./images/banmianshejijichu.jpg" alt="版面设计基础">
          <div class="bookName">
            版面设计基础
            </div> 
         </td>
          <td>
           <img src="./images/cumeng.jpg" alt="逐梦">
          <div class="bookName">
            逐梦
            </div> 
         </td>
        </tr>
        <tr>
          <td align="center">
            <img src="./images/baijiashici.jpg" alt="百家诗词" />
            <div class="bookName">
            百家诗词
            </div>     
          </td>
          <td>
          <img src="./images/banmianshejijichu.jpg" alt="版面设计基础">
          <div class="bookName">
            版面设计基础
            </div> 
          </td>
          <td>
           <img src="./images/cumeng.jpg" alt="逐梦">
          <div class="bookName">
            逐梦
            </div> 
          </td>
        </tr>
      </table>
     </center>  
    </div>
    <footer>
        <p>Copyright © 2016.helloweb name All rights reserved.</p>
    </footer>
</div>
</body>
</html>
