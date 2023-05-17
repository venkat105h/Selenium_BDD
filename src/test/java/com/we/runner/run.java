package com.we.runner;
import io.cucumber.testng.*;
import org.testng.annotations.DataProvider;

@CucumberOptions(plugin = { "pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        features = "src/main/resources/",
        glue = {"com/we/stepdefinitions","com.we.base"},
        tags= "@Regression1"
)
public class run extends AbstractTestNGCucumberTests {
    @Override
    @DataProvider(parallel = true)
    public Object[][] scenarios() {
        return super.scenarios();
    }
}
