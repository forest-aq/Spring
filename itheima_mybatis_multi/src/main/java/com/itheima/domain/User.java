package com.itheima.domain;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class User {
    private int id;
    private String username;
    private int age;
    private String email;
    private int manager_id;
    private Date create_time;

    private List<Order> orderList;

    // 描述的是当前用户具备哪些角色
    private List<Role> roleList;
}
