package com.thanasis.servletwebapp.routes;


import com.thanasis.servletwebapp.Controller.DBController;
import com.thanasis.servletwebapp.Model.ListItem;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "listServlet", value="/list")
public class listServlet extends HttpServlet {
    public void init(){}
    public void destroy(){}

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setAttribute("list", DBController.getAllItemsFromCollection());
        RequestDispatcher rd = req.getRequestDispatcher("/list.jsp");
        rd.forward(req,res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String itemName = req.getParameter("itemName");
        String itemDescription = req.getParameter("itemDescription");
        DBController.collectionInsert(new ListItem(itemName, itemDescription));
        doGet(req, res);
    }


}
