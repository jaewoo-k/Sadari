package house.model.vo;

import java.sql.Date;

public class HostRoom {
	/*SH_RNO	VARCHAR2(6 BYTE)
	SH_RIMG	VARCHAR2(30 BYTE)
	SH_RTYPE	VARCHAR2(30 BYTE)
	SH_GENDER	VARCHAR2(10 BYTE)
	SH_RAREA	VARCHAR2(10 BYTE)
	SH_DEPOSIT	VARCHAR2(10 BYTE)
	SH_ADMCOST	VARCHAR2(10 BYTE)
	SH_MONTHLY	VARCHAR2(10 BYTE)
	SH_RDATE	DATE
	SH_CAPACITY	NUMBER
	SH_RNAME	VARCHAR2(10 BYTE)
	SH_RIMGPATH	VARCHAR2(50 BYTE)
	SH_NO	VARCHAR2(5 BYTE) 
	SH_RCHIMG	VARCHAR2(50 BYTE)
	 */
	private String shRno;
	private String shRImg;
	private String shRtype;
	private String shGender;
	private String shRarea;
	private String shDeposit;
	private String shAdmcost;
	private String shMonthly;
	private Date shRdate;
	private int  shCapacity;
	private String shRname;
	private String shRImgPath;
	private String shNo;
	private String shRImgCh;
	
	public HostRoom() {}

	public HostRoom(String shRno, String shRImg, String shRtype, String shGender, String shRarea, String shDeposit,
			String shAdmcost, String shMonthly, Date shRdate, int shCapacity, String shRname, String shRImgPath,
			String shNo, String shRImgCh) {
		super();
		this.shRno = shRno;
		this.shRImg = shRImg;
		this.shRtype = shRtype;
		this.shGender = shGender;
		this.shRarea = shRarea;
		this.shDeposit = shDeposit;
		this.shAdmcost = shAdmcost;
		this.shMonthly = shMonthly;
		this.shRdate = shRdate;
		this.shCapacity = shCapacity;
		this.shRname = shRname;
		this.shRImgPath = shRImgPath;
		this.shNo = shNo;
		this.shRImgCh = shRImgCh;
	}

	public String getShRno() {
		return shRno;
	}

	public void setShRno(String shRno) {
		this.shRno = shRno;
	}

	public String getShRImg() {
		return shRImg;
	}

	public void setShRImg(String shRImg) {
		this.shRImg = shRImg;
	}

	public String getShRtype() {
		return shRtype;
	}

	public void setShRtype(String shRtype) {
		this.shRtype = shRtype;
	}

	public String getShGender() {
		return shGender;
	}

	public void setShGender(String shGender) {
		this.shGender = shGender;
	}

	public String getShRarea() {
		return shRarea;
	}

	public void setShRarea(String shRarea) {
		this.shRarea = shRarea;
	}

	public String getShDeposit() {
		return shDeposit;
	}

	public void setShDeposit(String shDeposit) {
		this.shDeposit = shDeposit;
	}

	public String getShAdmcost() {
		return shAdmcost;
	}

	public void setShAdmcost(String shAdmcost) {
		this.shAdmcost = shAdmcost;
	}

	public String getShMonthly() {
		return shMonthly;
	}

	public void setShMonthly(String shMonthly) {
		this.shMonthly = shMonthly;
	}

	public Date getShRdate() {
		return shRdate;
	}

	public void setShRdate(Date shRdate) {
		this.shRdate = shRdate;
	}

	public int getShCapacity() {
		return shCapacity;
	}

	public void setShCapacity(int shCapacity) {
		this.shCapacity = shCapacity;
	}

	public String getShRname() {
		return shRname;
	}

	public void setShRname(String shRname) {
		this.shRname = shRname;
	}

	public String getShRImgPath() {
		return shRImgPath;
	}

	public void setShRImgPath(String shRImgPath) {
		this.shRImgPath = shRImgPath;
	}

	public String getShNo() {
		return shNo;
	}

	public void setShNo(String shNo) {
		this.shNo = shNo;
	}

	public String getShRImgCh() {
		return shRImgCh;
	}

	public void setShRImgCh(String shRImgCh) {
		this.shRImgCh = shRImgCh;
	}

	@Override
	public String toString() {
		return "HostRoom [shRno=" + shRno + ", shRImg=" + shRImg + ", shRtype=" + shRtype + ", shGender=" + shGender
				+ ", shRarea=" + shRarea + ", shDeposit=" + shDeposit + ", shAdmcost=" + shAdmcost + ", shMonthly="
				+ shMonthly + ", shRdate=" + shRdate + ", shCapacity=" + shCapacity + ", shRname=" + shRname
				+ ", shRImgPath=" + shRImgPath + ", shNo=" + shNo + ", shRImgCh=" + shRImgCh + "]";
	}

	

}
