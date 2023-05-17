package com.we.base;
import java.io.IOException;
import java.net.URL;

import com.we.envconfig.FrameworkConfig;
import org.aeonbits.owner.ConfigFactory;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebDriverInstance {
    public static ThreadLocal<WebDriver> driver = new ThreadLocal<>();
    public static ThreadLocal<WebDriverWait> wait=new ThreadLocal<>();

    public static WebDriver getDriver() {
        if (driver.get() == null) {
            try {
                driver.set(createDriver());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return driver.get();
    }
    public static WebDriver createDriver() throws IOException {
        WebDriver driver = null;
        if (ConfigFactory.create(FrameworkConfig.class).browser().equals("chrome")) {
            driver = new ChromeDriver();
        } else if (ConfigFactory.create(FrameworkConfig.class).browser().equals("firefox")) {
            driver = new FirefoxDriver();
        } else if (ConfigFactory.create(FrameworkConfig.class).browser().equals("edge")){
            driver = new EdgeDriver();
        }else if (ConfigFactory.create(FrameworkConfig.class).browser().equals("remote")){
            ChromeOptions chromeOptions=new ChromeOptions();
            chromeOptions.addArguments("--disable-dev-shm-usage");
            chromeOptions.addArguments("--ignore-certificate-errors");
            driver = new RemoteWebDriver(new URL("http://localhost:4444/"),chromeOptions);
        }
        driver.manage().window().maximize();
        return driver;
    }
    public static void cleanupDriver() {
        driver.get().quit();
        driver.remove();
    }
}
