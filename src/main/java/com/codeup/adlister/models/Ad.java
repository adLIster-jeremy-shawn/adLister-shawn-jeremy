package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long adUser_id;
    private String title;
    private String description;

    public Ad(long id, long adUser_id, String title, String description) {
        this.id = id;
        this.adUser_id = adUser_id;
        this.title = title;
        this.description = description;
    }

    public Ad(long adUser_id, String title, String description) {
        this.adUser_id = adUser_id;
        this.title = title;
        this.description = description;
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
}
