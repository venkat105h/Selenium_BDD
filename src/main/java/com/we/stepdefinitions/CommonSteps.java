package com.we.stepdefinitions;

import com.we.base.BasePage;
import com.we.pages.LoginPage;
import com.we.pages.LogoutPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;

import java.io.IOException;

public class CommonSteps extends BasePage {
    public CommonSteps() throws IOException {
    }
    LoginPage loginpage=new LoginPage();
    LogoutPage logoutpage=new LogoutPage();
    @Given("User login into application to execute {string}")
    public void user_login_into_application_to_execute(String string) throws IOException {
        loginpage.enterUserName(config.username());
        loginpage.enterPassword(config.password());
        loginpage.clickLoginBtn();
    }

    @And("User logged out from the application")
    public void userLoggedOutFromTheApplication() throws IOException {
        logoutpage.clickLogoutUser();
        logoutpage.clickLogoutBtn();
    }

    @And("User verifies the login success")
    public void userVerifiesTheLoginSuccess() throws IOException, InterruptedException {
        logoutpage.logoutUserExistence();
    }

}
