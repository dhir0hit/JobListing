package com.example.joblisting.dao;

import com.example.joblisting.Model.User;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/*TODO: create new file which connect to DB*/
@Repository("newDao")
public class UserDataAccessService implements UserDao {
    private static List<User> DB = new ArrayList<>();

    @Override
    public int insertUser(UUID id, User user) {
        DB.add(new User(
                id,
                user.getName(),
                user.getEmail(),
                user.getPassword(),
                user.getResumeFile()));
        return 1;
    }

    @Override
    public List<User> selectAllUser() {
        return DB;
    }

    @Override
    public Optional<User> selectUserById(UUID id) {
        return DB.stream()
                .filter(user -> user.getId().equals(id))
                .findFirst();
    }

    @Override
    public int deleteUserById(UUID id) {
        Optional<User> userOptional = selectUserById(id);
        if (userOptional.isEmpty()) {
            return 0;
        }
        DB.remove(userOptional.get());
        return 1;
    }

    @Override
    public int updateUserById(UUID id, User newUser) {
        return selectUserById(id)
                .map(user -> {
                    int indexOfUser = DB.indexOf(user);
                    if(indexOfUser >= 0) {
                        DB.set(indexOfUser, new User(
                                id,
                                newUser.getName(),
                                newUser.getEmail(),
                                newUser.getPassword(),
                                newUser.getResumeFile()));
                        return 1;
                    }
                    return 0;
                })
                .orElse(0);
    }

    public User checkLogin(User inputUser) {
        return DB.stream()
                .filter(user ->
                        user.getEmail().equals(inputUser.getEmail())
                        && user.getPassword().equals(inputUser.getPassword())
                )
                .findFirst()
                .orElse(null);
    }


}
