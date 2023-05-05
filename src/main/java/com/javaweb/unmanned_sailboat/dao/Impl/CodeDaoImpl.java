package com.javaweb.unmanned_sailboat.dao.Impl;

import com.javaweb.unmanned_sailboat.dao.CodeDao;
import com.javaweb.unmanned_sailboat.util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CodeDaoImpl implements CodeDao {

    @Override
    public boolean addCode(String code, String email) {
        boolean flag = false;

        return flag;
    }

    @Override
    public boolean deleteCode(String email) {
        boolean flag = false;

        return flag;
    }

    @Override
    public boolean judgeCode(String code, String email) {
        boolean flag = false;
        DBconn.init();
        ResultSet rs = DBconn.selectSql("select * from code where email = '"+email+"'");
        try {
            while (rs.next()){
                if(rs.getString("code").equals(code)){
                    flag = true;
                }
            }
            rs.close();
            DBconn.closeConn();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
}
