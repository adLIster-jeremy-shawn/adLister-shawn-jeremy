package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.text.DecimalFormat;

import static java.lang.Math.round;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            request.getSession().setAttribute("firstURL", request.getServletPath());
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String firstURL = (String) request.getSession().getAttribute("firstURL");

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
//        if (DaoFactory.getAdsDao() != null) {
//            request.setAttribute("adderrorMessage", "enter valid ad.");
//            try {
//                request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
//            } catch (ServletException e) {
//                throw new RuntimeException(e);
//            }
//            return;
//        }

        String price = request.getParameter("price");
//        DecimalFormat decim = new DecimalFormat("0.00");
//        double doublePrice = (price == null) ? 0: Double.parseDouble(decim.format(price));
        double doublePrice = (price == null) ? 0: Double.parseDouble(price);

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            doublePrice,
            request.getParameter("description"),
            request.getParameter("location")
        );

        if (ad.getTitle() == "" || ad.getDescription() == "" || ad.getLocation() == "" ) {
            response.sendRedirect(firstURL);
        } else {
            DaoFactory.getAdsDao().insert(ad);
            response.sendRedirect("/profile");
        }
    }

}
