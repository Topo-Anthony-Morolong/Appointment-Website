package com.top0.bac_webclinic.controller;

import com.top0.bac_webclinic.Dao.AdminDao;
import com.top0.bac_webclinic.model.Doctor;
import com.top0.bac_webclinic.model.Patient;
import com.top0.bac_webclinic.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "AdminServlet", value = "/adminDashboard")
public class AdminServlet extends HttpServlet {
    AdminDao adminDao = new AdminDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       listOfPatients(request, response);

       if(request.getParameter("action").equals("AddDoctor")){
           addDoctor(request, response);
       }
    }

    public void listOfPatients(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> patientList = adminDao.getAllPatients();

        request.setAttribute("patient_List", patientList);

        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/adminDashboard.jsp");
        requestDispatcher.forward(request, response);
    }

    public void addDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String specialization = request.getParameter("specialization");

        Doctor doctor = new Doctor(name, email, specialization);

        AdminDao adminDao = new AdminDao();
        adminDao.addDoctor(doctor);
    }
}
