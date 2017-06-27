
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/*
 * @author:Zheng Yuxuan
 */
@WebServlet(
		urlPatterns = {"/BookInstruction"},
		name = "BookServlet"
		)

public class BookServlet implements Action{

	public String execute(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		List<String> list = new ArrayList<String>();
		ResultSet rs= null;
		String userid  = request.getParameter("userid");
		try {
			Statement st = DBConnection.connect(userid) ;
			String sql = "select * from BOOK ";
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			while(rs.next()){
				String col1 = rs.getString(1);
				list.add(col1);
				String col2 = rs.getString(2);
				list.add(col2);
				String col3 = rs.getString(3);
				list.add(col3);
				String col4 = rs.getString(4);
				list.add(col4);
				String col5 = rs.getString(5);
				list.add(col5);
				String col6 = rs.getString(6);
				list.add(col6);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getSession().setAttribute("bookdisplay", list);
		return "bookInstruction.jsp";
	}


	
}
	


