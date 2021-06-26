package com.bookstore.utils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

public class HttpUtil {
    private String value;

    public HttpUtil() {
    }

    public HttpUtil(String value) {
        this.value = value;
    }

    public <T> T toModel(Class<T> tClass){
        try {
            //return new ObjectMapper().readValue(value, tClass);
            ObjectMapper mapper = new ObjectMapper();

            JsonNode node = mapper.readTree(value);

            JsonNode name = node.at("/HANOI/name");

            JsonNode cities = node.at("/HANOI/cities");

            while (node.fields().hasNext()){
                Map.Entry<String, JsonNode> entry = node.fields().next();
                System.out.printf(entry.getKey()+":"+entry.getValue());
            }

        }catch (IOException e){
            e.printStackTrace();
        }

        return null;
    }

    public static HttpUtil of(BufferedReader reader){
        StringBuilder json = new StringBuilder();

        String line;

        try {
            while ((line = reader.readLine()) != null){
                json.append(line);
            }
        }catch (IOException e){
            e.printStackTrace();
        }
        return new HttpUtil(json.toString());
    }
}
