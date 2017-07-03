
import java.io.IOException;
import  java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
		urlPatterns = {"/BookInstruction"},
		name = "BookServlet"
		)
public class BookDisplay implements Action{
	List<String> booklist = new ArrayList<String>();
	String number;
	String name;
    String category ;
    String score ;
    String description ;
    String picture;
    public BookDisplay(){
    	this.number="0";
    }
    public String getNumber(){
		return number;
	}
	public String getCategory(){
		return category;
	}
	public String getScore(){
		return score;
	}
	public String getDescription(){
		return description;
	}
	public String getPicture(){
		return picture;
	}
	public String getName(){
		return name;
	}
    
	
public String execute(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{

	String userid  = request.getParameter("userid");
	try{
		Class.forName("com.mysql.jdbc.Driver");
	    String URL = "jdbc:mysql://127.0.0.1/library";
	    String USERNAME = "root";
	    String PASSWORD = "123456";
	    Connection con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
	    Statement stmt=con.createStatement();
	    ResultSet rs=stmt.executeQuery("SELECT * from book1");
	    while (rs.next())
	    {
	    this.number = rs.getString(1);
	    booklist.add(this.number);
	    this.name = rs.getString(2);
	    booklist.add(this.name);
	    this.category = rs.getString(3);
	    booklist.add(this.category);
	    this.score = rs.getString(4);
	    booklist.add(this.score);
	    this.description = rs.getString(5);
	    booklist.add(this.description);
	    this.picture = rs.getString(6);
	    booklist.add(this.picture);
	    rs.close();}
	}catch(Exception e){
		e.printStackTrace();
	}
	
    
	
	request.getSession().setAttribute("bookdisplay", booklist);
	return "bookInstruction.jsp";
}
	
}