package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;
import dao.DonorDAO;

public class SearchDonorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            String bloodGroup = req.getParameter("bloodGroup"); // FIXED
            String city = req.getParameter("city").trim();

            List<String[]> donors = DonorDAO.searchDonors(bloodGroup, city);

            req.setAttribute("donors", donors); // FIXED
            RequestDispatcher rd = req.getRequestDispatcher("search.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
