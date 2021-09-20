package kr.ac.kopo.myPage.vo;

public class HistoryVO {

    private String username;
    private String codeNum;
    private String csltTime; // 상담 날짜
    private String csltTitle;
    private String csltComent;
    private int roomNumber;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCodeNum() {
        return codeNum;
    }

    public void setCodeNum(String codeNum) {
        this.codeNum = codeNum;
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

    public String getCsltComent() {
        return csltComent;
    }

    public void setCsltComent(String csltComent) {
        this.csltComent = csltComent;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    @Override
    public String toString() {
        return "HistoryVO{" +
                "username='" + username + '\'' +
                ", codeNum='" + codeNum + '\'' +
                ", csltTime='" + csltTime + '\'' +
                ", csltTitle='" + csltTitle + '\'' +
                ", csltComent='" + csltComent + '\'' +
                ", roomNumber=" + roomNumber +
                '}';
    }
}



