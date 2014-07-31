package dao;

import java.util.List;
import pojo.Book;

public interface BookDao {
	public String add(Book book);
	public String update(Book book);
	public String delete(String  book_id);
	public List <Book> getbyid(String book_id);
	public List <Book> getAll();
	public List <Book> getbyname(String keyword);
	public List <Book> getbyauthor(String keyword);
	public List <Book> getbytype(String keyword);
}
