package entity;

public class Company {

    private int Reg_no;
    private String name;
    private String passowrd;
    private String location;
    private String Additional_info;

    public int getReg_no() {
        return Reg_no;
    }

    public String getName() {
        return name;
    }

    public String getPassowrd() {
        return passowrd;
    }

    public String getLocation() {
        return location;
    }

    public String getAdditional_info() {
        return Additional_info;
    }

    public void setReg_no(int Reg_no) {
        this.Reg_no = Reg_no;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassowrd(String passowrd) {
        this.passowrd = passowrd;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setAdditional_info(String Additional_info) {
        this.Additional_info = Additional_info;
    }

}
