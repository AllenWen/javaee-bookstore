package pojo;

/**
 * Cart entity. @author MyEclipse Persistence Tools
 */

public class Cart implements java.io.Serializable {

	// Fields

	private String bookName;
	private String userId;
	private Float price;
	private Integer remain;

	// Constructors

	/** default constructor */
	public Cart() {
	}

	/** full constructor */
	public Cart(String bookName, String userId, Float price, Integer remain) {
		this.bookName = bookName;
		this.userId = userId;
		this.price = price;
		this.remain = remain;
	}

	// Property accessors

	public String getBookName() {
		return this.bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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