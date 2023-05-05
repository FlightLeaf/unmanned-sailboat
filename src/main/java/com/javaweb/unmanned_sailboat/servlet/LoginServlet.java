package com.javaweb.unmanned_sailboat.servlet;

import com.javaweb.unmanned_sailboat.dao.Impl.UserDaoImpl;
import com.javaweb.unmanned_sailboat.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");

        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int type = Integer.parseInt(request.getParameter("type"));

        UserDao user = new UserDaoImpl();
        int type_user = user.typeJudgment(email);

        UserDao userDao = new UserDaoImpl();
        if(userDao.login(email,password)){
            if(type_user == type){
                if(type == 1){
                    HttpSession session = request.getSession();
                    session.setAttribute("state_user","100");
                    session.setAttribute("user","欢迎用户："+userDao.getUserName(email));
                    request.getRequestDispatcher("用户主页.jsp").forward(request, response);
                }
                else if(type ==2){
                    HttpSession session = request.getSession();
                    session.setAttribute("state_admin","101");
                    session.setAttribute("admin","欢迎管理员："+userDao.getUserName(email));
                    request.getRequestDispatcher("管理员主页.jsp").forward(request, response);
                }
            }
            else {
                PrintWriter out = response.getWriter();
                out.println("<script>alert('登录身份错误!');history.go(-1)</script>");
            }
        }
        else {
            PrintWriter out = response.getWriter();
            out.println("<script>alert('邮箱或密码错误!');history.go(-1)</script>");
        }
    }
}
