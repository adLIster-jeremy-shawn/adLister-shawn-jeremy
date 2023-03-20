package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;

public class CatDao implements Cat{

    private ArrayList<Cat> cats;

    public ArrayList<Cat> all() {
        if (cats == null) {
            cats = generateCats();
        }
        return cats;
    }

    @Override
    public Long insert(Cat cats) {
        return null;
    }

    private ArrayList<Cat> generateCats() {
        ArrayList<Cat> cats = new ArrayList<>();
        return cats;
    }
}
