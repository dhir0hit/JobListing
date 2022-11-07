package com.example.joblisting.dao;

import com.example.joblisting.Model.User;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UserDao {
    int insertUser(UUID id, User user);

    default UUID insertUser(User user) {
        UUID id = UUID.randomUUID();
        insertUser(id, user);
        return id;
    }

    List<User> selectAllUser();

    Optional<User> selectUserById(UUID id);

    int deleteUserById(UUID id);
    int updateUserById(UUID id, User user);

    User checkLogin(User inputUser);
}
