package pojo;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private String bookId;
	private String bookName;
	private String author;
	private String press;
	private String type;
	private Float price;
	private Integer remain;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** full constructor */
	public Book(String bookId, String bookName, String author, String press,
			String type, Float price, Integer remain) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.press = press;
		this.type = type;
		this.price = price;
		this.remain = remain;
	}

	// Property accessors

	public String getBookId() {
		return this.bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return this.bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPress() {
		return this.press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getRemain() {
		return this.remain;
	}

	public void setRemain(Integer remain) {
		this.remain = remain;
	}

}