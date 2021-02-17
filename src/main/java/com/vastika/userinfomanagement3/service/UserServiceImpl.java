package com.vastika.userinfomanagement3.service;

import com.vastika.userinfomanagement3.model.User;
import com.vastika.userinfomanagement3.repository.UserRepository;
import com.vastika.userinfomanagement3.util.PasswordUtil;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService
{
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository)
    {
        this.userRepository = userRepository;
    }

    @Override
    public void saveUser(User user) {
        String password= PasswordUtil.encodePassword(user.getPassword());
        user.setPassword(password);
        userRepository.save(user);
    }

    @Override
    public void updateUser(User user) {
        String password= PasswordUtil.encodePassword(user.getPassword());
        user.setPassword(password);
        userRepository.save(user);
    }

    @Override
    public void deleteUser(int id) {
        userRepository.deleteById(id);
    }

    @Override
    public User getUser(int id) {
        return userRepository.findById(id).get();
    }

    @Override
    public List<User> getAllUser() {
        return (List<User>)userRepository.findAll();
    }
}
