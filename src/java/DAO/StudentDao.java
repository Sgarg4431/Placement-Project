package DAO;

import entity.Job;
import entity.Student;
import java.sql.*;
import java.util.ArrayList;

public class StudentDao {

    private Connection cc;

    public StudentDao(Connection cc) {
        this.cc = cc;
    }

    public void saveStudent(Student student) {
        try {

            PreparedStatement pp;
            pp = this.cc.prepareStatement("insert into Student9(reg_no,name,password,email,Date_of_birth,gender)" + "values(?,?,?,?,?,?)");
            pp.setInt(1, student.getReg_no());
            pp.setString(2, student.getName());
            pp.setString(3, student.getPassword());
            pp.setString(4, student.getEmail());
            pp.setString(5, student.getDate_of_birth());
            pp.setString(6, student.getGender());
            pp.execute();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public Student getLogin(int Reg_no, String password) {
        Student student = null;
        try {

            PreparedStatement pp;
            pp = this.cc.prepareStatement("select Reg_no,name,password,email,Date_of_birth,gender from Student9 where Reg_no=? and password=?");
            pp.setInt(1, Reg_no);
            pp.setString(2, password);
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                student = new Student();
                student.setReg_no(rs.getInt("Reg_no"));
                student.setName(rs.getString("name"));
                student.setPassword(rs.getString("password"));

                student.setEmail(rs.getString("Email"));
                student.setDate_of_birth(rs.getString("Date_of_birth"));
                student.setGender(rs.getString("gender"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return student;
    }

    public Student getByReg(int Reg_no) {
        Student student = null;
        try {

            PreparedStatement pp;
            pp = this.cc.prepareStatement("select Reg_no,name,password,email,Date_of_birth,gender from Student9 where Reg_no=? ");
            pp.setInt(1, Reg_no);

            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                student = new Student();
                student.setReg_no(rs.getInt("Reg_no"));
                student.setName(rs.getString("name"));
                student.setPassword(rs.getString("password"));

                student.setEmail(rs.getString("Email"));
                student.setDate_of_birth(rs.getString("Date_of_birth"));
                student.setGender(rs.getString("gender"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return student;
    }

    public ArrayList<Student> getAll() {
        ArrayList<Student> students = new ArrayList<>();

        try {

            PreparedStatement pp = cc.prepareStatement("select REG_NO,NAME,PASSWORD,EMAIL,DATE_OF_BIRTH,GENDER,METRIC_MARKS,SECONDARY_MARKS,COLLEGE_NAME,GRADUATION_TYPE,GRADUATION_STREAM,GRADUATION_CGP,GRADUATION_YEAR,ADDRESS,CITY,STATE,COUNTRY,PHONE,CURRENT_COMPANY,ACHIEVEMENTS,SKILLS,INTERESTS,GITHUB,LINKEDIN,OTHERS,ADDITIONAL_INFO from Student9");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setReg_no(rs.getInt(1));
                student.setName(rs.getString(2));
                student.setPassword(rs.getString(3));
                student.setEmail(rs.getString(4));
                student.setDate_of_birth(rs.getString(5));
                student.setGender(rs.getString(6));
                student.setMetric_Marks(rs.getString(7));
                student.setSecondary_Marks(rs.getString(8));
                student.setCollege_Name(rs.getString(9));
                student.setGraduation_type(rs.getString(10));
                student.setGraduation_Stream(rs.getString(11));
                student.setGraduation_CGP(rs.getString(12));
                student.setGraduation_Year(rs.getString(13));
                student.setAddress(rs.getString(14));
                student.setCity(rs.getString(15));
                student.setState(rs.getString(16));
                student.setCountry(rs.getString(17));
                student.setPhone(rs.getString(18));
                student.setCurrent_Company(rs.getString(19));
                student.setAchievements(rs.getString(20));
                student.setSkills(rs.getString(21));
                student.setInterests(rs.getString(22));
                student.setGithub(rs.getString(23));
                student.setLinkedin(rs.getString(24));
                student.setOthers(rs.getString(25));
                student.setAdditional_Info(rs.getString(26));
                students.add(student);
            }
        } catch (Exception e) {

            System.out.println(e);
        }
        return students;

    }

    public void Update(Student student) {

        try {

            PreparedStatement pp;
            pp = this.cc.prepareStatement("update Student9 set Reg_no=?,name=?,password=?,email=?,Date_of_birth=?,gender=?, Metric_marks=?,Secondary_marks=?,college_name=?,Graduation_type=?,Graduation_stream=?,Graduation_cgp=?,Graduation_year=?,Address=?,city=?,state=?,country=?,phone=?,Current_company=?,ACHIEVEMENTS=?,skills=?,interests=?,Github=?,linkedin=?,others=?,Additional_info=?");
            pp.setInt(1, student.getReg_no());
            pp.setString(2, student.getName());
            pp.setString(3, student.getPassword());
            pp.setString(4, student.getEmail());
            pp.setString(5, student.getDate_of_birth());
            pp.setString(6, student.getGender());
            pp.setString(7, student.getMetric_Marks());
            pp.setString(8, student.getSecondary_Marks());
            pp.setString(9, student.getCollege_Name());
            pp.setString(10, student.getGraduation_type());
            pp.setString(11, student.getGraduation_Stream());
            pp.setString(12, student.getGraduation_CGP());
            pp.setString(13, student.getGraduation_Year());
            pp.setString(14, student.getAddress());
            pp.setString(15, student.getCity());
            pp.setString(16, student.getState());
            pp.setString(17, student.getCountry());
            pp.setString(18, student.getPhone());
            pp.setString(19, student.getCurrent_Company());
            pp.setString(20, student.getAchievements());
            pp.setString(21, student.getSkills());
            pp.setString(22, student.getInterests());
            pp.setString(23, student.getGithub());
            pp.setString(24, student.getLinkedin());
            pp.setString(25, student.getOthers());
            pp.setString(26, student.getAdditional_Info());

            pp.execute();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public Student getByReg1(int Reg_no) {
        Student student = null;
        try {

            PreparedStatement pp;
            pp = this.cc.prepareStatement("select REG_NO,NAME,PASSWORD,EMAIL,DATE_OF_BIRTH,GENDER,METRIC_MARKS,SECONDARY_MARKS,COLLEGE_NAME,GRADUATION_TYPE,GRADUATION_STREAM,GRADUATION_CGP,GRADUATION_YEAR,ADDRESS,CITY,STATE,COUNTRY,PHONE,CURRENT_COMPANY,ACHIEVEMENTS,SKILLS,INTERESTS,GITHUB,LINKEDIN,OTHERS,ADDITIONAL_INFO from Student9 where Reg_no=? ");
            pp.setInt(1, Reg_no);

            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                student = new Student();
                student.setReg_no(rs.getInt(1));
                student.setName(rs.getString(2));
                student.setPassword(rs.getString(3));
                student.setEmail(rs.getString(4));
                student.setDate_of_birth(rs.getString(5));
                student.setGender(rs.getString(6));
                student.setMetric_Marks(rs.getString(7));
                student.setSecondary_Marks(rs.getString(8));
                student.setCollege_Name(rs.getString(9));
                student.setGraduation_type(rs.getString(10));
                student.setGraduation_Stream(rs.getString(11));
                student.setGraduation_CGP(rs.getString(12));
                student.setGraduation_Year(rs.getString(13));
                student.setAddress(rs.getString(14));
                student.setCity(rs.getString(15));
                student.setState(rs.getString(16));
                student.setCountry(rs.getString(17));
                student.setPhone(rs.getString(18));
                student.setCurrent_Company(rs.getString(19));
                student.setAchievements(rs.getString(20));
                student.setSkills(rs.getString(21));
                student.setInterests(rs.getString(22));
                student.setGithub(rs.getString(23));
                student.setLinkedin(rs.getString(24));
                student.setOthers(rs.getString(25));
                student.setAdditional_Info(rs.getString(26));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return student;
    }

    public void updateStudent(int id) {
        try {
            PreparedStatement pp = cc.prepareStatement("update  Student9 set verify='true' where reg_no=?");
            pp.setInt(1, id);

            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<Student> getAll1() {
        ArrayList<Student> students = new ArrayList<>();

        try {

            PreparedStatement pp = cc.prepareStatement("select REG_NO,NAME,PASSWORD,EMAIL,DATE_OF_BIRTH,GENDER,METRIC_MARKS,SECONDARY_MARKS,COLLEGE_NAME,GRADUATION_TYPE,GRADUATION_STREAM,GRADUATION_CGP,GRADUATION_YEAR,ADDRESS,CITY,STATE,COUNTRY,PHONE,CURRENT_COMPANY,ACHIEVEMENTS,SKILLS,INTERESTS,GITHUB,LINKEDIN,OTHERS,ADDITIONAL_INFO from Student9 where verify='true' ");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setReg_no(rs.getInt(1));
                student.setName(rs.getString(2));
                student.setPassword(rs.getString(3));
                student.setEmail(rs.getString(4));
                student.setDate_of_birth(rs.getString(5));
                student.setGender(rs.getString(6));
                student.setMetric_Marks(rs.getString(7));
                student.setSecondary_Marks(rs.getString(8));
                student.setCollege_Name(rs.getString(9));
                student.setGraduation_type(rs.getString(10));
                student.setGraduation_Stream(rs.getString(11));
                student.setGraduation_CGP(rs.getString(12));
                student.setGraduation_Year(rs.getString(13));
                student.setAddress(rs.getString(14));
                student.setCity(rs.getString(15));
                student.setState(rs.getString(16));
                student.setCountry(rs.getString(17));
                student.setPhone(rs.getString(18));
                student.setCurrent_Company(rs.getString(19));
                student.setAchievements(rs.getString(20));
                student.setSkills(rs.getString(21));
                student.setInterests(rs.getString(22));
                student.setGithub(rs.getString(23));
                student.setLinkedin(rs.getString(24));
                student.setOthers(rs.getString(25));
                student.setAdditional_Info(rs.getString(26));
                students.add(student);
            }
        } catch (Exception e) {

            System.out.println(e);
        }
        return students;

    }

}
