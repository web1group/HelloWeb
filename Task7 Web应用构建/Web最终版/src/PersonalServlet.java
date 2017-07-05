import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/** 
* @author : Ma Rong 
* @date : 2017年6月16日 下午8:36:13 
* @version : Mars Release (4.5.0)
* 功能：返回所有书籍图片的路径*******************
*/

@WebServlet(
		urlPatterns = {"/Platform"},
		name = "PersonalServlet"
		)

public class PersonalServlet implements Action{

	public String execute(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		List<String> list = new ArrayList<String>();
		ResultSet rs= null;
		String userid  = request.getParameter("userid");
		try {
			Statement st = DBConnection.connect(userid) ;
			String sql = "select jpg from BOOK ";
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			while(rs.next()){
				String col7 = rs.getString(7);
				list.add(col7);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getSession().setAttribute("images", list);
		return "platform.jsp";
	}

	
}
	


