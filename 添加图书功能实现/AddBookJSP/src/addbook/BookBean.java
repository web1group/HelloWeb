package addbook;

public class BookBean {
	private String bookname;//书名
	private String introduction;//图书简介
	public String getBookName() {
		return bookname;
	}
	public void setBookName(String bookname) {
		this.bookname = bookname;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
}
//用来封装用户添加图书时表单中的书名和图书简介