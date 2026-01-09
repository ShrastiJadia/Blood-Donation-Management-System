package controller;

import dao.DonorDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

public class DonorLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("DonorLoginServlet HIT"); // DEBUG

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        DonorDAO dao = new DonorDAO();
        boolean isValid = dao.loginDonor(email, password);

        if (isValid) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            response.sendRedirect("donor-dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
