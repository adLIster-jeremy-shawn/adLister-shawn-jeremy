package com.codeup.adlister.controllers;

import com.codeup.adlister.Util.Password;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.core.Config;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static com.codeup.adlister.test.PasswordTest.is_Valid_Password;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String firstURL = (String) request.getSession().getAttribute("firstURL");
        if (firstURL == null) {
            firstURL = "/profile";
        }
//        System.out.println(firstURL);

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
//            response.sendRedirect("/login");
            return;
        }

        boolean validAttempt = BCrypt.checkpw(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect(firstURL);
        }
    }
}
