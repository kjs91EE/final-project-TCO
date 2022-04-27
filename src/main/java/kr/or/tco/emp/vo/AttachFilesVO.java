package kr.or.tco.emp.vo;



import org.springframework.stereotype.Repository;

@Repository
public class AttachFilesVO {

	private int atchfileId; // 파일 ID
	private String atchfileNm; // 파일명
	private String atchfileSz; // 파일 크기
	private String atchfileDt; // 파일 등록일
	private String cmncdCd;
	
	private String uploadFileName;
	private String uploadFileSize;
	
	public int getAtchfileId() {
		return atchfileId;
	}
	public void setAtchfileId(int atchfileId) {
		this.atchfileId = atchfileId;
	}
	public String getAtchfileNm() {
		return atchfileNm;
	}
	public void setAtchfileNm(String atchfileNm) {
		this.atchfileNm = atchfileNm;
	}
	public String getAtchfileSz() {
		return atchfileSz;
	}
	public void setAtchfileSz(String atchfileSz) {
		this.atchfileSz = atchfileSz;
	}
	
	public String getAtchfileDt() {
		return atchfileDt;
	}
	public void setAtchfileDt(String atchfileDt) {
		this.atchfileDt = atchfileDt;
	}

	
	public String getCmncdCd() {
		return cmncdCd;
	}
	public void setCmncdCd(String cmncdCd) {
		this.cmncdCd = cmncdCd;
	}
	
	
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadFileSize() {
		return uploadFileSize;
	}
	public void setUploadFileSize(String uploadFileSize) {
		this.uploadFileSize = uploadFileSize;
	}
	
	
	@Override
	public String toString() {
		return "AttachFilesVO [atchfileId=" + atchfileId + ", atchfileNm=" + atchfileNm + ", atchfileSz=" + atchfileSz
				+ ", atchfileDt=" + atchfileDt + ", cmncdCd=" + cmncdCd + "]";
	}
	
	
	
	
	
	
}
