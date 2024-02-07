package com.assg2.assignment2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/Returner")
public class Return extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String firstName = request.getParameter("firstName");
        String gender = request.getParameter("gender");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String department = request.getParameter("department");
        String password = request.getParameter("password");

        // Set attributes in request for Preview JSP
        request.setAttribute("firstName", firstName);
        request.setAttribute("gender", gender);
        request.setAttribute("lastName", lastName);
        request.setAttribute("dob", dob);
        request.setAttribute("address", address);
        request.setAttribute("contact", contact);
        request.setAttribute("email", email);
        request.setAttribute("course", course);
        request.setAttribute("department", department);
        request.setAttribute("password", password);

        // Forward to the Preview JSP
        request.getRequestDispatcher("/preview.jsp").forward(request, response);
    }
}

