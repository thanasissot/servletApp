package com.thanasis.servletwebapp.routes;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "simpleServlet", value = "/simple")
public class simpleServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "This HTML page code is written inside a servlet doGet method\nThen served to you after clicking that link";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h3>" + message + "</h3>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}