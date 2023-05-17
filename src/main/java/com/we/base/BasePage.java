package com.we.base;
import java.io.IOException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import com.we.constants.Constants;
import com.we.envconfig.FrameworkConfig;
import org.aeonbits.owner.ConfigFactory;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;


public class BasePage {
    public static FrameworkConfig config = null;
    WebDriverWait wait=null;
    public  JavascriptExecutor javascriptExecutor=(JavascriptExecutor) getDriver();
    public  Actions action=new Actions(getDriver());

    public BasePage() throws IOException {
        config=ConfigFactory.create(FrameworkConfig.class);
        this.initialiseWaits();
    }
    public static WebDriver getDriver() throws IOException {
        return WebDriverInstance.getDriver();
    }
    public void initialiseWaits() throws IOException {
        wait = new WebDriverWait(getDriver(),Duration.ofSeconds(Constants.XXLARGE));
        wait.withTimeout(Duration.ofSeconds(Constants.XXLARGE));
        wait.pollingEvery(Duration.ofSeconds(Constants.MEDIUM));
        wait.ignoring(StaleElementReferenceException.class);

    }
    public String getUrl() {
        return config.url();
    }
    public  void enterText(By element,String value) throws IOException{
        try {
            WebElement ele=wait.until(ExpectedConditions.visibilityOfElementLocated(element));
            ele.sendKeys(value);
            Logs.info("Value entered into the element");
        }catch(Exception e){
            Logs.error("Unable to enter value");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }

    }
    public  void enterTextByClearing(By element,String value) throws IOException{
        try {
            final WebElement ele=wait.until(ExpectedConditions.visibilityOfElementLocated(element));
            ele.clear();
            ele.sendKeys(value);
            Logs.info("Value entered into the element");
        }catch(Exception e){
            Logs.error("Unable to enter value");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }

    }
    public  void clickElement(By element) throws IOException {
        try{
            wait.until(ExpectedConditions.visibilityOfElementLocated(element)).click();
            Logs.info("Able to click");
        }catch(Exception e){
            Logs.error("Unable to click");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
    }
    public  void waitForVisibilityOfElement(By element) throws IOException {
        try{
            WebElement elem = wait.until(ExpectedConditions.visibilityOfElementLocated(element));
        }
        catch(Exception e){
            Logs.error("Element is not visible");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }

    }
    public boolean isDisplayed(By element) {
        try {
            getDriver().findElement(element);
            return true;
        } catch (final NoSuchElementException e) {
            Logs.error("Element is not displayed");
            return false;
        } catch (IOException e) {
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
    }
    public  void  selectDropDown(By element) throws IOException {
        try{
            final WebElement ele=getDriver().findElement(element);
            javascriptExecutor.executeScript("$(arguments[0]).attr('selected','selected').trigger('change');",
                    ele);
        }catch(Exception e){
            Logs.error("Item not able to select");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }

    }
    public String getText(By element) {
        try {
            if (isDisplayed(element)) {
                WebElement ele = wait.until(ExpectedConditions.presenceOfElementLocated(element));
                return ele.getText();
            } else
                return null;
        }catch(Exception e){
            throw new RuntimeException("Element is not present in the dom"+element);
        }

    }
    protected String getAttributeValueByAttributeName(final By element, final String attributeName) {
        final WebElement ele = wait.until(ExpectedConditions.visibilityOfElementLocated(element));
        return ele.getAttribute(attributeName);
    }
    protected void clickByJS(final By element) {
        try{
            final WebElement ele = wait.until(ExpectedConditions.presenceOfElementLocated(element));
            javascriptExecutor.executeScript("arguments[0].click();", ele);
        }catch(Exception e){
            Logs.error("Unable to click through Java Script");
            throw new RuntimeException("Element is not present in the dom"+element);
        }
    }
    protected void waitForInVisibilityOfElement(final By element) {
        try{
            wait.until(ExpectedConditions.invisibilityOfElementLocated(element));
        }catch (Exception e){
            Logs.error("Element is still visible");
            throw new RuntimeException("Element is still visible in the dom"+element);
        }
    }
    protected Boolean isEnabled(final By element) {
        Boolean isEnabled = true;
        try {
            isEnabled = getDriver().findElement(element).isEnabled();
        } catch (final Exception e) {
            Logs.error("Element is not displayed ");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
        return isEnabled;
    }
    protected void moveAndClick(final By element) {
        try {
            final WebElement ele = getDriver().findElement(element);
            action.moveToElement(ele).click().build().perform();
        } catch (final Exception e) {
            Logs.error("Element is not displayed ");
        }
    }
    public void switchWindow() throws IOException {
        Set<String> knownHandles = getDriver().getWindowHandles();
        Iterator<String> windows = knownHandles.iterator();
        while (windows.hasNext()) {
            // If windows exits
            String nextWindow = windows.next();
            // Move to next window
            getDriver().switchTo().window(nextWindow);
        }
    }
    protected void acceptAlert() throws IOException {
        Alert alert = getDriver().switchTo().alert();
        alert.accept();
        Logs.info("Alert is accepted");
    }
    public void switchToFrame(final String frameId) throws IOException {
        getDriver().switchTo().frame(frameId);
    }
    public void switchOutOfFrame() throws IOException {
        getDriver().switchTo().defaultContent();
    }
    public void switchToParentWindow(){
        try {
            final ArrayList<String> windows = new ArrayList<String>(getDriver().getWindowHandles());
            getDriver().switchTo().window(windows.get(0));
        } catch (Exception e) {
            Logs.error("Unable to switch parent window");
        }
    }
    public boolean isClickable(final By element) {
        try{
            wait.until(ExpectedConditions.elementToBeClickable(element));
            return true;
        }catch (Exception e){
            Logs.error("Element is not clickable");

        }
        return false;
    }
    public  boolean VerifyTextPresentInWebPage(final String textToVerify) throws Exception {
        try {
            if (getDriver().getPageSource().contains(textToVerify))
                return true;
            else
                return false;
        } catch (final Exception exception) {
            throw new RuntimeException("Text is not Visible in the dom");
        }

    }
    public  void hardWait() throws InterruptedException {
        Thread.sleep(9000);
    }
    public  void assertEquals(String actual,String expected){
        try{
            Assert.assertEquals(actual,expected);
        }catch(AssertionError e){
            throw new RuntimeException("Actual :["+actual + "]  Expected :["+expected+ "] not matched");
        }
    }
    public  void assertTrue(boolean actual,boolean expected){
        try{
            Assert.assertEquals(actual,expected);
        }catch(AssertionError e){
            throw new RuntimeException("Actual :["+actual + "]  Expected :["+expected+ "] not matched");
        }
    }
    public  int getTRNumber(By ele, String cid){
        try {
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            for(int i=0;i<element.size();i++){
                if(element.get(i).getAttribute("href").contains(cid)){
                    Logs.info("Identified the client id");
                    return i+1;
                }
            }
        }catch(Exception e){
            Logs.error("Unable to enter value");
            throw new RuntimeException("Unable to identify the client");
        }
        return 0;
    }
    public  boolean getAttributeContains( By ele, String attr, String string){
        try {
            WebElement element=wait.until(ExpectedConditions.visibilityOfElementLocated(ele));
                if(element.getAttribute(attr).contains(string)){
                    Logs.info("String present in the attribute value");
                    return true;
                }
        }catch(Exception e){
            Logs.error("Unable to enter value");
            throw new RuntimeException("String not present in the attaribute value");
        }
        return false;
    }
    public   void mouseHover( By element) throws IOException
    {
        action.moveToElement(getDriver().findElement(element)).build().perform();
    }
    public  void mediumHardWait() throws InterruptedException
    {
        Thread.sleep(6000);
    }
    public  void clickEnterAndEnterKey(By element,String value){
        try{
            WebElement webElement = getDriver().findElement((element));
            action.click(webElement).perform();
            Logs.info("Able to click");
            mediumHardWait();
            action.sendKeys(webElement,value).perform();
            Logs.info("Able to Enter value");
            mediumHardWait();
            action.sendKeys(Keys.ENTER).perform();
            Logs.info("Able to press Enter key");
        }catch(Exception e){
            Logs.error("Unable to click and enter");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
    }
    public  void scrollToView(By element){
        try{
            WebElement webElement = getDriver().findElement((element));
            javascriptExecutor.executeScript("arguments[0].scrollIntoView(true);",webElement);
            Logs.info("Able to Scrool");
        }catch(Exception e){
            Logs.error("Unable to scroll");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
    }
    public  void sliderMoveRight(By element,int age){
        try{
            WebElement webelement=wait.until(ExpectedConditions.elementToBeClickable(element));
            webelement.click();
            //action.moveToElement(webelement).perform();
            //action.contextClick().perform();
            hardWait();
            for(int j=19;j<=age;j++){
                action.sendKeys(Keys.ARROW_RIGHT).perform();
            }
            Logs.info("Able to Move slider right");
        }catch(Exception e){
            Logs.error("Unable to move");
            throw new RuntimeException("Element is not Visible in the dom"+element);
        }
    }
    public  void smallHardWait() throws InterruptedException
    {
        Thread.sleep(3000);
    }
    public boolean getTagName(By ele){
        try {
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            for(int i=0;i<element.size();i++){
                if(element.get(i).getTagName().equals("a")){
                    Logs.info("Tag name is Link");
                    return true;
                }
            }
        }catch(Exception e){
            Logs.error("Unable to Locate");
            throw new RuntimeException("Tagname is not a link");
        }
        return false;
    }
    public int getTotalElements(By ele){
        try {
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            return element.size();
        }catch(Exception e){
            Logs.error("Unable to Locate");
            throw new RuntimeException("Zero elements present");
        }
    }
    public boolean topFiveRecordsValidation(By ele,String val){
        try {
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            if(element.size()>=5){
                for(int i=0;i<5;i++){
                    if(element.get(i).getText().toUpperCase().contains(val.toUpperCase())){
                        return true;
                    }
                }
            }
        }catch(Exception e){
            Logs.error("Unable to Locate records");
            throw new RuntimeException("Zero elements present");
        }
        return false;
    }
    public void navigationCheck(By ele){
        try {
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            for(int i=0;i<element.size();i++){
                if(!element.get(i).getAttribute("href").contains("undefined")) {
                    element.get(i).click();
                    hardWait();
                    switchWindow();
                    assertTrue(getDriver().getCurrentUrl().contains("researchDetails"), true);
                    getDriver().close();
                    switchToParentWindow();
                }
            }
        }catch(Exception e){
            Logs.error("Unable to Locate");
            throw new RuntimeException("Unable to navigate to Research Details");
        }
    }
    public boolean businessPhonesCheck(By ele,String value){
        try {
            boolean match=false;
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            for(int i=0;i<element.size();i++){
                if(!element.get(i).getText().contains(value)) {
                    match=true;
                    break;
                }
            }
            if(match){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            Logs.error("Unable to Locate");
            throw new RuntimeException("Unable to find Business Phone Numbers Details");
        }
    }
    public boolean businessNamesCheck(By ele,String value){
        try {
            boolean match=false;
            List<WebElement> element=wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(ele));
            for(int i=0;i<element.size();i++){
                if(!element.get(i).getText().toUpperCase().contains(value.toUpperCase())) {
                    match=true;
                    break;
                }
            }
            if(match){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            Logs.error("Unable to Locate");
            throw new RuntimeException("Unable to find Business Details");
        }
    }
}
