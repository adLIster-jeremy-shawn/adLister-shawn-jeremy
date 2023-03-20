package com.codeup.adlister.models;

import com.codeup.adlister.dao.Cat;

import java.util.ArrayList;

public class Ad {
    private long id;
    private long adUser_id;
    private String title;

    private String description;
    private ArrayList<Cat> cats;

    public Ad(long id, long adUser_id, String title, String description, ArrayList cats) {
        this.id = id;
        this.adUser_id = adUser_id;
        this.title = title;
        this.description = description;
        this.cats = cats;
    }

    public Ad(long adUser_id, String title, String description, ArrayList cats) {
        this.adUser_id = adUser_id;
        this.title = title;
        this.description = description;
        this.cats = cats;
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

    public ArrayList getCats() {
        return cats;
    }

    public void setCats(ArrayList cats) {
        this.cats = cats;
    }
}
