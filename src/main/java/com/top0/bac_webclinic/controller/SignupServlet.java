package com.top0.bac_webclinic.controller;

import com.top0.bac_webclinic.model.Patient;
import com.top0.bac_webclinic.model.User;
import com.top0.bac_webclinic.Dao.signupDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import static java.lang.System.out;

@WebServlet(name = "SignupServlet", urlPatterns = "/Signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        //fetching user input
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String DoB = req.getParameter("dateOfBirth");
        String physicalAddress = req.getParameter("physicalAddress");
        String postalAddress = req.getParameter("postalAddress");
        String phoneNumber = req.getParameter("phoneNumber");
        String password = req.getParameter("password");

        try{
            //Initializing the user object to patient
        User user = new Patient(name,email,physicalAddress,postalAddress,phoneNumber,password,DoB);

    out.println(user.toString());
    //Passing the created user object to  the database..
      signupDao signupDao = new signupDao();
            signupDao.register(user);
//Error handling
        }catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Signup.jsp").forward(req, resp);
    }

}
