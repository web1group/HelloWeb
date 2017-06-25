

public class Book {
	
	private int book_id;
	private String book_name;
	private String book_discription;
	private String book_image_path;
	
	public Book()
	{
		this.book_discription = "null";
	}
	
	public void setInformations(int id,String name,String discription,String path)
	{
		this.book_id = id;
		this.book_name = name;
		this.book_discription = discription;
		this.book_image_path = path;
	}
	
	public String getName()
	{
		return this.book_name;
	}
	
	public String getDiscription()
	{
		return this.book_discription;
	}
	
	public String getPath()
	{
		return this.book_image_path;
	}

}
