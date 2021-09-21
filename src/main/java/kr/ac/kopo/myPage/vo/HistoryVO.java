package kr.ac.kopo.myPage.vo;

public class HistoryVO {

    private String userId;
    private String csltTime; // 상담 날짜
    private String csltTitle;
    private String csltComment;
    private int roomNumber;
    private String pbName;
    private String branchName;


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCsltTime() {
        return csltTime;
    }

    public void setCsltTime(String csltTime) {
        this.csltTime = csltTime;
    }

    public String getCsltTitle() {
        return csltTitle;
    }

    public void setCsltTitle(String csltTitle) {
        this.csltTitle = csltTitle;
    }

    public String getCsltComment() {
        return csltComment;
    }

    public void setCsltComment(String csltComment) {
        this.csltComment = csltComment;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getPbName() {
        return pbName;
    }

    public void setPbName(String pbName) {
        this.pbName = pbName;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    @Override
    public String toString() {
        return "HistoryVO{" +
                "userId='" + userId + '\'' +
                ", csltTime='" + csltTime + '\'' +
                ", csltTitle='" + csltTitle + '\'' +
                ", csltComment='" + csltComment + '\'' +
                ", roomNumber=" + roomNumber +
                ", pbName='" + pbName + '\'' +
                ", branchName='" + branchName + '\'' +
                '}';
    }
}



