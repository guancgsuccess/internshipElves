package com.internshipElves.entity;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;

public class GetplaceByIp {
    private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
        }
        return sb.toString();
    }

    public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
        InputStream is = new URL(url).openStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            Boolean b=Boolean.getBoolean(jsonText);
            JSONObject json = new JSONObject(b);
            return json;
        } finally {
            is.close();
            // System.out.println("同时 从这里也能看出 即便return了，仍然会执行finally的！");
        }
    }

    public static void main(String[] args) throws IOException, JSONException {
        //这里调用百度的ip定位api服务 详见 http://api.map.baidu.com/lbsapi/cloud/ip-location-api.htm
        JSONObject json = readJsonFromUrl("http://api.map.baidu.com/location/ip?ak=ngOGtvTROne8FbGQbcIYQm4Rs8tUpw8B&ip=0.0.0.0/0 ");
        System.out.println(json.toString());
        System.out.println(((JSONObject) json.get("content")).get("address"));
    }
}
