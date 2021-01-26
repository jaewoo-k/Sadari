package house.model.vo;

public class HostPay {
	/*PAY_NO	VARCHAR2(20 BYTE)
	  SH_PERIOD	VARCHAR2(15 BYTE)
      HST_NO	VARCHAR2(15 BYTE) */
	
	private String payNo;
	private String shPeriod;
	private String hstNo;
	
	public HostPay() {}
	
	public HostPay(String payNo, String shPeriod, String hstNo) {
		super();
		this.payNo = payNo;
		this.shPeriod = shPeriod;
		this.hstNo = hstNo;
	}

	public String getPayNo() {
		return payNo;
	}

	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}

	public String getShPeriod() {
		return shPeriod;
	}

	public void setShPeriod(String shPeriod) {
		this.shPeriod = shPeriod;
	}

	public String getHstNo() {
		return hstNo;
	}

	public void setHstNo(String hstNo) {
		this.hstNo = hstNo;
	}

	@Override
	public String toString() {
		return "HostPay [payNo=" + payNo + ", shPeriod=" + shPeriod + ", hstNo=" + hstNo + "]";
	}
	
	
	
	

}
