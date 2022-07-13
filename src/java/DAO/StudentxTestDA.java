package DAO;

import entity.StudentxTestBO;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;

public class StudentxTestDA {
    
    private Connection cc;
    
    public StudentxTestDA(Connection cc) {
        this.cc = cc;
    }
    
    public void saveStudentxTest(StudentxTestBO studentxtest) {
        try {
            PreparedStatement pp = cc.prepareStatement("insert into StudentxTest(Student_regNo,testMarks,status)values(?,?,?)");
            pp.setInt(1, studentxtest.getStudent().getReg_no());
            pp.setInt(2, studentxtest.getTestMarks());
            pp.setString(3, studentxtest.getStatus());
            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }

    public ArrayList<StudentxTestBO> getAll5() {
        ArrayList<StudentxTestBO> xx = new ArrayList<>();
        try {
            PreparedStatement pp = cc.prepareStatement("select Student_regNo, testMarks,status from StudentxTest where status='done'");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                StudentxTestBO yy = new StudentxTestBO();
                StudentDao ss = new StudentDao(cc);
                yy.setStudent(ss.getByReg(rs.getInt(1)));
                yy.setTestMarks(rs.getInt(2));
                yy.setStatus(rs.getString(3));
                xx.add(yy);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return xx;
    }
}
