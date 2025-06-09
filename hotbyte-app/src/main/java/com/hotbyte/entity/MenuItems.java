package com.hotbyte.entity;

public class MenuItems {
     private int itemId;
    private int restaurantId;
    private String name;
    private String description;
    private int categoryId;
    private double price;
    private String availabilityTime;
    private boolean isAvailable;
    private String dietaryInfo;
    private String tasteInfo;
    private int calories;
    private float fats;
    private float proteins;
    private float carbohydrates;
    private String imageUrl;

    public MenuItems() {}

    public MenuItems(int itemId, int restaurantId, String name, String description, int categoryId, double price, String availabilityTime, boolean isAvailable, String dietaryInfo, String tasteInfo, int calories, float fats, float proteins, float carbohydrates, String imageUrl) {
        this.itemId = itemId;
        this.restaurantId = restaurantId;
        this.name = name;
        this.description = description;
        this.categoryId = categoryId;
        this.price = price;
        this.availabilityTime = availabilityTime;
        this.isAvailable = isAvailable;
        this.dietaryInfo = dietaryInfo;
        this.tasteInfo = tasteInfo;
        this.calories = calories;
        this.fats = fats;
        this.proteins = proteins;
        this.carbohydrates = carbohydrates;
        this.imageUrl = imageUrl;
    }

    public int getItemId() { return itemId; }
    public void setItemId(int itemId) { this.itemId = itemId; }

    public int getRestaurantId() { return restaurantId; }
    public void setRestaurantId(int restaurantId) { this.restaurantId = restaurantId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getCategoryId() { return categoryId; }
    public void setCategoryId(int categoryId) { this.categoryId = categoryId; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getAvailabilityTime() { return availabilityTime; }
    public void setAvailabilityTime(String availabilityTime) { this.availabilityTime = availabilityTime; }

    public boolean isIsAvailable() { return isAvailable; }
    public void setIsAvailable(boolean isAvailable) { this.isAvailable = isAvailable; }

    public String getDietaryInfo() { return dietaryInfo; }
    public void setDietaryInfo(String dietaryInfo) { this.dietaryInfo = dietaryInfo; }

    public String getTasteInfo() { return tasteInfo; }
    public void setTasteInfo(String tasteInfo) { this.tasteInfo = tasteInfo; }

    public int getCalories() { return calories; }
    public void setCalories(int calories) { this.calories = calories; }

    public float getFats() { return fats; }
    public void setFats(float fats) { this.fats = fats; }

    public float getProteins() { return proteins; }
    public void setProteins(float proteins) { this.proteins = proteins; }

    public float getCarbohydrates() { return carbohydrates; }
    public void setCarbohydrates(float carbohydrates) { this.carbohydrates = carbohydrates; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }



}
