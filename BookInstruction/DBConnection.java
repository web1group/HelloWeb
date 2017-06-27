/*
 * @author:Zheng Yuxuan
 */
import java.sql.*;

public class DBConnection{
	
	
	public static Statement connect (String userid)throws  SQLException {
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book?user=root&password=mysql123");
		
		Statement st = con.createStatement();
		
		con.close();
		return st;
	}

}
