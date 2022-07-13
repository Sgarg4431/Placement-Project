package entity;

public class Job {

    private int id;
    private String Job_name;
    private String CGP;
    private String Batch;
    private String Location;
    private String Type;
    private String Perks;
    private String Qualification;
    private String Skills;
    private String Additional_info;
    private String verify;
private String lastDate;

    public String getLastDate() {
        return lastDate;
    }

    public void setLastDate(String lastDate) {
        this.lastDate = lastDate;
    }

    public String getVerify() {
        return verify;
    }

    public void setVerify(String verify) {
        this.verify = verify;
    }

    public int getId() {
        return id;
    }

    public String getJob_name() {
        return Job_name;
    }

    public String getCGP() {
        return CGP;
    }

    public String getBatch() {
        return Batch;
    }

    public String getLocation() {
        return Location;
    }

    public String getType() {
        return Type;
    }

    public String getPerks() {
        return Perks;
    }

    public String getQualification() {
        return Qualification;
    }

    public String getSkills() {
        return Skills;
    }

    public String getAdditional_info() {
        return Additional_info;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setJob_name(String Job_name) {
        this.Job_name = Job_name;
    }

    public void setCGP(String CGP) {
        this.CGP = CGP;
    }

    public void setBatch(String Batch) {
        this.Batch = Batch;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public void setPerks(String Perks) {
        this.Perks = Perks;
    }

    public void setQualification(String Qualification) {
        this.Qualification = Qualification;
    }

    public void setSkills(String Skills) {
        this.Skills = Skills;
    }

    public void setAdditional_info(String Additional_info) {
        this.Additional_info = Additional_info;
    }

}
