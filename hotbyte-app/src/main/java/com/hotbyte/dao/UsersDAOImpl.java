package com.hotbyte.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hotbyte.entity.Users;
import com.hotbyte.util.DBUtil;

public class UsersDAOImpl implements UsersDAO {

    @Override
    public boolean insertUser(Users user) {
        String sql = "INSERT INTO Users (name, gender, email, password, contact_number, address, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getName());
            ps.setString(2, user.getGender());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getContactNumber());
            ps.setString(6, user.getAddress());
            ps.setString(7, user.getCreatedAt());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Insert User Error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public Users getUserById(int userId) {
        String sql = "SELECT * FROM Users WHERE user_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return extractUser(rs);
            }
        } catch (SQLException e) {
            System.out.println("Get User Error: " + e.getMessage());
        }
        return null;
    }

    @Override
    public List<Users> getAllUsers() {
        List<Users> list = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Connection conn = DBUtil.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                list.add(extractUser(rs));
            }
        } catch (SQLException e) {
            System.out.println("List Users Error: " + e.getMessage());
        }
        return list;
    }

    @Override
    public boolean updateUser(Users user) {
        String sql = "UPDATE Users SET name = ?, gender = ?, email = ?, password = ?, contact_number = ?, address = ?, created_at = ? WHERE user_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getName());
            ps.setString(2, user.getGender());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getContactNumber());
            ps.setString(6, user.getAddress());
            ps.setString(7, user.getCreatedAt());
            ps.setInt(8, user.getUserId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Update User Error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean deleteUser(int userId) {
        String sql = "DELETE FROM Users WHERE user_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Delete User Error: " + e.getMessage());
            return false;
        }
    }

    private Users extractUser(ResultSet rs) throws SQLException {
        return new Users(
                rs.getInt("user_id"),
                rs.getString("name"),
                rs.getString("gender"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("contact_number"),
                rs.getString("address"),
                rs.getString("created_at")
        );
    }


}
