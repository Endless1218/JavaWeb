package com.example.case01.dao.impl;


import com.example.case01.dao.UserDao;
import com.example.case01.domain.User;
import com.example.case01.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<User> findAll() {
        String sql = "SELECT * FROM employee";
        return template.query(sql, new BeanPropertyRowMapper<>(User.class));
    }
}
