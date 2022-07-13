package DAO;

import entity.Company;
import java.sql.*;

public class CompanyDao {

    Connection con;

    public CompanyDao(Connection cc) {
        this.con = cc;
    }

    public void saveCompany(Company company) {
        try {

            PreparedStatement pp = con.prepareStatement("insert into Company9 (Reg_no,name,password,location,Additional_info) values(?,?,?,?,?)");
            pp.setInt(1, company.getReg_no());
            pp.setString(2, company.getName());
            pp.setString(3, company.getPassowrd());
            pp.setString(4, company.getLocation());
            pp.setString(5, company.getAdditional_info());
            pp.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Company getLogin(int Reg_no, String password) {
        Company company = null ;
        try {
            PreparedStatement pp = con.prepareStatement("select  Reg_no,name,password,location,Additional_info from Company9 where Reg_no=? and password=?");
            pp.setInt(1, Reg_no);
            pp.setString(2, password);
            ResultSet r = pp.executeQuery();
            if (r.next()) {
                company = new Company();
                company.setReg_no(r.getInt("Reg_no"));
                company.setName(r.getString("name"));
                company.setPassowrd(r.getString("password"));
                company.setLocation(r.getString("location"));
                company.setAdditional_info(r.getString("Additional_info"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return company;
    }
}
