package kr.or.tco.ordr.vo;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

@Repository
public class OrdrVO {
	private int ordrId          ; //발주아이디
	private String prodInfoId   ; //상품아이디
	private int ordrQty         ; //발주수량
	private Date ordrDt         ; //발주일
	private String brncofcId    ; //발주지점
	private String brncofcNm    ; //발주지점
	private String ordrSe       ; //발주구분
	private String ordrYn       ; //수주여부
	private String prodInfoNm   ; //상품명
	private int prodInfoPrchsAmt; //상품매입가격
	private String ordrWhyn		; //상품입고여부
	private String condition	; //모든상품 입고여부
	
	public String getOrderAmount() { //상품매입가격 * 발주수량
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt * ordrQty); 
		res = res + "원";
		return res;
	}
	public String getProdInfoPrchsAmtDisplay() { //상품매입가격
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt); 
		res = res + "원";
		return res;
	}
	public String getOrdrQtyDisplay() { //발주수량
		String res = new DecimalFormat("#,###").format(ordrQty); 
		return res;
	}
	public String getProdInfoNmDisplay() { //상품명
		String res = "";
		if(prodInfoNm!=null) {
			 res = this.prodInfoNm.replaceAll("_", " ");
			return res;
		}
		return res;
		
	}
	public String getOrdrDtDisplay() { //입고날짜
		String ordrDtDisplay = "";
		if(this.ordrDt != null) {
			ordrDtDisplay = new SimpleDateFormat("YYYY-MM-dd").format(this.ordrDt);
		}
		return ordrDtDisplay;
	}
	public void setOrdrDtDisplay(String ordrDtDisplay) {
		if(ordrDt != null) {
			try {
				this.ordrDt = new SimpleDateFormat("yyyy-MM-dd").parse(ordrDtDisplay);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public int getOrdrId() {
		return ordrId;
	}
	public void setOrdrId(int ordrId) {
		this.ordrId = ordrId;
	}
	public String getProdInfoId() {
		return prodInfoId;
	}
	public void setProdInfoId(String prodInfoId) {
		this.prodInfoId = prodInfoId;
	}
	public int getOrdrQty() {
		return ordrQty;
	}
	public void setOrdrQty(int ordrQty) {
		this.ordrQty = ordrQty;
	}
	public Date getOrdrDt() {
		return ordrDt;
	}
	public void setOrdrDt(Date ordrDt) {
		this.ordrDt = ordrDt;
	}
	public String getBrncofcId() {
		return brncofcId;
	}
	public void setBrncofcId(String brncofcId) {
		this.brncofcId = brncofcId;
	}
	public String getOrdrSe() {
		return ordrSe;
	}
	public void setOrdrSe(String ordrSe) {
		this.ordrSe = ordrSe;
	}
	public String getOrdrYn() {
		return ordrYn;
	}
	public void setOrdrYn(String ordrYn) {
		this.ordrYn = ordrYn;
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
	public String getBrncofcNm() {
		return brncofcNm;
	}
	public void setBrncofcNm(String brncofcNm) {
		this.brncofcNm = brncofcNm;
	}
	public String getOrdrWhyn() {
		return ordrWhyn;
	}
	public void setOrdrWhyn(String ordrWhyn) {
		this.ordrWhyn = ordrWhyn;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	@Override
	public String toString() {
		return "OrdrVO [ordrId=" + ordrId + ", prodInfoId=" + prodInfoId + ", ordrQty=" + ordrQty + ", ordrDt=" + ordrDt
				+ ", brncofcId=" + brncofcId + ", brncofcNm=" + brncofcNm + ", ordrSe=" + ordrSe + ", ordrYn=" + ordrYn
				+ ", prodInfoNm=" + prodInfoNm + ", prodInfoPrchsAmt=" + prodInfoPrchsAmt + ", ordrWhyn=" + ordrWhyn
				+ ", condition=" + condition + "]";
	}
	
	
}
