
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class personalhomepage {
	private int user_id;
	private String user_name;
    private List<Book> book_array = new ArrayList<Book>();
    
    public String getUserName(){
		return user_name;
	}
    public void setUserid(int id) throws ClassNotFoundException, SQLException
    {
    	this.user_id = id;
    	getInformations();
    }
    public List getBookList()
    {
    	return this.book_array;
    }
    
    public void getInformations() throws ClassNotFoundException, SQLException
    {
    	Class.forName("com.mysql.jdbc.Driver");
	    String URL = "jdbc:mysql://127.0.0.1:3306/webhomework";
	    String USERNAME = "root";
	    String PASSWORD = "1234";
	    Connection con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
	    Statement stmt=con.createStatement();
	    ResultSet rs1=stmt.executeQuery("select * from user where userid = id");
	    while (rs1.next())
	    {
	    	this.user_name = rs1.getString(1);
	    }
    	rs1.close();
    	ResultSet rs2=stmt.executeQuery("select * from book where owner = id");
	    while (rs2.next())
	    {
	    	int book_id = rs2.getInt(1);
	    	String book_name = rs2.getString(2);
	    	String book_discription = rs2.getString(4);
	    	String book_image_path = rs2.getString(5);
	    	Book book = new Book();
	    	book.setInformations(book_id,book_name,book_discription,book_image_path);
	    	this.book_array.add(book);
	    }
    }

    public personalhomepage(){
    	this.user_name = "null";
    }

	
}