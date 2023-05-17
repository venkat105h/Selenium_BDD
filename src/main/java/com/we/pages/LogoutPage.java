package com.we.pages;

import com.we.base.BasePage;
import org.openqa.selenium.By;
import org.testng.Assert;

import java.io.IOException;

public class LogoutPage extends BasePage {
    By logoutUser=By.xpath("//*[@id='topBar']/div[2]/div[3]/button");
    By logoutBtn=By.xpath("//a[contains(text(),'Sign Out')]");
    By homePageSpinner=By.xpath(".//span[contains(text(),'System is taking time to process your request.')]");

    public LogoutPage() throws IOException {
    }

    public void clickLogoutUser() throws IOException {
        clickElement(logoutUser);
    }
    public void clickLogoutBtn() throws IOException {
        clickElement(logoutBtn);
    }
    public void logoutUserExistence() throws IOException {
        waitForVisibilityOfElement(logoutUser);
        Assert.assertTrue(isDisplayed(logoutUser));
    }

}
