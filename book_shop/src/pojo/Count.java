package pojo;

/**
 * Count entity. @author MyEclipse Persistence Tools
 */

public class Count implements java.io.Serializable {

	// Fields

	private CountId id;

	// Constructors

	/** default constructor */
	public Count() {
	}

	/** full constructor */
	public Count(CountId id) {
		this.id = id;
	}

	// Property accessors

	public CountId getId() {
		return this.id;
	}

	public void setId(CountId id) {
		this.id = id;
	}

}