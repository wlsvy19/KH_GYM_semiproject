package dto;

import java.util.Date;

public class ReviewBoardDTO {
	private int seq_review_num;
	private String name, upload, content, userID;
	private Date review_date;
	
	public ReviewBoardDTO() {
		
	}

	public int getSeq_review_num() {
		return seq_review_num;
	}

	public void setSeq_review_num(int seq_review_num) {
		this.seq_review_num = seq_review_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	
}
