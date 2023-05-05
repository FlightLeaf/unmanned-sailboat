package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.CodeDao;
import com.javaweb.unmanned_sailboat.dao.Impl.CodeDaoImpl;
import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;
import com.javaweb.unmanned_sailboat.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String tel = request.getParameter("tel");
        String type = request.getParameter("type");
        String relation = request.getParameter("relation");
        String Q = request.getParameter("Q");
        String A = request.getParameter("A");
        String code = request.getParameter("code");

        /*System.out.println(name);
        System.out.println(email);
        System.out.println(password);
        System.out.println(tel);
        System.out.println(type);
        System.out.println(relation);
        System.out.println(Q);
        System.out.println(A);*/

        User user = new User();
        user.setA(A);
        user.setCode(code);
        user.setEmail(email);
        user.setQ(Q);
        user.setPassword(password);
        user.setRelation(relation);
        user.setTel(tel);
        user.setType(type);
        user.setName(name);

        UserDao userDao = new UserDaoImpl();
        String QA = "1001";
        if(userDao.register(user, user.getCode())){
            HttpSession session = request.getSession();
            session.setAttribute("register",QA);
            request.getRequestDispatcher("主页.jsp").forward(request, response);
        }
        else {
            PrintWriter out = response.getWriter();
            out.println("<script>alert('注册失败!');history.go(-1)</script>");
        }

    }
}
