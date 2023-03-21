package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.codeup.adlister.test.PasswordTest.is_Valid_Password;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                ;

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        if (is_Valid_Password(password)) {
            User user = new User(username, email, password);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        } else {
            response.sendRedirect("/register");
            return;
        }
    }
}
