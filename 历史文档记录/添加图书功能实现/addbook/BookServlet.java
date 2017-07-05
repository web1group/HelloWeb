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
 ʵ����IntroductionServlet
 */
public class BookServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)	
	throws ServletException, IOException {
		//����request�ı����ʽ
		request.setCharacterEncoding("UTF-8");
		//��ȡ������ͼ����
		String bookname = request.getParameter("bookname");
		String introduction = request.getParameter("introduction");
		//ʵ����User
		BookBean user = new BookBean();
		//Ϊ������ͼ���鸳ֵ
		user.setBookName(bookname);
		user.setIntroduction(introduction);
		//��ȡServletContext����
		ServletContext application = getServletContext();
		//��ServletContext�л�ȡusers
		List<BookBean> list = (List<BookBean>)application.getAttribute("users");
		//�ж�list�Ƿ�Ϊnull�����Ϊ�գ��򴴽�list����	
		if(list == null) {
			//ʵ����list
			list = new ArrayList<BookBean>();
		}
		//��user��ӵ�list������
		list.add(user);
		//��List������application��Χ��
		application.setAttribute("users",list);
		//����RequestDispatcher����
		RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
		//����ת����manager��jspҳ�棬��������ת
		dispatcher.forward(request,response);
	}
}
