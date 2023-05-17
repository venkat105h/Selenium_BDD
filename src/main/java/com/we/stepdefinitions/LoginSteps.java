package com.we.stepdefinitions;

import com.we.base.BasePage;
import com.we.pages.LoginPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.annotations.Listeners;

import java.io.IOException;



public class LoginSteps  extends BasePage {

    public LoginSteps() throws IOException {
        super();
    }
    LoginPage loginpage=new LoginPage();
    @When("User enters Username")
    public void userEntersUsername() throws IOException {
        loginpage.enterUserName(config.username());
    }
    @And("User enters Password")
    public void userEntersPassword() throws IOException {
        loginpage.enterPassword(config.password());
    }
    @And("User clicks on Login button")
    public void userClicksOnLoginButton() throws IOException {
        loginpage.clickLoginBtn();
    }
}
