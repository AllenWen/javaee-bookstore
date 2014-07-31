package pojo;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private String adminId;
	private String password;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String adminId, String password) {
		this.adminId = adminId;
		this.password = password;
	}

	// Property accessors

	public String getAdminId() {
		return this.adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}