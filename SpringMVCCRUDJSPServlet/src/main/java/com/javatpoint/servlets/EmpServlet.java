package com.javatpoint.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import com.javatpoint.beans.Emp;

public class EmpServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Bu metot istekleri işler
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>EmpServlet (GET)</h1>");
        out.println("<p>Bu metot GET isteklerini işler.</p>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Bu metot POST isteklerini işler
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>EmpServlet (POST)</h1>");
        out.println("<p>Bu metot POST isteklerini işler.</p>");
        out.println("</body></html>");
    }
}
