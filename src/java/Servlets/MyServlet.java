/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ejb.EJB;
import session.ModelFacade;
import session.PictureFacade;
import session.PurchasedFacade;
import session.UserFacade;
import session.UserRoleFacade;

/**
 *
 * @author pupil
 */
@WebServlet(name = "MyServlet",urlPatterns = {
    "/showindex",
//    "/showAddModel",
//    "/addModel",
})

public class MyServlet extends HttpServlet {
    @EJB ModelFacade modelFacade;
    @EJB PictureFacade pictureFacade;
    @EJB UserFacade userFacade;
    @EJB UserRoleFacade userRolesFacade;
    @EJB PurchasedFacade purchasedFacade;
   

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
            request.setCharacterEncoding("UTF-8");
            String path = request.getServletPath();
            switch(path) {
                case "/showindex":
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                
                
//            case "/showAddModel":
//                request.getRequestDispatcher("/WEB-INF/AddModel.jsp").forward(request, response);
//                break;
//            case "/addModel":
//                String name = request.getParameter("name");
//                String picture = request.getParameter("picture");
//                String url = request.getParameter("url");
//                String urlLogin = request.getParameter("urlLogin");
//                String urlPassword = request.getParameter("urlPassword");
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
