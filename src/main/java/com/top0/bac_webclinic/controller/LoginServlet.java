/*
* The class deals with user log in
* */

package com.top0.bac_webclinic.controller;

import com.top0.bac_webclinic.Dao.loginDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "LoginServlet", urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //taking user input
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        //Authenticating a user
        loginDao loginDao = new loginDao();
        loginDao.getAuthenticatedUser(email, password);

        out.println(loginDao.getTableName());

        String tableName = loginDao.getTableName();

        if (tableName != null) {
            switch (tableName) {
                case "Patient":
                    resp.sendRedirect(req.getContextPath() + "/patientDashboard");
                    break;
                case "Doctor":
                    resp.sendRedirect(req.getContextPath() + "/doctorDashboard");
                    break;
                default:
                    resp.sendRedirect(req.getContextPath() + "/adminDashboard");
                    break;
            }
        }else {
            out.println("user not found");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Login.jsp").forward(req, resp);
    }
}
