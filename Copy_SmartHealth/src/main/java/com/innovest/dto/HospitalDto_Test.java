package com.innovest.dto;

public class HospitalDto_Test {

	public int rcdno;
	public String hmcNm;
	public String hcmNo;
	public String hmcTelNo;
	public String locAddr;
	public String locPostNo;
	public String cxVl;
	public String cyVl;
	public String exmdrFaxNo;
	public String ciDoCd;
	public String siGunGuCd;

	
	
	
	public HospitalDto_Test(String hmcNm, String hcmNo, String hmcTelNo, String locAddr, String locPostNo, String cxVl,
			String cyVl, String exmdrFaxNo, String ciDoCd, String siGunGuCd) {
		super();
		this.hmcNm = hmcNm;
		this.hcmNo = hcmNo;
		this.hmcTelNo = hmcTelNo;
		this.locAddr = locAddr;
		this.locPostNo = locPostNo;
		this.cxVl = cxVl;
		this.cyVl = cyVl;
		this.exmdrFaxNo = exmdrFaxNo;
		this.ciDoCd = ciDoCd;
		this.siGunGuCd = siGunGuCd;
	}

	public int getRcdno() {
		return rcdno;
	}

	public void setRcdno(int rcdno) {
		this.rcdno = rcdno;
	}

	public String getHmcNm() {
		return hmcNm;
	}

	public void setHmcNm(String hmcNm) {
		this.hmcNm = hmcNm;
	}

	public String getHcmNo() {
		return hcmNo;
	}

	public void setHcmNo(String hcmNo) {
		this.hcmNo = hcmNo;
	}

	public String getHmcTelNo() {
		return hmcTelNo;
	}

	public void setHmcTelNo(String hmcTelNo) {
		this.hmcTelNo = hmcTelNo;
	}

	public String getLocAddr() {
		return locAddr;
	}

	public void setLocAddr(String locAddr) {
		this.locAddr = locAddr;
	}

	public String getLocPostNo() {
		return locPostNo;
	}

	public void setLocPostNo(String locPostNo) {
		this.locPostNo = locPostNo;
	}

	public String getCxVl() {
		return cxVl;
	}

	public void setCxVl(String cxVl) {
		this.cxVl = cxVl;
	}

	public String getCyVl() {
		return cyVl;
	}

	public void setCyVl(String cyVl) {
		this.cyVl = cyVl;
	}

	public String getExmdrFaxNo() {
		return exmdrFaxNo;
	}

	public void setExmdrFaxNo(String exmdrFaxNo) {
		this.exmdrFaxNo = exmdrFaxNo;
	}

	public String getCiDoCd() {
		return ciDoCd;
	}

	public void setCiDoCd(String ciDoCd) {
		this.ciDoCd = ciDoCd;
	}

	public String getSiGunGuCd() {
		return siGunGuCd;
	}

	public void setSiGunGuCd(String siGunGuCd) {
		this.siGunGuCd = siGunGuCd;
	}

}
