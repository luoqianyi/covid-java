package com.luo.covid.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.luo.covid.entity.User;

public interface UserService extends IService<User> {
    public String login(User user);
    public String register(User user);
}
