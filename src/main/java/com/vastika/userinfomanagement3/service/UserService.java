package com.vastika.userinfomanagement3.service;


import org.springframework.stereotype.Service;
import com.vastika.userinfomanagement3.model.User;
import java.util.List;

@Service
public interface UserService
{
    void saveUser(User user);
    void updateUser(User user);
    void deleteUser(int id);
    User getUser(int id);
    List<User> getAllUser();
}
