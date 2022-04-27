package kr.or.tco.alam.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

@Repository
public class AlamVO {


	private String alamnum               ;
	private String title                 ;
	private String senderName            ;
	private String senderId              ;
	private String receiverName          ;
	private String receiverId            ;
	private String brncofcnm             ;
	private String shortstocknm          ;
	private String dptopt                ;
	private String lelopt                ;
	private String receptionStatus       ;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date alamSendTime ;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date alamReceiveTime ;
	
	
	public String getAlamnum() {
		return alamnum;
	}
	public void setAlamnum(String alamnum) {
		this.alamnum = alamnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderId() {
		return senderId;
	}
	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}
	public String getBrncofcnm() {
		return brncofcnm;
	}
	public void setBrncofcnm(String brncofcnm) {
		this.brncofcnm = brncofcnm;
	}
	public String getShortstocknm() {
		return shortstocknm;
	}
	public void setShortstocknm(String shortstocknm) {
		this.shortstocknm = shortstocknm;
	}
	public String getDptopt() {
		return dptopt;
	}
	public void setDptopt(String dptopt) {
		this.dptopt = dptopt;
	}
	public String getLelopt() {
		return lelopt;
	}
	public void setLelopt(String lelopt) {
		this.lelopt = lelopt;
	}
	public String getReceptionStatus() {
		return receptionStatus;
	}
	public void setReceptionStatus(String receptionStatus) {
		this.receptionStatus = receptionStatus;
	}
	public Date getAlamSendTime() {
		return alamSendTime;
	}
	public void setAlamSendTime(Date alamSendTime) {
		this.alamSendTime = alamSendTime;
	}
	public Date getAlamReceiveTime() {
		return alamReceiveTime;
	}
	public void setAlamReceiveTime(Date alamReceiveTime) {
		this.alamReceiveTime = alamReceiveTime;
	}
	@Override
	public String toString() {
		return "AlamVO [alamnum=" + alamnum + ", title=" + title + ", senderName=" + senderName + ", senderId="
				+ senderId + ", receiverName=" + receiverName + ", receiverId=" + receiverId + ", brncofcnm="
				+ brncofcnm + ", shortstocknm=" + shortstocknm + ", dptopt=" + dptopt + ", lelopt=" + lelopt
				+ ", receptionStatus=" + receptionStatus + ", alamSendTime=" + alamSendTime + ", alamReceiveTime="
				+ alamReceiveTime + "]";
	}
	
	
	
	

	
}
