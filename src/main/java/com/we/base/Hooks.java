package com.we.base;
import com.we.constants.Constants;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeAll;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import java.io.File;
import java.io.IOException;
import java.time.Duration;

public class Hooks extends BasePage {
    public Hooks() throws IOException {
        super();
    }

    @BeforeAll
    public static void cleaningReports() throws IOException {
        if(new File(System.getProperty("user.dir") + "/test-output").exists()){
            FileUtils.deleteDirectory(new File(System.getProperty("user.dir") + "/test-output"));
        }
    }

    @Before
    public void setup() throws IOException {
        getDriver().manage().deleteAllCookies();
        getDriver().get(getUrl());
        getDriver().manage().timeouts().pageLoadTimeout(Duration.ofSeconds(Constants.XXLARGE));
    }
    @After
    public void tearDown(Scenario scenario) throws IOException {
        if(scenario.isFailed()) {
            final byte[] screenshot = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
        }
        WebDriverInstance.cleanupDriver();
    }


}
