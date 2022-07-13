/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import DAO.StudentDao;
import entity.Student;
import helper.AbstractDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sgarg
 */
public class view_profile_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet view_profile_servlet</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession session = request.getSession(false);
            Student student = null;
            student = (Student) session.getAttribute("user");
            String Metric_Marks = request.getParameter("Metric_Marks");
            String Secondary_Marks = request.getParameter("Secondary_Marks");
            String College_Name = request.getParameter("College_Name");
            String Graduation_type = request.getParameter("Graduation_type");
            String Graduation_Stream = request.getParameter("Graduation_Stream");
            String Graduation_CGP = request.getParameter("Graduation_CGP");
            String Graduation_Year = request.getParameter("Graduation_Year");
            String Address = request.getParameter("Address");
            String City = request.getParameter("City");
            String State = request.getParameter("State");
            String Country = request.getParameter("Country");
            String Phone = request.getParameter("Phone");
            String Current_Company = request.getParameter("Current_Company");
            String Achievement = request.getParameter("Achievements");
            String Skills = request.getParameter("Skills");
            String Interests = request.getParameter("Interests");
            String Github = request.getParameter("Github");
            String linkedin = request.getParameter("linkedin");
            String Others = request.getParameter("Others");
            String Additional_Info = request.getParameter("Additional_Info");
            student.setAchievements(Achievement);
            student.setAdditional_Info(Additional_Info);
            student.setAddress(Address);
            student.setCity(City);
            student.setCollege_Name(College_Name);
            student.setCountry(Country);
            student.setCurrent_Company(Current_Company);
            student.setGithub(Github);
            student.setGraduation_CGP(Graduation_CGP);
            student.setGraduation_Stream(Graduation_Stream);
            student.setGraduation_Year(Graduation_Year);
            student.setGraduation_type(Graduation_type);
            student.setInterests(Interests);
            student.setLinkedin(linkedin);
            student.setMetric_Marks(Metric_Marks);
            student.setOthers(Others);
            student.setPhone(Phone);
            student.setSecondary_Marks(Secondary_Marks);
            student.setSkills(Skills);
            student.setState(State);
            StudentDao dao = new StudentDao(AbstractDao.getConnection());
            dao.Update(student);
response.sendRedirect("index.jsp?task=profile");

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
