/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import DAO.JobDao;
import entity.Job;
import helper.AbstractDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sgarg
 */
public class Job_Servlet extends HttpServlet {

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
            out.println("<title>Servlet Job_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            String id = request.getParameter("Id");
            String Job_name = request.getParameter("Name");
            String CGP = request.getParameter("CGP");
            String Batch = request.getParameter("Batch");
            String Location = request.getParameter("Location");
            String Type = request.getParameter("Type");
            String Perks = request.getParameter("Perks");
            String Qulaification = request.getParameter("Qualification");
            String Skills = request.getParameter("Skills");
            String Additional_info = request.getParameter("Additional_Info");
            String lastDate = request.getParameter("lastDate");
            Job job = new Job();
            job.setId(Integer.parseInt(id));
            job.setJob_name(Job_name);
            job.setCGP(CGP);
            job.setBatch(Batch);
            job.setLocation(Location);
            job.setType(Type);
            job.setPerks(Perks);
            job.setQualification(Qulaification);
            job.setSkills(Skills);
            job.setAdditional_info(Additional_info);
            job.setLastDate(lastDate);
            JobDao dd = new JobDao(AbstractDao.getConnection());
            dd.saveJob(job);
            response.sendRedirect("index.jsp?task=Company_profile");
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
