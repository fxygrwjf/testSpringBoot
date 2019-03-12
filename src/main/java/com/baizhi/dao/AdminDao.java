package com.baizhi.dao;

import com.baizhi.entity.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    List<Admin> queryAll();
    Admin login(@Param("username") String username, @Param("password") String password);

}
