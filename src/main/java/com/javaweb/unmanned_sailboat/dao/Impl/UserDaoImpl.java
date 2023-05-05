package com.javaweb.unmanned_sailboat.dao.Impl;

import com.javaweb.unmanned_sailboat.dao.UserDao;
import com.javaweb.unmanned_sailboat.entity.User;
import com.javaweb.unmanned_sailboat.entity.User_update;
import com.javaweb.unmanned_sailboat.util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    //注册方法
    @Override
    public boolean register(User user, String code) {
        boolean flag = false;
        DBconn.init();
        int i = DBconn.addUpdDel("insert into user(name,email,password,tel,type,relation,code,Q,A)" +
        "values('"+user.getName()+"','"+user.getEmail()+"','"+user.getPassword()+"','"+user.getTel()+"','"+user.getType()+"','"+user.getRelation()+"','"+user.getCode()+"','"+user.getQ()+"','"+user.getA()+"')");
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;
    }

    //登录方法
    @Override
    public boolean login(String email, String password) {
        boolean flag = false;
        try{
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from user where email='"+email+"' and password='"+password+"'");
            while (rs.next()){
                if(rs.getString("email").equals(email)&&rs.getString("password").equals(password)){
                    flag = true;
                }
            }
            DBconn.closeConn();
        } catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    //删除用户
    @Override
    public boolean deleteUser(String email) {
        boolean flag = false;
        DBconn.init();
        String sql = "delete from user where email="+email;
        int i = DBconn.addUpdDel(sql);
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;
    }

    //重复ID判断
    @Override
    public boolean IDJudgment(String email) {
        boolean flag = true;
        DBconn.init();
        ResultSet rs = DBconn.selectSql("select * from user where email = '"+email+"'");
        try{
            while (rs.next()){
                if(rs.getString("email").equals(email)){
                    flag = false;
                }
            }
            rs.close();
            DBconn.closeConn();
        } catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    //更新用户部分信息,注意可以使用多表联合更新
    @Override
    public boolean updateUser(User_update user_update,String email) {
        boolean flag = false;
        DBconn.init();
        String sql_user =
            "update user set name = '"+user_update.getName()
                    +"',email = '" +user_update.getEmail()
                    +"',tel = '"+user_update.getTel()+"' where email = "+email;
        String sql_code =
            "update code set email = "+user_update.getEmail()+" where email = "+email;
        String sql_relation =
            "update relation set email = "+user_update.getEmail()+" where email = "+email;
        int i = DBconn.addUpdDel(sql_user);
        int j = DBconn.addUpdDel(sql_code);
        int k = DBconn.addUpdDel(sql_relation);
        if(i>0&&j>0&&k>0){
            flag =true;
        }
        return flag;
    }

    /*
    * 用户修改密码
    * UPDATE student SET
    * age=18
    * WHERE name='赵'
    * */
    @Override
    public boolean updateUserPassword(String email,String password_old, String password_new) {
        boolean flag = false;
        UserDao userDao = new UserDaoImpl();
        if(userDao.login(email,password_old)){
            DBconn.init();
            String sql = "update user set password = "+password_new+"where email = "+email;
            int i = DBconn.addUpdDel(sql);
            if(i>0){
                flag = true;
            }
        }
        return flag;
    }

    //忘记密码操作
    @Override
    public boolean updateForgetPassword(String email, String A, String password) {
        boolean flag = false;
        DBconn.init();
        String sql = "update user set password = "+password+" where email='"+email+"' and A='"+A+"'";
        int i = DBconn.addUpdDel(sql);
        if(i>0){
            flag =true;
        }
        return flag;
    }

    //获取密保问题
    @Override
    public String getQuestion(String email) {
        String Q = null;
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from user");
            while (rs.next()){
                if(rs.getString("email").equals(email)){
                    System.out.println(rs.getString("Q"));
                    Q = rs.getString("Q");
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return Q;
    }

    //修改注册码
    @Override
    public boolean updateCode(String email, String password, String code) {
        boolean flag = false;

        return flag;
    }

    //修改所属关系
    @Override
    public boolean updateRelation(String email, String password, String relation) {
        boolean flag = false;
        return flag;
    }

    //身份类型判断
    @Override
    public int typeJudgment(String email) {
        int flag = 0;
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from user");
            while (rs.next()){
                if(rs.getString("email").equals(email)){
                    flag = Integer.parseInt(rs.getString("type"));
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public String getUserName(String email) {
        String name = null;
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from user");
            while (rs.next()){
                if(rs.getString("email").equals(email)){
                    System.out.println(rs.getString("name"));
                    name = rs.getString("name");
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return name;
    }
}
