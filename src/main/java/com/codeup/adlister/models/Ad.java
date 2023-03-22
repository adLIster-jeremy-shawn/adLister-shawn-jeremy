package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long adUser_id;
    private String title;
    private double price;
    private String description;
    private String location;

    public Ad(long id, long adUser_id, String title, double price, String description, String location) {
        this.id = id;
        this.adUser_id = adUser_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.location = location;
    }

    public Ad(long adUser_id, String title, double price, String description, String location) {
        this.adUser_id = adUser_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.location = location;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getadUser_id() {
        return adUser_id;
    }

    public void setadUser_id(long adUser_id) {
        this.adUser_id = adUser_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
