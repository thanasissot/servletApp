package com.thanasis.servletwebapp.Model;

public class ListItem {

    String name;
    String description;

    public ListItem(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

}
