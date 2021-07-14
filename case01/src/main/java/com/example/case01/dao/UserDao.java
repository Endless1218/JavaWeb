package com.example.case01.dao;


import com.example.case01.domain.User;

import java.util.List;

public interface UserDao {
    List<User> findAll();
}
