package com.we.stepdefinitions;

import com.we.base.BasePage;
import com.we.pages.LogoutPage;
import io.cucumber.java.en.And;
import java.io.IOException;

public class LogoutSteps extends BasePage {
    public LogoutSteps() throws IOException {
    }
    LogoutPage logoutpage=new LogoutPage();
    @And("User clicks on logged in user profile")
    public void userClicksOnLoggedInUserProfile() throws IOException, InterruptedException {
        Thread.sleep(3000);
        logoutpage.clickLogoutUser();
    }

    @And("User clicks on logout button")
    public void userClicksOnLogoutButton() throws IOException {
        logoutpage.clickLogoutBtn();
    }
}
