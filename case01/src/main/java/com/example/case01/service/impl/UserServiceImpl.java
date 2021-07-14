package com.example.case01.service.impl;


import com.example.case01.dao.UserDao;
import com.example.case01.dao.impl.UserDaoImpl;
import com.example.case01.domain.User;
import com.example.case01.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao dao = new UserDaoImpl();

    @Override
    public List<User> findAll() {
        return dao.findAll();
    }
}
