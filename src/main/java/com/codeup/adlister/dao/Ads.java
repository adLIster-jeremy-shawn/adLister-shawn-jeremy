package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    Ad findById(long id);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

}
