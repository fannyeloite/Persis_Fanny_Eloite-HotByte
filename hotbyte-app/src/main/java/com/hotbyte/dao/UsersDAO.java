package com.hotbyte.dao;

import java.util.List;

import com.hotbyte.entity.Users;



public interface UsersDAO {
    boolean insertUser(Users user);
    Users getUserById(int userId);
    List<Users> getAllUsers();
    boolean updateUser(Users user);
    boolean deleteUser(int userId);


}
