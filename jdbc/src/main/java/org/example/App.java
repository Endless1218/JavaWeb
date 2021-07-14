package org.example;

import org.junit.Test;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


public class App {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    public static void main(String[] args) {
    }


    @Test
    public void test01() {
        String sql = "INSERT INTO user VALUES (NULL, '唐三', '男', 20, '斗罗大陆', '999999999', NULL)";
        template.update(sql);
    }

    @Test
    public void test02() {
        String sql = "SELECT * FROM user WHERE id = 7";
        Map<String, Object> map = template.queryForMap(sql);
        System.out.println("map = " + map); // map = {id=7, name=唐三, gender=男, age=20, address=斗罗大陆, qq=999999999, email=null}
    }

    @Test
    public void test03() {
        String sql = "SELECT * FROM user";
        List<Map<String, Object>> list = template.queryForList(sql);
        System.out.println("list = " + list); // list = [{id=1, name=万剑一, gender=男, age=60, address=青云山祖师祠堂, qq=null, email=null}, {id=2, name=陆雪琪, gender=女, age=19, address=青云山小竹峰, qq=123456, email=123456@qq.com}, {id=3, name=张无忌, gender=男, age=22, address=华山, qq=222222, email=222222@qq.com}, {id=4, name=赵敏, gender=女, age=21, address=蒙古, qq=111111, email=111111@qq.com}, {id=5, name=徐凤年, gender=男, age=20, address=北凉, qq=7777777, email=7777777@gmail.com}, {id=6, name=李淳罡, gender=男, age=33, address=北凉, qq=null, email=234555555@yahoo.com}, {id=7, name=唐三, gender=男, age=20, address=斗罗大陆, qq=999999999, email=null}]
    }

    @Test
    public void test04() {
        String sql = "SELECT * FROM user WHERE id = 7";
        User user = template.queryForObject(sql, new RowMapper<User>() {
            @Override
            public User mapRow(ResultSet resultSet, int i) throws SQLException {
                User user = new User();
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String gender = resultSet.getString("gender");
                int age = resultSet.getInt("age");
                String address = resultSet.getString("address");
                String qq = resultSet.getString("qq");
                String email = resultSet.getString("email");

                user.setId(id);
                user.setName(name);
                user.setGender(gender);
                user.setAge(age);
                user.setAddress(address);
                user.setQq(qq);
                user.setEmail(email);
                return user;
            }
        });
        System.out.println("user = " + user); // user = User{id=7, name='唐三', gender='男', age=20, address='斗罗大陆', qq='999999999', email='null'}
    }

    @Test
    public void test05() {
        String sql = "SELECT * FROM user WHERE id = 7";
        User user = template.queryForObject(sql, new BeanPropertyRowMapper<>(User.class));
        System.out.println("user = " + user); // user = User{id=7, name='唐三', gender='男', age=20, address='斗罗大陆', qq='999999999', email='null'}
    }

    @Test
    public void test06() {
        String sql = "SELECT * FROM user";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<>(User.class));
        System.out.println("users = " + users); // users = [User{id=1, name='万剑一', gender='男', age=60, address='青云山祖师祠堂', qq='null', email='null'}, User{id=2, name='陆雪琪', gender='女', age=19, address='青云山小竹峰', qq='123456', email='123456@qq.com'}, User{id=3, name='张无忌', gender='男', age=22, address='华山', qq='222222', email='222222@qq.com'}, User{id=4, name='赵敏', gender='女', age=21, address='蒙古', qq='111111', email='111111@qq.com'}, User{id=5, name='徐凤年', gender='男', age=20, address='北凉', qq='7777777', email='7777777@gmail.com'}, User{id=6, name='李淳罡', gender='男', age=33, address='北凉', qq='null', email='234555555@yahoo.com'}, User{id=7, name='唐三', gender='男', age=20, address='斗罗大陆', qq='999999999', email='null'}]
    }
}
