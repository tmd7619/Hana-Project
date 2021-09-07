package kr.ac.kopo.scheduler.vo;

public class SchedulerVO {

    private String title; // 스케줄 제목
    private String startDate; // 시작 시간
    private String endDate; // 끝나는 시간
    private String pbName; // 담당 직원 이름
    private String pbBranchName; // 담당 직원 브랜치명
    private int    available; // 상담 가능 여부 : 0 : 불가능  1 : 가능
    private String memo;
    private String startTime;
    private String endTime;

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getMemo() {
        return memo;
    }
    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getPbName() {
        return pbName;
    }

    public void setPbName(String pbName) {
        this.pbName = pbName;
    }

    public String getPbBranchName() {
        return pbBranchName;
    }

    public void setPbBranchName(String pbBranchName) {
        this.pbBranchName = pbBranchName;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }


    @Override
    public String toString() {
        return "SchedulerVO{" +
                "title='" + title + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbBranchName='" + pbBranchName + '\'' +
                ", available=" + available +
                ", memo='" + memo + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                '}';
    }
}
