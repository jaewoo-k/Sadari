package roommate.model.vo;

public class RoommateUser {
	
	/*
	 *  US_NO			VARCHAR2(15 BYTE)
		RM_RESULT		VARCHAR2(50 BYTE)
		RM_LOCAL		VARCHAR2(30 BYTE)
		RM_INTRO		VARCHAR2(100 BYTE)
		SUBSCRIPTION	VARCHAR2(20 BYTE)
		RM_VIEWUSER		NUMBER
		RM_GENDER		VARCHAR2(5 BYTE)
	*/
	
	private String rUserNo;
	private String rUserResult;
	private String rUserLocal;
	private String rUserIntro;
	private String rSubscription;
	private int rViewUser;
	private String rUserGender;
	
	public RoommateUser() {}

	public RoommateUser(String rUserNo, String rUserResult, String rUserLocal, String rUserIntro, String rSubscription,
			int rViewUser, String rUserGender) {
		super();
		this.rUserNo = rUserNo;
		this.rUserResult = rUserResult;
		this.rUserLocal = rUserLocal;
		this.rUserIntro = rUserIntro;
		this.rSubscription = rSubscription;
		this.rViewUser = rViewUser;
		this.rUserGender = rUserGender;
	}

	public String getrUserNo() {
		return rUserNo;
	}

	public void setrUserNo(String rUserNo) {
		this.rUserNo = rUserNo;
	}

	public String getrUserResult() {
		return rUserResult;
	}

	public void setrUserResult(String rUserResult) {
		this.rUserResult = rUserResult;
	}

	public String getrUserLocal() {
		return rUserLocal;
	}

	public void setrUserLocal(String rUserLocal) {
		this.rUserLocal = rUserLocal;
	}

	public String getrUserIntro() {
		return rUserIntro;
	}

	public void setrUserIntro(String rUserIntro) {
		this.rUserIntro = rUserIntro;
	}

	public String getrSubscription() {
		return rSubscription;
	}

	public void setrSubscription(String rSubscription) {
		this.rSubscription = rSubscription;
	}

	public int getrViewUser() {
		return rViewUser;
	}

	public void setrViewUser(int rViewUser) {
		this.rViewUser = rViewUser;
	}

	public String getrUserGender() {
		return rUserGender;
	}

	public void setrUserGender(String rUserGender) {
		this.rUserGender = rUserGender;
	}

	@Override
	public String toString() {
		return "RoommateUser [rUserNo=" + rUserNo + ", rUserResult=" + rUserResult + ", rUserLocal=" + rUserLocal
				+ ", rUserIntro=" + rUserIntro + ", rSubscription=" + rSubscription + ", rViewUser=" + rViewUser
				+ ", rUserGender=" + rUserGender + "]";
	}
		

}
