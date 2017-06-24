package Book;
import  java.sql.*;
public class BookDisplay {
	String number;
	String name;
    String category ;
    String score ;
    String description ;
    String picture;
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
    public BookDisplay() throws ClassNotFoundException, SQLException{
    	Class.forName("com.mysql.jdbc.Driver");
	    String URL = "jdbc:mysql://localhost:3306/book";
	    String USERNAME = "root";
	    String PASSWORD = "mysql123";
	    Connection con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
	    Statement stmt=con.createStatement();
	    ResultSet rs=stmt.executeQuery("SELECT * from book");
	    while (rs.next())
	    {
	    this.number = rs.getString(1);
	    this.name = rs.getString(2);
	    this.category = rs.getString(3);
	    this.score = rs.getString(4);
	    this.description = rs.getString(5);
	    this.picture = rs.getString(6);
	    }
	    
    	rs.close();
    }
	
}