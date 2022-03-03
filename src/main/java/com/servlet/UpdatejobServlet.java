/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.dao.JobsDao;
import com.db.ConnectionProvider;
import com.model.Jobs;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MeGa
 */
@WebServlet("/update")
public class UpdatejobServlet extends HttpServlet {

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

        try {
            Integer id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id : " + id);
            String title = request.getParameter("title");
            String location = request.getParameter("location");
            String category = request.getParameter("category");
            String status = request.getParameter("status");
            String desc = request.getParameter("desc");
            
            Jobs j = new Jobs();
            j.setId(id);
            j.setCategory(category);
            j.setDescription(desc);
            j.setLocation(location);
            j.setStatus(status);
            j.setTitle(title);
            HttpSession session = request.getSession();

            JobsDao jobsDao = new JobsDao(ConnectionProvider.getConnection());

            boolean f = jobsDao.updateJob(j);
            if (f) {
                session.setAttribute("succMsg", "Job Updated Successfully");
                response.sendRedirect("view_jobs.jsp");
            } else {
                session.setAttribute("succMsg", "Something Went Wrong on Server");
                response.sendRedirect("view_jobs.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
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
