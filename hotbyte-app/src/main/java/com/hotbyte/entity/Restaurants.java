package com.hotbyte.entity;

public class Restaurants {
    private int restaurantId;
    private String name;
    private String location;
    private String contactNumber;
    private String createdAt;

    public Restaurants() {}

    public Restaurants(int restaurantId, String name, String location, String contactNumber, String createdAt) {
        this.restaurantId = restaurantId;
        this.name = name;
        this.location = location;
        this.contactNumber = contactNumber;
        this.createdAt = createdAt;
    }

    public int getRestaurantId() { return restaurantId; }
    public void setRestaurantId(int restaurantId) { this.restaurantId = restaurantId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public String getContactNumber() { return contactNumber; }
    public void setContactNumber(String contactNumber) { this.contactNumber = contactNumber; }

    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }

}
