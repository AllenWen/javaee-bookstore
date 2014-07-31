package pojo;

/**
 * CountId entity. @author MyEclipse Persistence Tools
 */

public class CountId implements java.io.Serializable {

	// Fields

	private String detail;
	private String curDate;
	private String totalPriceStr;

	// Constructors

	/** default constructor */
	public CountId() {
	}

	/** full constructor */
	public CountId(String detail, String curDate, String totalPriceStr) {
		this.detail = detail;
		this.curDate = curDate;
		this.totalPriceStr = totalPriceStr;
	}

	// Property accessors

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getCurDate() {
		return this.curDate;
	}

	public void setCurDate(String curDate) {
		this.curDate = curDate;
	}

	public String getTotalPriceStr() {
		return this.totalPriceStr;
	}

	public void setTotalPriceStr(String totalPriceStr) {
		this.totalPriceStr = totalPriceStr;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CountId))
			return false;
		CountId castOther = (CountId) other;

		return ((this.getDetail() == castOther.getDetail()) || (this
				.getDetail() != null && castOther.getDetail() != null && this
				.getDetail().equals(castOther.getDetail())))
				&& ((this.getCurDate() == castOther.getCurDate()) || (this
						.getCurDate() != null && castOther.getCurDate() != null && this
						.getCurDate().equals(castOther.getCurDate())))
				&& ((this.getTotalPriceStr() == castOther.getTotalPriceStr()) || (this
						.getTotalPriceStr() != null
						&& castOther.getTotalPriceStr() != null && this
						.getTotalPriceStr()
						.equals(castOther.getTotalPriceStr())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getDetail() == null ? 0 : this.getDetail().hashCode());
		result = 37 * result
				+ (getCurDate() == null ? 0 : this.getCurDate().hashCode());
		result = 37
				* result
				+ (getTotalPriceStr() == null ? 0 : this.getTotalPriceStr()
						.hashCode());
		return result;
	}

}