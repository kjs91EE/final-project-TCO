package kr.or.tco.prod.vo;

import java.text.DecimalFormat;

import org.springframework.stereotype.Repository;

@Repository
public class ProdVO {

	private String prodInfoId       ; //상품아이디
	private String prodInfoNm       ; //상품명
	private int prodInfoPrchsAmt    ; //상품매입가격
	private int prodInfoNtslAmt     ; //상품판매가격
	private String prodInfoLdt      ; //상품리드타임
	private String prodInfoPlor     ; //상품원산지
	private String prodInfoYn       ; //상품판매여부
	private String cmncdCd          ; //상품분류
	private String cnptId           ; //거래처아이디
	private String cnptNm           ; //거래처명
	private String cnptTel 			; //거래처연락처(거래처 테이블)
	private String cnptMail  		; //거래처이메일(거래처 테이블)
	private String cmncdNm1         ; //코드명1
	private String cmncdNm2         ; //코드명2
	private String strgStckSftyQty  ; //안전재고수(창고재고테이블)
	private String strgStckDfltQty  ; //기본보유수(창고재고테이블)
	
	public String getProdInfoNtslAmtDisplay() { //상품판매가격
		String res = new DecimalFormat("#,###").format(prodInfoNtslAmt);
		res = res + "원";
		return res;
	}
	public void setProdInfoNtslAmtDisplay(String prodInfoNtslAmtDisplay) { //상품판매가격
		this.prodInfoNtslAmt = Integer.parseInt(prodInfoNtslAmtDisplay.replaceAll(",", "").replace("원", ""));
	}
	public String getProdInfoPrchsAmtDisplay() { //상품매입가격
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt);
		res = res + "원";
		return res;
	}
	public void setProdInfoPrchsAmtDisplay(String prodInfoPrchsAmtDisplay) {
		this.prodInfoPrchsAmt = Integer.parseInt(prodInfoPrchsAmtDisplay.replaceAll(",", "").replace("원", ""));
	}
	public String getProdInfoNmDisplay() { //상품명
		String res = "";
		if(prodInfoNm!=null) {
			res = this.prodInfoNm.replaceAll("_", " ");
			return res;
		}
		return res;
	}
	public void setProdInfoNmDisplay(String prodInfoNmDisplay) { //상품명
		if(prodInfoNmDisplay != null) {
			this.prodInfoNm = prodInfoNmDisplay.replaceAll(" ", "_").toUpperCase();
		}
	}
	public String getProdInfoId() {
		return prodInfoId;
	}
	public void setProdInfoId(String prodInfoId) {
		this.prodInfoId = prodInfoId;
	}
	public String getProdInfoNm() {
		return prodInfoNm;
	}
	public void setProdInfoNm(String prodInfoNm) {
		this.prodInfoNm = prodInfoNm;
	}
	public int getProdInfoPrchsAmt() {
		return prodInfoPrchsAmt;
	}
	public void setProdInfoPrchsAmt(int prodInfoPrchsAmt) {
		this.prodInfoPrchsAmt = prodInfoPrchsAmt;
	}
	public int getProdInfoNtslAmt() {
		return prodInfoNtslAmt;
	}
	public void setProdInfoNtslAmt(int prodInfoNtslAmt) {
		this.prodInfoNtslAmt = prodInfoNtslAmt;
	}
	public String getProdInfoLdt() {
		return prodInfoLdt;
	}
	public void setProdInfoLdt(String prodInfoLdt) {
		this.prodInfoLdt = prodInfoLdt;
	}
	public String getProdInfoPlor() {
		return prodInfoPlor;
	}
	public void setProdInfoPlor(String prodInfoPlor) {
		this.prodInfoPlor = prodInfoPlor;
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
	public String getCmncdNm2() {
		return cmncdNm2;
	}
	public void setCmncdNm2(String cmncdNm2) {
		this.cmncdNm2 = cmncdNm2;
	}
	public String getCnptId() {
		return cnptId;
	}
	public void setCnptId(String cnptId) {
		this.cnptId = cnptId;
	}
	public String getCnptNm() {
		return cnptNm;
	}
	public void setCnptNm(String cnptNm) {
		this.cnptNm = cnptNm;
	}
	public String getStrgStckSftyQty() {
		return strgStckSftyQty;
	}
	public void setStrgStckSftyQty(String strgStckSftyQty) {
		this.strgStckSftyQty = strgStckSftyQty;
	}
	public String getStrgStckDfltQty() {
		return strgStckDfltQty;
	}
	public void setStrgStckDfltQty(String strgStckDfltQty) {
		this.strgStckDfltQty = strgStckDfltQty;
	}
	
	public String getCnptTel() {
		return cnptTel;
	}
	public void setCnptTel(String cnptTel) {
		this.cnptTel = cnptTel;
	}
	public String getCnptMail() {
		return cnptMail;
	}
	public void setCnptMail(String cnptMail) {
		this.cnptMail = cnptMail;
	}
	
	public String getProdInfoYn() {
		return prodInfoYn;
	}
	public void setProdInfoYn(String prodInfoYn) {
		this.prodInfoYn = prodInfoYn;
	}
	
	@Override
	public String toString() {
		return "ProdVO [prodInfoId=" + prodInfoId + ", prodInfoNm=" + prodInfoNm + ", prodInfoPrchsAmt="
				+ prodInfoPrchsAmt + ", prodInfoNtslAmt=" + prodInfoNtslAmt + ", prodInfoLdt=" + prodInfoLdt
				+ ", prodInfoPlor=" + prodInfoPlor + ", prodInfoYn=" + prodInfoYn + ", cmncdCd=" + cmncdCd + ", cnptId="
				+ cnptId + ", cnptNm=" + cnptNm + ", cnptTel=" + cnptTel + ", cnptMail=" + cnptMail + ", cmncdNm1="
				+ cmncdNm1 + ", cmncdNm2=" + cmncdNm2 + ", strgStckSftyQty=" + strgStckSftyQty + ", strgStckDfltQty="
				+ strgStckDfltQty + "]";
	}
	
}
