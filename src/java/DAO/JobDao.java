package DAO;

import entity.Job;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class JobDao {
    
    Connection cc;
    
    public JobDao(Connection cc) {
        this.cc = cc;
    }
    
    public void saveJob(Job job) {
        try {
            PreparedStatement pp = cc.prepareStatement("insert into Job9 (Id,Job_Name,CGP,Batch,Location,Type,Perks,Qualification,Skills,Additional_info,lastDate) values(?,?,?,?,?,?,?,?,?,?,?)");
            pp.setInt(1, job.getId());
            pp.setString(2, job.getJob_name());
            pp.setString(3, job.getCGP());
            pp.setString(4, job.getBatch());
            pp.setString(5, job.getLocation());
            pp.setString(6, job.getType());
            pp.setString(7, job.getPerks());
            pp.setString(8, job.getQualification());
            pp.setString(9, job.getSkills());
            pp.setString(10, job.getAdditional_info());
            pp.setString(11, job.getLastDate());
            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public Job getById(int id) {
        Job job = null;
        try {
            
            PreparedStatement pp;
            pp = this.cc.prepareStatement("select id,Job_name,Cgp,Batch,Location,Type,Perks,Qualification,Skills,Additional_info,lastDate from Job9 where id=? ");
            pp.setInt(1, id);
            
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                job = new Job();
                job.setId(rs.getInt(1));
                job.setJob_name(rs.getString(2));
                job.setCGP(rs.getString(3));
                job.setBatch(rs.getString(4));
                job.setLocation(rs.getString(5));
                job.setType(rs.getString(6));
                
                job.setPerks(rs.getString(7));
                job.setQualification(rs.getString(8));
                job.setSkills(rs.getString(9));
                job.setAdditional_info(rs.getString(10));
                job.setLastDate(rs.getString(11));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return job;
    }
    
    public ArrayList<Job> getAll1() {
        ArrayList<Job> jobs = new ArrayList<>();
        try {
            PreparedStatement pp = cc.prepareStatement("select id,Job_name,Cgp,Batch,Type,Location,Perks,Qualification,Skills,Additional_info,lastDate from Job9 where verify='true' and lastDate>sysdate-1 ");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                Job job = new Job();
                
                job.setId(rs.getInt(1));
                job.setJob_name(rs.getString(2));
                job.setCGP(rs.getString(3));
                job.setBatch(rs.getString(4));
                job.setType(rs.getString(5));
                job.setLocation(rs.getString(6));
                job.setPerks(rs.getString(7));
                job.setQualification(rs.getString(8));
                job.setSkills(rs.getString(9));
                job.setAdditional_info(rs.getString(10));
                job.setLastDate(rs.getString(11));
                jobs.add(job);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return jobs;
    }
    
    public void updateJob(int id) {
        try {
            PreparedStatement pp = cc.prepareStatement("update  Job9 set verify='true' where id=?");
            pp.setInt(1, id);
            
            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public ArrayList<Job> getAll() {
        ArrayList<Job> jobs = new ArrayList<>();
        try {
            PreparedStatement pp = cc.prepareStatement("select id,Job_name,Cgp,Batch,Type,Location,Perks,Qualification,Skills,Additional_info,lastDate from Job9  ");
            ResultSet rs = pp.executeQuery();
            while (rs.next()) {
                Job job = new Job();
                
                job.setId(rs.getInt(1));
                job.setJob_name(rs.getString(2));
                job.setCGP(rs.getString(3));
                job.setBatch(rs.getString(4));
                job.setType(rs.getString(5));
                job.setLocation(rs.getString(6));
                job.setPerks(rs.getString(7));
                job.setQualification(rs.getString(8));
                job.setSkills(rs.getString(9));
                job.setAdditional_info(rs.getString(10));
                job.setLastDate(rs.getString(11));
                jobs.add(job);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return jobs;
    }
    
}
