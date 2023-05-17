package com.we.pages;

import com.we.base.BasePage;
import org.openqa.selenium.By;

import java.io.IOException;

public class AdvancedSearchPage extends BasePage {

    By advancedSearchButton = By.xpath("//button[text()='Advanced Search']");
    By backToPersonSearchButton = By.xpath("//button[text()='Back to Person Search']");
    By hintTextStr = By.xpath("//button[text()='Back to Person Search']/parent::div/div//ul");
    By arrowBusinessInformation = By.xpath("//span[text()='Business Information']/parent::h5/button");
    By arrowDemographicInformation = By.xpath("//span[text()='Demographic Information']/parent::h5/button");
    By arrowSpouseInformation = By.xpath("//span[text()='Spouse Information']/parent::h5/button");
    By arrowGivingInformation = By.xpath("//span[text()='Giving Information']/parent::h5/button");
    By searchAndSaveProfileButton = By.xpath("//button[contains(text(),'Search and Save Profile')]");
    By clearButton = By.xpath("//button[contains(text(),'Clear')]");
    By cancelButton = By.xpath("//button[contains(text(),'Cancel')]");
    By firstNameLabel = By.xpath("//label[@for='advFirstName']");
    By middleNameLabel = By.xpath("//label[@for='advMiddleName']");
    By lastNameLabel = By.xpath("//label[@for='advLastName']");
    By addressLabel = By.xpath("//label[@for='advAddress']");
    By cityLabel = By.xpath("//label[@for='advCity']");
    By stateLabel = By.xpath("//label[@for='advState']");
    By zipLabel = By.xpath("//label[@for='advZip']");
    By businessLabel = By.xpath("//label[@for='business']");
    By businessPhoneLabel = By.xpath("//label[@for='businessPhone']");
    By business2Label = By.xpath("//label[@for='business2']");
    By businessPhone2Label = By.xpath("//label[@for='businessPhone2']");
    By business3Label = By.xpath("//label[@for='business3']");
    By businessPhone3Label = By.xpath("//label[@for='businessPhone3']");
    By dateOfBirthLabel = By.xpath("//label[@for='dateOfBirth']");
    By ageLabel = By.xpath("//label[@for='age']");
    By graduationDateLabel = By.xpath("//label[@for='graduationDate']");
    By clientIdLabel = By.xpath("//label[@for='clientId']");
    By spouseFirstNameLabel = By.xpath("//label[@for='firstName']");
    By spouseMiddleNameLabel = By.xpath("//label[@for='middleName']");
    By spouseLastNameLabel = By.xpath("//label[@for='lastName']");
    By totalGivingLabel = By.xpath("//label[@for='totalGiving']");
    By totalNumberOfGiftsLabel = By.xpath("//label[@for='totalNumberOfGifts']");
    By firstGiftAmountLabel = By.xpath("//label[@for='firstGiftAmount']");
    By firstGiftDateLabel = By.xpath("//label[@for='firstGiftDate']");
    By lastGiftAmountLabel = By.xpath("//label[@for='lastGiftAmount']");
    By lastGiftDateLabel = By.xpath("//label[@for='lastGiftDate']");
    By largestGiftAmountLabel = By.xpath("//label[@for='largestGiftAmount']");
    By largestGiftDateLabel = By.xpath("//label[@for='largestGiftDate']");
    By firstName = By.xpath("//input[@id='advFirstName']");
    By middleName = By.xpath("//input[@id='advMiddleName']");
    By lastName = By.xpath("//input[@id='advLastName']");
    By address = By.xpath("//input[@id='advAddress']");
    By city = By.xpath("//input[@id='advCity']");
    By state = By.xpath("//select[@id='state']");
    String stateStr="//option[@value='xxx']";
    By zip = By.xpath("//input[@id='advZip']");
    By business = By.xpath("//input[@id='business']");
    By businessPhone = By.xpath("//input[@id='businessPhone']");
    By  business2 = By.xpath("//input[@id='business2']");
    By businessPhone2 = By.xpath("//input[@id='businessPhone2']");
    By business3 = By.xpath("//input[@id='business3']");
    By businessPhone3 = By.xpath("//input[@id='businessPhone3']");
    By dateOfBirth = By.xpath("//input[@id='dateOfBirth']");
    By age = By.xpath("//input[@id='age']");
    By graduationDate  = By.xpath("//input[@id='graduationDate']");
    By clientId = By.xpath("//input[@id='clientId']");
    By spouseFirstName = By.xpath("//input[@id='firstName']");
    By  spouseMiddleName= By.xpath("//input[@id='middleName']");
    By spouseLastName = By.xpath("//input[@id='lastName']");
    By totalGiving = By.xpath("//input[@id='totalGiving']");
    By totalNumberOfGifts = By.xpath("//input[@id='totalNumberOfGifts']");
    By firstGiftAmount = By.xpath("//input[@id='firstGiftAmount']");
    By firstGiftDate = By.xpath("//input[@id='firstGiftDate']");
    By lastGiftAmount = By.xpath("//input[@id='lastGiftAmount']");
    By lastGiftDate = By.xpath("//input[@id='lastGiftDate']");
    By largestGiftAmount = By.xpath("//input[@id='largestGiftAmount']");
    By largestGiftDate = By.xpath("//input[@id='largestGiftDate']");
    By searchResultSuccessInfo=By.xpath("//button[text()='Back to Person Search']/following-sibling::div//div[contains(@class,'alert')]/div");
    By backToAdvanceSearchButton=By.xpath("//button[text()='Back to Advanced Search']");
    By viewProfileButton=By.xpath("//button[text()='View Profile']");
    By profileSummeryWealthOrP2GScore=By.xpath("(//*[local-name()='svg']//*[name()='text'])[2]");
    By profileSummeryWealthOrP2GDescription=By.xpath("(//*[local-name()='svg']//*[name()='text'])[3]");
    By profileSummeryP2GButton=By.xpath("(//button[text()='P2G'])[1]");
    By careerHistoryHeader=By.xpath("//h4[text()='Career History']");
    By careerHistoryExpandLink=By.xpath("//h4[text()='Career History']/parent::div/following-sibling::div//button");
    By careerHistoryAllBusinessNames=By.xpath("//h4[text()='Career History']/parent::div/following-sibling::div/div/table/tbody/tr/td[3]");
    By businessPhonesExpandLink=By.xpath("(//dt[text()='Business'])[1]/following-sibling::dd//button");
    By allBusinessPhones=By.xpath("(//dt[text()='Business'])[1]/following-sibling::dd//li/span");
    By ageInProfileSummery=By.xpath("//h4[text()='Contact and Demographics']/parent::div/following-sibling::div//dt[text()='Age']/following-sibling::dd");
    By dobInProfileSummery=By.xpath("//h4[text()='Contact and Demographics']/parent::div/following-sibling::div//dt[text()='Date of Birth']/following-sibling::dd");
    By houseHoldNameInProfileSummery=By.xpath("//h4[text()='Contact and Demographics']/parent::div/following-sibling::div//dt[text()='Household']/following-sibling::dd");
    By firstNameErrorMsg=By.xpath("//input[@id='advFirstName']/following-sibling::div");
    By lastNameErrorMsg = By.xpath("//input[@id='advLastName']/following-sibling::div");
    By addressErrorMsg = By.xpath("//input[@id='advAddress']/following-sibling::div");
    By cityErrorMsg = By.xpath("//input[@id='advCity']/following-sibling::div");
    By stateErrorMsg = By.xpath("//select[@id='state']/following-sibling::div");
    By zipErrorMsg = By.xpath("//input[@id='advZip']/parent::div/following-sibling::div");
    By givingInformationHeader=By.xpath("//h6[text()='Giving Information']");
    By totalGivingInSummeryPage=By.xpath("//label[text()='Total Giving']/following-sibling::div");
    By totalNumberOfGiftsInSummeryPage=By.xpath("//label[text()='Total Number of Gifts']/following-sibling::div");
    By lastGiftAmountInSummeryPage=By.xpath("//label[text()='Last Gift Amount']/following-sibling::div");
    By lastGiftDateInSummeryPage=By.xpath("//label[text()='Last Gift Date']/following-sibling::div");
    By largestGiftAmountInSummeryPage=By.xpath("//label[text()='Largest Gift Amount']/following-sibling::div");
    By largestGiftDateInSummeryPage=By.xpath("//label[text()='Largest Gift Date']/following-sibling::div");
    public AdvancedSearchPage() throws IOException {
    }
    public void clickAdvancedSearchButton() throws IOException {
        clickElement(advancedSearchButton);
    }
    public boolean clickAdvancedSearchButtonVisibilityCheck() throws IOException {
        return isDisplayed(advancedSearchButton);
    }
    public boolean checkBackToPersonSearchButton() {
        return isDisplayed(backToPersonSearchButton);
    }
    public boolean checkHintText()  {
        return isDisplayed(hintTextStr);
    }
    public boolean verifyTheMandatoryFields() {
        if (isDisplayed(firstNameLabel) && isDisplayed(middleNameLabel) && isDisplayed(lastNameLabel) && isDisplayed(addressLabel) && isDisplayed(cityLabel) && isDisplayed(stateLabel) && isDisplayed(zipLabel)) {
            if (getText(firstNameLabel).contains("*") &&
                    getText(lastNameLabel).contains("*") &&
                    getText(addressLabel).contains("*") &&
                    getText(cityLabel).contains("*") &&
                    getText(stateLabel).contains("*") &&
                    getText(zipLabel).contains("*")) {
                return true;
            }
        } else {
            return false;
            }
        return false;
    }
    public boolean verifyTheBusinessInformationSection()  {
        if (isDisplayed(businessLabel) && isDisplayed(businessPhoneLabel) && isDisplayed(business2Label) && isDisplayed(businessPhone2Label) && isDisplayed(business3Label) && isDisplayed(businessPhone3Label)) {
            return true;
        } else {
            return false;
        }
    }
    public boolean verifyTheDemographicInformationSection()  {
        if (isDisplayed(dateOfBirthLabel) && isDisplayed(ageLabel) && isDisplayed(graduationDateLabel) && isDisplayed(clientIdLabel)) {
            return true;
        } else {
            return false;
        }
    }
    public boolean verifyTheSpouseInformationSection()  {
        if (isDisplayed(spouseFirstNameLabel) && isDisplayed(spouseMiddleNameLabel) && isDisplayed(spouseLastNameLabel)) {
            return true;
        } else {
            return false;
        }
    }
    public boolean verifyTheGivingInformationSection() {
        if (isDisplayed(totalGivingLabel) && isDisplayed(totalNumberOfGiftsLabel) && isDisplayed(firstGiftAmountLabel) && isDisplayed(firstGiftDateLabel) && isDisplayed(lastGiftAmountLabel) && isDisplayed(lastGiftDateLabel) && isDisplayed(largestGiftAmountLabel) && isDisplayed(largestGiftDateLabel)) {
            return true;
        } else {
            return false;
        }
    }
    public boolean verifyTheSearchAndSaveProfileButton()  {
        return isDisplayed(searchAndSaveProfileButton);
    }
    public void clickSearchAndSaveProfileButton() throws IOException {
         clickElement(searchAndSaveProfileButton);
    }
    public boolean verifyTheClearButton()  {
        return isDisplayed(clearButton);
    }
    public void clickClearButton() throws IOException {
        clickElement(clearButton);
    }
    public boolean verifyTheCancelButton()  {
        return isDisplayed(cancelButton);
    }
    public void clickCancelButton() throws IOException {
        clickElement(cancelButton);
    }
    public void clickBackToPersonSearchButton() throws IOException {
        clickElement(backToPersonSearchButton);
    }
    public void enterFirstName(String value) throws IOException {
        enterText(firstName,value);
    }
    public String getFirstName() throws IOException {
        return getText(firstName);
    }
    public void enterMiddleName(String value) throws IOException {
        enterText(middleName,value);
    }
    public void enterLastName(String value) throws IOException {
        enterText(lastName,value);
    }
    public void enterAddress(String value) throws IOException {
        enterText(address,value);
    }
    public void enterCity(String value) throws IOException {
        enterText(city,value);
    }
    public void clickStateAndSelectStateOption(String value) throws IOException {
        clickElement(state);
        clickElement(By.xpath(stateStr.replace("xxx",value)));
    }
    public void enterZip(String value) throws IOException {
        enterText(zip,value);
    }
    public void enterBusiness(String value) throws IOException {
        enterText(business,value);
    }
    public void enterBusinessPhone(String value) throws IOException {
        enterText(businessPhone,value);
    }
    public void enterBusiness2(String value) throws IOException {
        enterText(business2,value);
    }
    public void enterBusinessPhone2(String value) throws IOException {
        enterText(businessPhone2,value);
    }
    public void enterBusiness3(String value) throws IOException {
        enterText(business3,value);
    }
    public void enterBusinessPhone3(String value) throws IOException {
        enterText(businessPhone3,value);
    }
    public void enterDateOfBirth(String value) throws IOException {
        enterText(dateOfBirth,value);
    }
    public void enterAge(String value) throws IOException {
        enterText(age,value);
    }
    public void enterGraduationDate(String value) throws IOException {
        enterText(graduationDate,value);
    }
    public void enterClientId(String value) throws IOException {
        enterText(clientId,value);
    }
    public void enterSpouseFirstName(String value) throws IOException {
        enterText(spouseFirstName,value);
    }
    public void enterSpouseMiddleName(String value) throws IOException {
        enterText(spouseMiddleName,value);
    }
    public void enterSpouseLastName(String value) throws IOException {
        enterText(spouseLastName,value);
    }
    public void enterTotalGiving(String value) throws IOException {
        enterText(totalGiving,value);
    }
    public void enterTotalNumberOfGifts(String value) throws IOException {
        enterText(totalNumberOfGifts,value);
    }
    public void enterFirstGiftAmount(String value) throws IOException {
        enterText(firstGiftAmount,value);
    }
    public void enterFirstGiftDate(String value) throws IOException {
        enterText(firstGiftDate,value);
    }
    public void enterLastGiftAmount(String value) throws IOException {
        enterText(lastGiftAmount,value);
    }
    public void enterLastGiftDate(String value) throws IOException {
        enterText(lastGiftDate,value);
    }
    public void enterLargestGiftAmount(String value) throws IOException {
        enterText(largestGiftAmount,value);
    }
    public void enterLargestGiftDate(String value) throws IOException {
        enterText(largestGiftDate,value);
    }
    public void clickArrowBusinessInformation() throws IOException {
        clickElement(arrowBusinessInformation);
    }
    public void clickArrowDemographicInformation() throws IOException {
        clickElement(arrowDemographicInformation);
    }
    public void clickArrowSpouseInformation() throws IOException {
        clickElement(arrowSpouseInformation);
    }
    public void clickArrowGivingInformation() throws IOException {
        clickElement(arrowGivingInformation);
    }
    public boolean verifySearchResultSuccessMessageDisplay() {
        return isDisplayed(searchResultSuccessInfo);
    }
    public boolean verifyBackToAdvanceSearchButtonDisplay() {
        return isDisplayed(backToAdvanceSearchButton);
    }
    public void clickBackToAdvanceSearchButton() throws IOException {
        clickElement(backToAdvanceSearchButton);
    }
    public boolean verifyViewProfileButtonDisplay() {
        return isDisplayed(viewProfileButton);
    }
    public void clickViewProfile() throws IOException {
        clickElement(viewProfileButton);
    }
    public String getWealthP2GScoreInProfileSummery(){
        return getText(profileSummeryWealthOrP2GScore);
    }
    public String getWealthP2GScoreDescriptionInProfileSummery(){
        return getText(profileSummeryWealthOrP2GDescription);
    }
    public void clickP2GInProfileSummery() throws IOException {
        clickElement(profileSummeryP2GButton);
    }
    public void clickBusinessPhonesExpandLink() throws IOException {
        if(isDisplayed(businessPhonesExpandLink))
            clickElement(businessPhonesExpandLink);
    }
    public boolean allBusinessPhonesExistenceValidation(String phoneno){
        return businessPhonesCheck(allBusinessPhones,phoneno);
    }
    public void clickCareerHistoriesExpandLink() throws IOException {
        scrollToView(careerHistoryHeader);
        if(isDisplayed(careerHistoryExpandLink))
            clickElement(careerHistoryExpandLink);
    }
    public boolean allBusinessNamesExistenceValidation(String businessname){
        return businessNamesCheck(careerHistoryAllBusinessNames,businessname);
    }
    public String getAgeFromSummeryText(){
        return getText(ageInProfileSummery);
    }
    public String getDOBFromSummeryText(){
        return getText(dobInProfileSummery);
    }
    public String getHouseHoldNameFromSummeryText(){
        return getText(houseHoldNameInProfileSummery);
    }
    public String getFirstNameErrorMsgText(){
        return getText(firstNameErrorMsg);
    }
    public String getLastNameErrorMsgText(){
        return getText(lastNameErrorMsg);
    }
    public String getAddressErrorMsgText(){
        return getText(addressErrorMsg);
    }
    public String getCityErrorMsgText(){
        return getText(cityErrorMsg);
    }
    public String getStateErrorMsgText(){
        return getText(stateErrorMsg);
    }
    public String getZipErrorMsgText(){
        return getText(zipErrorMsg);
    }
    public String getTotalGivingInSummeryPageText(){
        scrollToView(givingInformationHeader);
        return getText(totalGivingInSummeryPage);
    }
    public String getTotalNumberOfGiftsInSummeryPageText(){
        return getText(totalNumberOfGiftsInSummeryPage);
    }
    public String getLastGiftAmountInSummeryPageText(){
        return getText(lastGiftAmountInSummeryPage);
    }
    public String getLastGiftDateInSummeryPageText(){
        return getText(lastGiftDateInSummeryPage);
    }
    public String getLargestGiftAmountInSummeryPageText(){
        return getText(largestGiftAmountInSummeryPage);
    }
    public String getLargestGiftDateInSummeryPageText(){
        return getText(largestGiftDateInSummeryPage);
    }
}
