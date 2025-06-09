package com.hotbyte;
import com.hotbyte.dao.UsersDAO;
import com.hotbyte.dao.UsersDAOImpl;
import com.hotbyte.entity.Users;


public class Main {
    public static void main(String[] args) {
        // Create a user object
        Users user = new Users(
            0,                          // userId (auto-increment, can be 0)
            "Prasu Kumar",             // name
            "Male",                    // gender
            "prasu@example.com",       // email
            "securePassword",          // password
            "9876543210",              // contact number
            "Chennai, India",          // address
            "2025-06-09 12:00:00"      // created_at
        );

        // Insert the user
        UsersDAO dao = new UsersDAOImpl();
        boolean success = dao.insertUser(user);

        if (success) {
            System.out.println("User inserted successfully!");
        } else {
            System.out.println("Failed to insert user.");
        }
    }
    }
