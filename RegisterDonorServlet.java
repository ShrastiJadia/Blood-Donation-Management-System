package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import dao.DonorDAO;

public class RegisterDonorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            DonorDAO.registerDonor(
                req.getParameter("name"),
                req.getParameter("email"),
                req.getParameter("phone"),
                req.getParameter("blood_group"),
                req.getParameter("city"),
                req.getParameter("password")
            );

            // REDIRECT USER
            res.sendRedirect("index.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error while registering donor");
        }
    }
}
