package action;

import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.BookDao;
import dao.UserDao;
import pojo.Book;
import pojo.User;

public class BookAction extends ActionSupport {
	private String book_id;
	private String book_name;
	private String author;
	private String press;
	private String type;
	private float price;
	private int remain;
	public  String keyword="";
	public  String searchkind="";
	public List<Book> book;
	public BookDao bookdao;
	
	public String scan(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		book=bookdao.getAll();
		return SUCCESS;
	}
	
	public String view(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		book=bookdao.getbyid(book_id);
		return SUCCESS;
	}
	
	public String add(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		Book book=new Book(book_id,book_name,author,press,type,price,remain);
		return bookdao.add(book);
	}
	
	public String update(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		Book book=new Book(book_id,book_name,author,press,type,price,remain);
		return bookdao.update(book);
	}
	
	public String delete(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		return bookdao.delete(book_id);
	}
	
	public String search(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		bookdao=(BookDao)ac.getBean("BookDao");
		if(searchkind.equals("byName") ){
			book = bookdao.getbyname(keyword);
			return SUCCESS;
		}
		if(searchkind.equals("byAuthor")){
			book = bookdao.getbyauthor(keyword);
			return SUCCESS;
			
		}
		if(keyword.equals("历史")|keyword.equals("心理学")|keyword.equals("传记")|keyword.equals("文学")
				|keyword.equals("计算机")){
			book = bookdao.getbytype(keyword);
			return SUCCESS;
		}
		return ERROR;
	}
	
	public List<Book> getBook() {
		return book;
	}

	public void setBook(List<Book> book) {
		this.book = book;
	}

	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	public int getRemain() {
		return remain;
	}
	public void setRemain(int remain) {
		this.remain = remain;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public BookDao getBookdao() {
		return bookdao;
	}
	public void setBookdao(BookDao bookdao) {
		this.bookdao = bookdao;
	}

	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSearchkind() {
		return searchkind;
	}
	public void setSearchkind(String searchkind) {
		this.searchkind = searchkind;
	}
	
}
