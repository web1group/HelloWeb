/** 
* @author : Ma Rong 
* @date : 2017年6月16日 下午5:47:18 
* @version : Mars Release (4.5.0)
*/
import java.sql.*;

public class DBConnection{
	
	
	public static Statement connect (String userid)throws  SQLException {
		//String userid = request.getParameter("userid");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con = DriverManager.getConnection("jdbc:mysql://192.168.1.110/library?user=root&password=marong");
		Statement st = con.createStatement();
		
		con.close();
		return st;
	}

}
