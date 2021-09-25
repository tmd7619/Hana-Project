package kr.ac.kopo.myPage.vo;

public class InquiryVO {

    private String inquiry_title;
    private String inquiry_content;
    private int roomNumber;
    private String writer;
    private String regDate;

    public String getInquiry_title() {
        return inquiry_title;
    }

    public void setInquiry_title(String inquiry_title) {
        this.inquiry_title = inquiry_title;
    }

    public String getInquiry_content() {
        return inquiry_content;
    }

    public void setInquiry_content(String inquiry_content) {
        this.inquiry_content = inquiry_content;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "InquiryVO{" +
                "inquiry_title='" + inquiry_title + '\'' +
                ", inquiry_content='" + inquiry_content + '\'' +
                ", roomNumber=" + roomNumber +
                ", writer='" + writer + '\'' +
                ", regDate='" + regDate + '\'' +
                '}';
    }
}
