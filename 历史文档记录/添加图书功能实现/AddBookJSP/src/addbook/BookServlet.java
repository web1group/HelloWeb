package addbook;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 实现类IntroductionServlet
 */
public class BookServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)	
	throws ServletException, IOException {
		//设置request的编码格式
		request.setCharacterEncoding("UTF-8");
		//获取书名、图书简介
		String bookname = request.getParameter("bookname");
		String introduction = request.getParameter("introduction");
		//实例化User
		BookBean user = new BookBean();
		//为书名、图书简介赋值
		user.setBookName(bookname);
		user.setIntroduction(introduction);
		//获取ServletContext对象
		ServletContext application = getServletContext();
		//从ServletContext中获取users
		List<BookBean> list = (List<BookBean>)application.getAttribute("users");
		//判断list是否为null，如果为空，则创建list对象	
		if(list == null) {
			//实例化list
			list = new ArrayList<BookBean>();
		}
		//将user添加到list集合中
		list.add(user);
		//将List放置于application范围中
		application.setAttribute("users",list);
		//创建RequestDispatcher对象
		RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
		//请求转发到manager。jsp页面，服务器跳转
		dispatcher.forward(request,response);
	}
}
