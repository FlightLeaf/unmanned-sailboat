package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ForgetServlet", value = "/ForgetServlet")
public class ForgetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        String email = request.getParameter("email");
        UserDao userDao =new UserDaoImpl();
        String Q = userDao.getQuestion(email);
        if(email!= null){
            HttpSession session = request.getSession();
            session.setAttribute("Q",Q);
            request.getRequestDispatcher("忘记密码.jsp").forward(request, response);
        }
        else {
            PrintWriter out = response.getWriter();
            out.println("<script>alert('邮箱错误!');history.go(-1)</script>");
        }
    }
}

