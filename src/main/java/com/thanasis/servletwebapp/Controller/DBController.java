package com.thanasis.servletwebapp.Controller;

import com.thanasis.servletwebapp.Model.ListItem;
import com.mongodb.*;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class DBController {
    static MongoClient mongoClient = null;

    static {
        try {
            mongoClient = new MongoClient();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }

    // database is always "list"
    // if not exists mongo will create it
    static final DB database = mongoClient.getDB("list");

    // collection is always "servletItems"
    // if not exists mongo will create it
    static final DBCollection collection = database.getCollection("servletItems");

    public DBController() throws UnknownHostException {
    }

    public static DBObject toDBObject(ListItem item){
        return new BasicDBObject("name", item.getName())
                .append("description", item.getDescription());
    }

    public static void collectionInsert(ListItem listItem){
       collection.insert(toDBObject(listItem));
    };

    public static ArrayList<DBObject> getAllItemsFromCollection(){
        ArrayList<DBObject> objList = new ArrayList<>();
        DBCursor cursor = collection.find();

        while(cursor.hasNext()){
            objList.add(cursor.next());
        }

        return objList;
    }

    public static void deleteItem(String name) {
        collection.remove(new BasicDBObject("name", name));
    }



}
