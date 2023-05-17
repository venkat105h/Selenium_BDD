package com.we.pages;

import com.we.base.BasePage;
import org.openqa.selenium.By;
import java.io.IOException;

public class LoginPage extends BasePage {

    By username=By.id("email");
    By password=By.id("password");
    By loginButton=By.xpath("//button[text()='Sign in']");

    public LoginPage() throws IOException {
    }
    public void enterUserName(String value) throws IOException {
        enterText(username,value);
    }
    public void enterPassword(String value) throws IOException {
        enterText(password,value);
    }
    public void clickLoginBtn() throws IOException {
        clickElement(loginButton);
    }
}
