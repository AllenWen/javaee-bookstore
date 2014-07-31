package pojo;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String userId;
	private String password;
	private String userName;
	private String address;
	private String phoneNum;
	private String postCode;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String userId, String password, String userName,
			String address, String postCode) {
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.address = address;
		this.postCode = postCode;
	}

	/** full constructor */
	public User(String userId, String password, String userName,
			String address, String phoneNum, String postCode) {
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.address = address;
		this.phoneNum = phoneNum;
		this.postCode = postCode;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNum() {
		return this.phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getPostCode() {
		return this.postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

}