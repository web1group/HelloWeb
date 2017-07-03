
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		urlPatterns = {"/PersonalHomepage"},
		name = "personalhomepage"
		)


public class personalhomepage implements Action{
	private String user_id;
	private String user_name;
    private List<String> path_list = new ArrayList<String>();
    
    public personalhomepage(){
    	this.user_name = "null";
    }
    
    public String getUserName(){
		return user_name;
	}

    public List<String> getBookList()
    {
    	return this.path_list;
    }
    

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//List<String> list = new ArrayList<String>();
		ResultSet rs= null;
		user_id  = request.getParameter("userid");
		try {
	    	Class.forName("com.mysql.jdbc.Driver");
		    String URL =  "jdbc:mysql://127.0.0.1:3306/library?user=root&password=123456&useUnicode=true";
		    String USERNAME = "root";
		    String PASSWORD = "123456";
		    Connection con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
		    Statement stmt=con.createStatement();
		    ResultSet rs1=stmt.executeQuery("select * from user where userid = user_id");
		    while (rs1.next())
		    {
		    	this.user_name = rs1.getString(1);
		    }
	    	rs1.close();
	    	ResultSet rs2=stmt.executeQuery("select * from book where owner = user_id");
		    while (rs2.next())
		    {
		    	String book_image_path = rs2.getString(7);
		    	this.path_list.add(book_image_path);
		    }
		    rs2.close();
		    stmt.close();
		    con.close();
		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch( ClassNotFoundException e){
			e.printStackTrace();
		}

		request.getSession().setAttribute("images", path_list);
		return "PersonalHomepage.jsp";
	}

}

class Book {
	
	private String book_id;
	private String book_name;
	private String book_category;
	private String book_discription;
	private String book_status;
	private String book_image_path;
	
	public Book()
	{
		this.book_discription = "null";
	}
	
	public void setInformations(String id,String name,String category,String discription,String path,String status)
	{
		this.book_id = id;
		this.book_name = name;
		this.book_category = category;
		this.book_discription = discription;
		this.book_image_path = path;
		this.book_status = status;
	}
	
	public String getName()
	{
		return this.book_name;
	}
	
	public String getCategory()
	{
		return this.book_category;
	}
	
	public String getDiscription()
	{
		return this.book_discription;
	}
	
	public String getStatus()
	{
		return this.book_status;
	}
	
	public String getPath()
	{
		return this.book_image_path;
	}

}