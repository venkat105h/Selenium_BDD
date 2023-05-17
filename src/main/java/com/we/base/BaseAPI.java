package com.we.base;

import io.restassured.RestAssured;
import io.restassured.response.Response;

public class BaseAPI {

    public  static Response POST(String url, String reqBody){
        return RestAssured.given()
                .relaxedHTTPSValidation()
                .header("Content-Type","application/json")
                .header("Authorization","APIKey 70d66382-6142-48e0-bd35-f970adb74843")
                .body(reqBody)
                .post(url)
                .then()
                .extract().response();
    }
    

}
