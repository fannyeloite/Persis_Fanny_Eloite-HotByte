package com.hotbyte.entity;

public class Admins {
    private int adminId;
    private String email;
    private String password;

    public Admins() {}

    public Admins(int adminId, String email, String password) {
        this.adminId = adminId;
        this.email = email;
        this.password = password;
    }

    public int getAdminId() { return adminId; }
    public void setAdminId(int adminId) { this.adminId = adminId; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }



}
