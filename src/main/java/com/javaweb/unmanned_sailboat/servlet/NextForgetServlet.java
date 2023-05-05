package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NextForgetServlet", value = "/NextForgetServlet")
public class NextForgetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String A = request.getParameter("A");
        String pwd = request.getParameter("pwd");

        UserDao userDao = new UserDaoImpl();
        if(userDao.updateForgetPassword(id,A,pwd)){
            request.getRequestDispatcher("成员登录.jsp").forward(request, response);
        }
        else {
            response.sendRedirect("忘记密码.jsp");
        }
    }
}
