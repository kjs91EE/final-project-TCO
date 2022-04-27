package kr.or.tco.strgstck.vo;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StrgstckVO {

	private String brncofcId        ; //출고지점아이디
	private String prodInfoId       ; //창고재고상품
	private int strgStckQty     	; //창고재고수량
	private int strgStckSftyQty	    ; //창고안전재고수
	private int strgStckDfltQty	    ; //창고기본보유수량
	private String strgStckYn       ; //창고판매여부
	private String strgStckOrdrYn   ; //발주여부
	private int ordrQty             ; //발주수량
	private int strgShmtQty			; //출고수량
	private int strgShmtId			; //출고아이디
	private Date strgShmtDt		    ; //출고일
	private int prodInfoPrchsAmt	; //개당가격
	private String cmncdCd		    ; //공통코드
	private String cmncdNm1			; //공통코드명1
	private String cmncdNm2			; //공통코드명2
	private String brncofcNm		; //지점명
	private String prodInfoNm		; //상품명
	private String brncofcIdWr	    ; //입고지점아이디
	private String strgShmtDtDisplay; //형변환한 출고일
	public String strgWrhsId        ; //창고입고아이디
	public int strgWrhsQty          ; //창고입고수량
	public Date strgWrhsDt          ; //창고입고날짜
	public String cnptId			; //거래처 아이디
	public String cnptNm			; //거래처 이름

	public String getProdInfoNmDisplay() { //상품명
		String res = this.prodInfoNm.replaceAll("_", " ");
		return res;
	}
	public String getStrgWrhsQtyDisplay() { //입고수량
		String res = new DecimalFormat("#,###").format(strgWrhsQty); 
		return res;
	}
	public String getStrgStckSftyQtyDisplay() { //안전재고수
		String res = new DecimalFormat("#,###").format(strgStckSftyQty); 
		return res;
	}
	public String getStrgShmtQtyDisplay() { //출고수량
		String res = new DecimalFormat("#,###").format(strgShmtQty); 
		return res;
	}
	public String getWrAmount() { //입고수량 * 개당가격
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt * strgWrhsQty);
		res = res + "원";
		return res;
	}
	public String getLackQty() { //재고수량 - 창고안전재고수
		String res = new DecimalFormat("#,###").format(strgStckQty - strgStckSftyQty);
		return res;
	}
	public String getShipAmount() { //출고수량 * 개당가격
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt * strgShmtQty);
		res = res + "원";
		return res;
	}
	public String getStrgStckQtyDisplay() { //창고재고수량
		String res = new DecimalFormat("#,###").format(strgStckDfltQty); 
		return res;
	}
	public String getOrdrQtyDisplay() { //발주수량
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt); 
		return res;
	}
	public String getStrgStckDfltQtyDisplay() { //창고기본보유수량
		String res = new DecimalFormat("#,###").format(strgStckDfltQty); 
		return res;
	}
	public String getProdInfoPrchsAmtDisplay() { //개당가격
		String res = new DecimalFormat("#,###").format(prodInfoPrchsAmt); 
		res = res + "원";
		return res;
	}
	public void setProdInfoPrchsAmtDisplay(String prodInfoPrchsAmtDisplay) { //개당가격
		if(prodInfoPrchsAmtDisplay != null && !prodInfoPrchsAmtDisplay.trim().equals("")) {
			prodInfoPrchsAmt = Integer.parseInt(prodInfoPrchsAmtDisplay.replaceAll(",", ""));
		}
	}
	public String getStrgWrhsDtDisplay() { //입고날짜
		String strgWrhsDtDisplay = "";
		if(this.strgWrhsDt != null) {
			strgWrhsDtDisplay = new SimpleDateFormat("YYYY-MM-dd").format(this.strgWrhsDt);
		}
		return strgWrhsDtDisplay;
	}
	public void setStrgWrhsDtDisplay(String strgWrhsDtDisplay) {
		if(strgWrhsDt != null) {
			try {
				this.strgWrhsDt = new SimpleDateFormat("yyyy-MM-dd").parse(strgWrhsDtDisplay);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public String getStrgShmtDtDisplay() {
		if(this.strgShmtDt != null) {
			strgShmtDtDisplay = new SimpleDateFormat("YYYY-MM-dd").format(this.strgShmtDt);
		}
		return strgShmtDtDisplay;
	}
	public void setStrgShmtDtDisplay(String strgShmtDtDisplay) {
		
		if(strgShmtDtDisplay != null) {
			try {
				this.strgShmtDt = new SimpleDateFormat("YYYY-MM-dd").parse(strgShmtDtDisplay);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
	public String getBrncofcId() {
		return brncofcId;
	}
	public void setBrncofcId(String brncofcId) {
		this.brncofcId = brncofcId;
	}
	public String getProdInfoId() {
		return prodInfoId;
	}
	public void setProdInfoId(String prodInfoId) {
		this.prodInfoId = prodInfoId;
	}
	public int getStrgStckQty() {
		return strgStckQty;
	}
	public void setStrgStckQty(int strgStckQty) {
		this.strgStckQty = strgStckQty;
	}
	public int getStrgStckSftyQty() {
		return strgStckSftyQty;
	}
	public void setStrgStckSftyQty(int strgStckSftyQty) {
		this.strgStckSftyQty = strgStckSftyQty;
	}
	public int getStrgStckDfltQty() {
		return strgStckDfltQty;
	}
	public void setStrgStckDfltQty(int strgStckDfltQty) {
		this.strgStckDfltQty = strgStckDfltQty;
	}
	public String getStrgStckYn() {
		return strgStckYn;
	}
	public void setStrgStckYn(String strgStckYn) {
		this.strgStckYn = strgStckYn;
	}
	public String getStrgStckOrdrYn() {
		return strgStckOrdrYn;
	}
	public void setStrgStckOrdrYn(String strgStckOrdrYn) {
		this.strgStckOrdrYn = strgStckOrdrYn;
	}
	public int getOrdrQty() {
		return ordrQty;
	}
	public void setOrdrQty(int ordrQty) {
		this.ordrQty = ordrQty;
	}
	public int getStrgShmtQty() {
		return strgShmtQty;
	}
	public void setStrgShmtQty(int strgShmtQty) {
		this.strgShmtQty = strgShmtQty;
	}
	public int getStrgShmtId() {
		return strgShmtId;
	}
	public void setStrgShmtId(int strgShmtId) {
		this.strgShmtId = strgShmtId;
	}
	public Date getStrgShmtDt() {
		return strgShmtDt;
	}
	public void setStrgShmtDt(Date strgShmtDt) {
		this.strgShmtDt = strgShmtDt;
	}
	public int getProdInfoPrchsAmt() {
		return prodInfoPrchsAmt;
	}
	public void setProdInfoPrchsAmt(int prodInfoPrchsAmt) {
		this.prodInfoPrchsAmt = prodInfoPrchsAmt;
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
	public String getBrncofcNm() {
		return brncofcNm;
	}
	public void setBrncofcNm(String brncofcNm) {
		this.brncofcNm = brncofcNm;
	}
	public String getProdInfoNm() {
		return prodInfoNm;
	}
	public void setProdInfoNm(String prodInfoNm) {
		this.prodInfoNm = prodInfoNm;
	}
	public String getBrncofcIdWr() {
		return brncofcIdWr;
	}
	public void setBrncofcIdWr(String brncofcIdWr) {
		this.brncofcIdWr = brncofcIdWr;
	}
	public String getStrgWrhsId() {
		return strgWrhsId;
	}
	public void setStrgWrhsId(String strgWrhsId) {
		this.strgWrhsId = strgWrhsId;
	}
	public int getStrgWrhsQty() {
		return strgWrhsQty;
	}
	public void setStrgWrhsQty(int strgWrhsQty) {
		this.strgWrhsQty = strgWrhsQty;
	}
	public Date getStrgWrhsDt() {
		return strgWrhsDt;
	}
	public void setStrgWrhsDt(Date strgWrhsDt) {
		this.strgWrhsDt = strgWrhsDt;
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
	@Override
	public String toString() {
		return "StrgstckVO [brncofcId=" + brncofcId + ", prodInfoId=" + prodInfoId + ", strgStckQty=" + strgStckQty
				+ ", strgStckSftyQty=" + strgStckSftyQty + ", strgStckDfltQty=" + strgStckDfltQty + ", strgStckYn="
				+ strgStckYn + ", strgStckOrdrYn=" + strgStckOrdrYn + ", ordrQty=" + ordrQty + ", strgShmtQty="
				+ strgShmtQty + ", strgShmtId=" + strgShmtId + ", strgShmtDt=" + strgShmtDt + ", prodInfoPrchsAmt="
				+ prodInfoPrchsAmt + ", cmncdCd=" + cmncdCd + ", cmncdNm1=" + cmncdNm1 + ", cmncdNm2=" + cmncdNm2
				+ ", brncofcNm=" + brncofcNm + ", prodInfoNm=" + prodInfoNm + ", brncofcIdWr=" + brncofcIdWr
				+ ", strgShmtDtDisplay=" + strgShmtDtDisplay + ", strgWrhsId=" + strgWrhsId + ", strgWrhsQty="
				+ strgWrhsQty + ", strgWrhsDt=" + strgWrhsDt + ", cnptId=" + cnptId + ", cnptNm=" + cnptNm + "]";
	}
}
