package com.thanasis.servletwebapp.routes;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="searchServlet", value="/search")
public class searchServlet extends HttpServlet {
    public void init(){}
    public void destroy(){}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] name=request.getParameter("name").split(" ");

        response.sendRedirect("https://www.google.co.in/search?q="+String.join("+", name));
    }
}
