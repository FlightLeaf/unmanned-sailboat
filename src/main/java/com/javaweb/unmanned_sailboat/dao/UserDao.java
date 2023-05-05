package com.javaweb.unmanned_sailboat.dao;
import com.javaweb.unmanned_sailboat.entity.User;
import com.javaweb.unmanned_sailboat.entity.User_update;

public interface UserDao {

    public boolean login(String email,String password);

    public boolean register(User user,String code);

    public boolean deleteUser(String email);

    public boolean updateUser(User_update user_update,String email);

    public boolean updateUserPassword(String email,String password_old,String password_new);

    public boolean IDJudgment(String email);

    public String getQuestion(String email);

    public boolean updateForgetPassword(String email,String A,String password);

    public boolean updateCode(String email,String password,String code);

    public boolean updateRelation(String email,String password,String relation);

    public int typeJudgment(String email);

    public String getUserName(String email);
}
