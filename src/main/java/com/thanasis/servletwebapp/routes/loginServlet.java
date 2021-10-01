package com.thanasis.servletwebapp.routes;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {
    public void init(){}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();

        // get username and password
        String userName = request.getParameter("userName");
        String userPass = request.getParameter("userPass");

        if(userPass.equals("password")){
            request.setAttribute("userName", userName);
            request.setAttribute("password", userPass);
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request,response);
        }
        else {
            String message = "Username and/or Password Incorrect";
            request.setAttribute("message", message);
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request,response);
        }

    }

    public void destroy(){}
}
