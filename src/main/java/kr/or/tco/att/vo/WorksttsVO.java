package kr.or.tco.att.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 테스트
 * @author SEM-PC
 *
 */
@Repository
public class WorksttsVO {

	private String empNm;
	

	private String empId;
	
	@DateTimeFormat(pattern="yy/MM/dd")
	private Date worksttsDt; // 날짜

	private String worksttsBgngTm; // 출근
	
	// 출근 (시)간
	private int st;
	// 퇴근 (시)간
	private int end;
	
	private String worksttsEndTm; // 퇴근
	
	private String cmncdCd;
	
	

	private int worksttsTm; // 근무시간
	
	private String worksttsScTm; // 지정근무스케줄
	
	private String worksttsCk; // 업무상태
	
	
	// 이번달 근무 시간
	private int sumtm;
	
	// 달력,,계산위한 변수
	private int cal;
	
	
	public String getEmpNm() {
		return empNm;
	}
	public void setEmpNm(String empNm) {
		this.empNm = empNm;
	}
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public Date getWorksttsDt() {
		return worksttsDt;
	}
	public void setWorksttsDt(Date worksttsDt) {
		this.worksttsDt = worksttsDt;
	}
	public String getWorksttsBgngTm() {
		return worksttsBgngTm;
	}
	public void setWorksttsBgngTm(String worksttsBgngTm) {
		this.worksttsBgngTm = worksttsBgngTm;
	}
	public String getWorksttsEndTm() {
		return worksttsEndTm;
	}
	public void setWorksttsEndTm(String worksttsEndTm) {
		this.worksttsEndTm = worksttsEndTm;
	}
	public String getCmncdCd() {
		return cmncdCd;
	}
	public void setCmncdCd(String cmncdCd) {
		this.cmncdCd = cmncdCd;
	}
	
	
	
	public int getWorksttsTm() {
		return worksttsTm;
	}
	public void setWorksttsTm(int worksttsTm) {
		this.worksttsTm = worksttsTm;
	}
	public String getWorksttsScTm() {
		return worksttsScTm;
	}
	public void setWorksttsScTm(String worksttsScTm) {
		this.worksttsScTm = worksttsScTm;
	}
	
	
	public int getSt() {
		return st;
	}
	public void setSt(int st) {
		this.st = st;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	
	
	public int getSumtm() {
		return sumtm;
	}
	public void setSumtm(int sumtm) {
		this.sumtm = sumtm;
	}
	
	
	public int getCal() {
		return cal;
	}
	public void setCal(int cal) {
		this.cal = cal;
	}
	
	
	public String getWorksttsCk() {
		return worksttsCk;
	}
	public void setWorksttsCk(String worksttsCk) {
		this.worksttsCk = worksttsCk;
	}
	
	@Override
	public String toString() {
		return "WorksttsVO [empNm=" + empNm + ", empId=" + empId + ", worksttsDt=" + worksttsDt + ", worksttsBgngTm="
				+ worksttsBgngTm + ", st=" + st + ", end=" + end + ", worksttsEndTm=" + worksttsEndTm + ", cmncdCd="
				+ cmncdCd + ", worksttsTm=" + worksttsTm + ", worksttsScTm=" + worksttsScTm + ", worksttsCk="
				+ worksttsCk + ", sumtm=" + sumtm + ", cal=" + cal + "]";
	}

	
	
}
