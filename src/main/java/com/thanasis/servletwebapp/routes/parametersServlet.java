package com.thanasis.servletwebapp.routes;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "parametersServlet", value = "/parameters")
public class parametersServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        String name = request.getParameter("name");//will return value

        if(name.length() == 0) name = "You typed nothing in the text input area!!";

        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<p> This is the input you typed in the text area before you clicked the button : ");
        out.println("<h3>" + name + "</h3>");
        out.println("</p>");
        out.println("</body></html>");
    }

}
