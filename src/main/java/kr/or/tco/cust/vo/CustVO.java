package kr.or.tco.cust.vo;

import org.springframework.stereotype.Repository;

@Repository
public class CustVO {
	private String custId;
	private String custNm;
	private String custTel;
	private String custMail;
	private int custZip;
	private String custAddr;
	private String custDaddr;
	private String custBrdt;
	private String custMrgYn;
	private String custStts;
	private String custCrcdNo;
	private String custGndr;
	private String custMktRcptnAgreYn;
	private String cmncdCd;
	private String cmncdNm1;
	private int rnum;
	private String age;

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getCustNm() {
		return custNm;
	}

	public void setCustNm(String custNm) {
		this.custNm = custNm;
	}

	public String getCustTel() {
		return custTel;
	}

	public void setCustTel(String custTel) {
		this.custTel = custTel;
	}

	public String getCustMail() {
		return custMail;
	}

	public void setCustMail(String custMail) {
		this.custMail = custMail;
	}

	public int getCustZip() {
		return custZip;
	}

	public void setCustZip(int custZip) {
		this.custZip = custZip;
	}

	public String getCustAddr() {
		return custAddr;
	}

	public void setCustAddr(String custAddr) {
		this.custAddr = custAddr;
	}

	public String getCustDaddr() {
		return custDaddr;
	}

	public void setCustDaddr(String custDaddr) {
		this.custDaddr = custDaddr;
	}

	public String getCustBrdt() {
		return custBrdt;
	}

	public void setCustBrdt(String custBrdt) {
		this.custBrdt = custBrdt;
	}

	public String getCustMrgYn() {
		return custMrgYn;
	}

	public void setCustMrgYn(String custMrgYn) {
		this.custMrgYn = custMrgYn;
	}

	public String getCustStts() {
		return custStts;
	}

	public void setCustStts(String custStts) {
		this.custStts = custStts;
	}

	public String getCustCrcdNo() {
		return custCrcdNo;
	}

	public void setCustCrcdNo(String custCrcdNo) {
		this.custCrcdNo = custCrcdNo;
	}

	public String getCustGndr() {
		return custGndr;
	}

	public void setCustGndr(String custGndr) {
		this.custGndr = custGndr;
	}

	public String getCustMktRcptnAgreYn() {
		return custMktRcptnAgreYn;
	}

	public void setCustMktRcptnAgreYn(String custMktRcptnAgreYn) {
		this.custMktRcptnAgreYn = custMktRcptnAgreYn;
	}

	public String getCmncdCd() {
		return cmncdCd;
	}

	public void setCmncdCd(String cmncdCd) {
		this.cmncdCd = cmncdCd;
	}

	public String getCmncdNm1() {
		return cmncdNm1;
	}

	public void setCmncdNm1(String cmncdNm1) {
		this.cmncdNm1 = cmncdNm1;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "CustVO [custId=" + custId + ", custNm=" + custNm + ", custTel=" + custTel + ", custMail=" + custMail
				+ ", custZip=" + custZip + ", custAddr=" + custAddr + ", custDaddr=" + custDaddr + ", custBrdt="
				+ custBrdt + ", custMrgYn=" + custMrgYn + ", custStts=" + custStts + ", custCrcdNo=" + custCrcdNo
				+ ", custGndr=" + custGndr + ", custMktRcptnAgreYn=" + custMktRcptnAgreYn + ", cmncdCd=" + cmncdCd
				+ ", cmncdNm1=" + cmncdNm1 + ", rnum=" + rnum + ", age=" + age + "]";
	}

}
