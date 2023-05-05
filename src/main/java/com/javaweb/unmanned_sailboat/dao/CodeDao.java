package com.javaweb.unmanned_sailboat.dao;

public interface CodeDao {

    public boolean addCode(String code,String email);

    public boolean judgeCode(String code,String email);

    public boolean deleteCode(String email);

}
