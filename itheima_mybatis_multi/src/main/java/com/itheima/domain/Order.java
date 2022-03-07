package com.itheima.domain;

import lombok.Data;

import java.util.Date;

@Data
public class Order {
    private int id;
    private Date ordertime;
    private double total;
    private User user;
}
