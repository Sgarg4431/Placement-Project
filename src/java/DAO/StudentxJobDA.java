package DAO;

import entity.StudentxJobBO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StudentxJobDA {

    private Connection cc;

    public StudentxJobDA(Connection cc) {
        this.cc = cc;
    }

    public void saveStudentxJob(StudentxJobBO studentxjob) {
        try {
            PreparedStatement pp = cc.prepareStatement("insert into StudentxJob(Student_regNo,Job_id)values(?,?)");
            pp.setInt(1, studentxjob.getStudent().getReg_no());
            pp.setInt(2, studentxjob.getJob().getId());
            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public ArrayList<StudentxJobBO> getAll() {
        ArrayList<StudentxJobBO> xx = new ArrayList<>();
        try {
            PreparedStatement pp = cc.prepareStatement("select Student_regNo, Job_id from StudentxJob");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                StudentxJobBO yy = new StudentxJobBO();
                StudentDao ss = new StudentDao(cc);
                JobDao jj = new JobDao(cc);
                yy.setStudent(ss.getByReg(rs.getInt(1)));
                yy.setJob(jj.getById(rs.getInt(2)));
                xx.add(yy);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return xx;
    }
}
