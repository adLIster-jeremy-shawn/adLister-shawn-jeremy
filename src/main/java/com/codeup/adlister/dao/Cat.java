package com.codeup.adlister.dao;

import java.util.ArrayList;
import java.util.List;

public interface Cat {
    ArrayList<Cat> all();
    // insert a new ad and return the new ad's id
    Long insert(Cat cats);
}