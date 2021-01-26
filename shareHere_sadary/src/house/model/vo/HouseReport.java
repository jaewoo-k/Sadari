package house.model.vo;

public class HouseReport {
/*	SH_REPORTNUM	NUMBER
	SH_REPORT_REASON	VARCHAR2(20 BYTE)
	SH_CONTENT	VARCHAR2(50 BYTE)
	SH_REPORT_DATE	DATE
	SH_NO	VARCHAR2(5 BYTE)
	HST_NO	VARCHAR2(15 BYTE)	*/
	
	private int shRno;				// 신고번호
	private String shReason;		// 신고사유
	private String shContent;		// 신고내용
	private String shRdate;			// 신고날짜
	private String shNo;			// 하우스번호
	private String hstNo;			// 임대인회원번호

	public HouseReport() {}
	
	

	public HouseReport(String shReason, String shContent) {
		super();
		this.shReason = shReason;
		this.shContent = shContent;
	}



	public HouseReport(int shRno, String shReason, String shContent, String shRdate, String shNo, String hstNo) {
		super();
		this.shRno = shRno;
		this.shReason = shReason;
		this.shContent = shContent;
		this.shRdate = shRdate;
		this.shNo = shNo;
		this.hstNo = hstNo;
	}

	public int getShRno() {
		return shRno;
	}

	public void setShRno(int shRno) {
		this.shRno = shRno;
	}

	public String getShReason() {
		return shReason;
	}

	public void setShReason(String shReason) {
		this.shReason = shReason;
	}

	public String getShContent() {
		return shContent;
	}

	public void setShContent(String shContent) {
		this.shContent = shContent;
	}

	public String getShRdate() {
		return shRdate;
	}

	public void setShRdate(String shRdate) {
		this.shRdate = shRdate;
	}

	public String getShNo() {
		return shNo;
	}

	public void setShNo(String shNo) {
		this.shNo = shNo;
	}

	public String getHstNo() {
		return hstNo;
	}

	public void setHstNo(String hstNo) {
		this.hstNo = hstNo;
	}

	@Override
	public String toString() {
		return "HouseReport [shRno=" + shRno + ", shReason=" + shReason + ", shContent=" + shContent + ", shRdate="
				+ shRdate + ", shNo=" + shNo + ", hstNo=" + hstNo + "]";
	}
	
	
	
	
	
	
	
	
	
}


