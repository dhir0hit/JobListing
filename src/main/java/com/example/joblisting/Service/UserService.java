package com.example.joblisting.Service;

import com.example.joblisting.Model.User;
import com.example.joblisting.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class UserService {
    private final UserDao userDao;

    @Autowired
    public UserService(@Qualifier("newDao") UserDao userDao) {
        this.userDao = userDao;
    }

    public UUID addUser(User user) {
        return userDao.insertUser(user);
    }

    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }

    public Optional<User> getUserById(UUID id) {
        return userDao.selectUserById(id);
    }

    public int deleteUser(UUID id) {
        return userDao.deleteUserById(id);
    }

    public int updateUser(UUID id, User newUser) {
        return userDao.updateUserById(id,newUser);
    }

    public UUID checkLogin(User inputUser) {
        User user = userDao.checkLogin(inputUser);
        return user == null ? null : user.getId();
    }
}
