package com.thanasis.servletwebapp.routes;

import com.thanasis.servletwebapp.Controller.DBController;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteItemServlet", value="/deleteItem")
public class deleteItem extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        req.setAttribute("message", name);
        DBController.deleteItem(name);

        res.sendRedirect("list");

    }
}
