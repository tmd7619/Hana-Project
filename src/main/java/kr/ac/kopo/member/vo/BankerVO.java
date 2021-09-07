package kr.ac.kopo.member.vo;

public class BankerVO {

    private String pbId;
    private String pbName;
    private String pbPassword;
    private String pbRank;
    private String pbPhone;
    private String pbEmail;
    private String branchName;

    public String getPbId() {
        return pbId;
    }

    public void setPbId(String pbId) {
        this.pbId = pbId;
    }

    public String getPbPassword() {
        return pbPassword;
    }

    public void setPbPassword(String pbPassword) {
        this.pbPassword = pbPassword;
    }

    public String getPbName() {
        return pbName;
    }

    public void setPbName(String pbName) {
        this.pbName = pbName;
    }

    public String getPbRank() {
        return pbRank;
    }

    public void setPbRank(String pbRank) {
        this.pbRank = pbRank;
    }

    public String getPbPhone() {
        return pbPhone;
    }

    public void setPbPhone(String pbPhone) {
        this.pbPhone = pbPhone;
    }

    public String getPbEmail() {
        return pbEmail;
    }

    public void setPbEmail(String pbEmail) {
        this.pbEmail = pbEmail;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    @Override
    public String toString() {
        return "BankerVO{" +
                "pbId='" + pbId + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbPassword='" + pbPassword + '\'' +
                ", pbRank='" + pbRank + '\'' +
                ", pbPhone='" + pbPhone + '\'' +
                ", pbEmail='" + pbEmail + '\'' +
                ", branchName='" + branchName + '\'' +
                '}';
    }
}
