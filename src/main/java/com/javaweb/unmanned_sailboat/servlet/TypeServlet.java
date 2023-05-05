package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.CodeDao;
import com.javaweb.unmanned_sailboat.dao.Impl.CodeDaoImpl;
import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TypeServlet", value = "/TypeServlet")
public class TypeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String code = request.getParameter("code");
        String email = request.getParameter("email");

        CodeDao codeDao = new CodeDaoImpl();

        if(!codeDao.judgeCode(code,email)){
            response.getWriter().write("邮箱或者身份码错误、或者身份码已被激活！");
        }else{
            response.getWriter().write("通过验证！");
        }
    }
}
