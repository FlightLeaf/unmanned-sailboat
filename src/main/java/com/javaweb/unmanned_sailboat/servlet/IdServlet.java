package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "IdServlet", value = "/IdServlet")
public class IdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String uname = request.getParameter("uname");
        System.out.println(uname);
        UserDao userDao = new UserDaoImpl();
        System.out.println(userDao.IDJudgment(uname));
        if(!userDao.IDJudgment(uname)){
            response.getWriter().write("邮箱已存在");
        }else{
            response.getWriter().write("邮箱可以使用");
        }
    }
}

