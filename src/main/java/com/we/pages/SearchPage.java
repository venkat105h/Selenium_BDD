package com.we.pages;

import com.we.base.BasePage;
import org.openqa.selenium.By;

import java.io.IOException;

public class SearchPage extends BasePage {

    By searchTab= By.xpath("//div[@id='mainNav']//div[3]//a[1]");
    By firstName=By.xpath("//input[@id='search-term']");
    By distanceLink=By.xpath("//button[contains(text(),'Distance')]");
    By zipcodeInDistanceFilter=By.xpath("//input[contains(@placeholder,'zip')]");
    By searchButton=By.xpath("//button[@class='btn btn-primary mr-2']");
    By clearSearchButton=By.xpath("//button[text()='Clear Search']");
    By clientID=By.xpath("//table/tbody/tr/td[3]/div/div/a");
    By headerWPWSSearchResults=By.xpath("//th[normalize-space()='WS/P2G']");
    By headerFullNameSearchResults=By.xpath("//th[normalize-space()='Full Name']");
    By headerAddressesSearchResults=By.xpath("//th[normalize-space()='Addresses']");
    By headerSourceTypeSearchResults=By.xpath("//th[normalize-space()='Details']");
    By labelTextSpouse=By.xpath("//tbody/tr[1]/td[3]/div[3]/div[1]");
    String labelTextSpouseStr="//tbody/tr[xxx]/td[3]";
    By labelTextNetworth=By.xpath("//tbody/tr[1]/td[3]/div[4]/div[1]");
    String labelTextNetworthStr="//tbody/tr[xxx]/td[3]/div[4]/div[1]";
    By spouseName=By.xpath("//tbody/tr[1]//div[text()='Spouse']/following-sibling::a");
    String spouseNameStr="//tbody/tr[xxx]//div[text()='Spouse']/following-sibling::a";
    By saveButtonInResults=By.xpath("//tbody/tr[1]/td[3]//button");
    String saveButtonInResultsStr="//tbody/tr[xxx]/td[3]//button";
    By modifySearchButton=By.xpath("//button[normalize-space()='Modify Search']");
    By newSearchButton=By.xpath("//button[@class='btn btn-secondary']");
    By address=By.xpath("//tbody/tr[1]/td[4]//a[1]");
    String addressStr="//tbody/tr[xxx]/td[4]//a[1]";
    By sourceTypeRealEstate=By.xpath("//tbody/tr[1]/td[5]/a[6]/div");
    String sourceTypeRealEstateStr="//tbody/tr[xxx]/td[5]";
    By searchResult=By.xpath("//tbody/tr[1]//td[3]/div[1]//a");
    String searchResultStr="//tbody/tr[xxx]//td[3]/div[1]//a";
    By profileNameInSummaryPage=By.xpath("//h1/span[1]");
    By researchDetailsTab=By.xpath("//a[normalize-space()='Research Details']");
    By researchDetailsHeader=By.xpath("//div[@id='profileMainTabs']//ul/li[2]/a");
    By connectionsTab=By.xpath("//a[contains(text(),'Connections')]");
    By connectionsPageHeader=By.xpath("//div[@id='profileMainTabs']//ul/li[3]/a");
    By wealthScore=By.xpath("(//tbody/tr[1]//div[@class='react-reveal']//*[local-name()='svg']//*[name()='text'])[2]");
    String wealthScoreStr="(//tbody/tr[xxx]//div[@class='react-reveal']//*[local-name()='svg']//*[name()='text'])[2]";
    By wealthScoreDescription=By.xpath("(//tbody/tr[1]//div[@class='react-reveal']//*[local-name()='svg']//*[name()='text'])[3]");
    String wealthScoreDescriptionStr="(//tbody/tr[xxx]//div[@class='react-reveal']//*[local-name()='svg']//*[name()='text'])[3]";
    By stateTab=By.xpath("//button[text()='State']");
    By metroTab=By.xpath("//button[text()='Metro']");
    By stateMetroInput=By.xpath("//div[contains(@class,'we-dd__placeholder')]");
    By p2g = By.xpath("//tbody/tr[1]//div[@class='position-relative']/div/div[2]//button[text()='P2G']");
    String p2gStr="//tbody/tr[xxx]//div[@class='position-relative']/div/div[2]//button[text()='P2G']";
    By zipTab = By.xpath("//button[contains(text(),'Zip')]");
    By zipInput = By.xpath("//textarea[@id='zipcodes']");
    By moreOptions=By.xpath("//button[text()='More Options']");
    By liftSideAgeSlider=By.xpath("//div[@class='rc-slider']/div[4]");
    By businessName=By.id("bizname");
    By spouseFirstName=By.id("spouse_fname");
    By spouseMiddleName=By.id("spouse-mname");
    By spouseLastName=By.id("spouse_lname");
    By expandArrow=By.xpath("//div[@class='form-group']//button");
    By personFirstName=By.id("first-name");
    By personMiddleName=By.id("middle-name");
    By personLastName=By.id("last-name");
    By personSuffix=By.id("suffix");
    By cityTab=By.xpath("//button[text()='City']");
    By cityInput=By.name("city");
    String cityOptionStr="//input[@name='city']/following-sibling::ul/li[text()='xxx']";
    By cityOption=By.xpath("//input[@name='city']/following-sibling::ul/li[text()='DALLAS, TX']");
    By organizationLink=By.xpath("(//li[@class='nav-tab'])[2]");
    By addressLink=By.xpath("(//li[@class='nav-tab'])[3]");
    By pencilIcon=By.xpath("//h5[text()='Recent Searches']/following-sibling::button");
    By advancedSearch=By.xpath("//button[text()='Advanced Search']");
    By backToPersonSearchLink=By.xpath("//button[text()='Back to Person Search']");
    By recentSearchFirstRecord=By.xpath("//h5[text()='Recent Searches']/parent::div/following-sibling::div[1]//button");
    By dataSources=By.xpath("//tbody/tr[1]/td[5]/a");
    By recentSearchFirstRecordDeleteButton=By.xpath("//h5[text()='Recent Searches']/parent::div/following-sibling::div[2]/button");
    By recentSearchResults=By.xpath("//h5[text()='Recent Searches']/parent::div/following-sibling::div[@class='mb-2']");
    By clearAll=By.xpath("//h5[text()='Recent Searches']/parent::div/following-sibling::div//button[text()='Clear all']");
    By done=By.xpath("//h5[text()='Recent Searches']/parent::div/following-sibling::div//button[text()='Done']");
    By noResultsForPersonSearch=By.xpath("//div[text()='No results for Person search']");
    By totalSearchResults=By.xpath("//tbody/tr/td[3]/div[1]//a");
    String openSnapshotButtonInResultsStr="//tbody/tr[xxx]/td[3]//button";

    public SearchPage() throws IOException {
    }

    public void clickSearchTab() throws IOException {
        clickElement(searchTab);
    }
    public void enterFirstName(String value) throws IOException {
        enterText(firstName,value);
    }
    public void clickDistanceLink() throws IOException {
        clickElement(distanceLink);
    }
    public void enterZipcodeInDistanceFilter(String value) throws IOException {
        enterText(zipcodeInDistanceFilter,value);
    }
    public void clickSearchButton() throws IOException {
        clickElement(searchButton);
    }
    public void clickClearSearchButton() throws IOException {
        clickElement(clearSearchButton);
    }
    public int getTableRowOfMachedClientID(String cid){
        return getTRNumber(clientID,cid);
    }
    public String getHeaderWPWSSearchResultsText(){
        return getText(headerWPWSSearchResults);
    }
    public String getHeaderFullNameSearchResultsText(){
        return getText(headerFullNameSearchResults);
    }
    public String getHeaderAddressesSearchResultsText(){
        return getText(headerAddressesSearchResults);
    }
    public String getHeaderSourceTypeSearchResultsText(){
        return getText(headerSourceTypeSearchResults);
    }
    public boolean getLabelTextSpouseText(int row,String value){
        //return getText(By.xpath(labelTextSpouseStr.replace("xxx",String.valueOf(row))));
        return getAttributeContains(By.xpath(labelTextSpouseStr.replace("xxx",String.valueOf(row))),"innerHTML",value);
    }
    public boolean getLabelTextNetWorthText(int row,String value){
        //return getText(By.xpath(labelTextNetworthStr.replace("xxx",String.valueOf(row))));
        return getAttributeContains(By.xpath(labelTextSpouseStr.replace("xxx",String.valueOf(row))),"innerHTML",value);
    }
    public String getSpouseNameText(int row){
        return getText(By.xpath(spouseNameStr.replace("xxx",String.valueOf(row))));
    }
    public boolean spouseNameClickabilityCheck(int row){
        return isClickable(By.xpath(spouseNameStr.replace("xxx",String.valueOf(row))));
    }
    public boolean saveButtonVisibilityCheck(int row){
        return isDisplayed(By.xpath(saveButtonInResultsStr.replace("xxx",String.valueOf(row))));
    }
    public void clickSaveButton(int row) throws IOException {
         clickElement(By.xpath(saveButtonInResultsStr.replace("xxx",String.valueOf(row))));
    }
    public boolean modifySearchButtonVisibilityCheck(){
        return isDisplayed(modifySearchButton);
    }
    public boolean newSearchButtonVisibilityCheck(){
        return isDisplayed(newSearchButton);
    }
    public boolean addressClickabilityCheck(int row){
        return isClickable(By.xpath(addressStr.replace("xxx",String.valueOf(row))));
    }
    public String getAddressText(int row){
        return getText(By.xpath(addressStr.replace("xxx",String.valueOf(row))));
    }
    public boolean getSourceTypeRealEstateText(int row,String value){
        return getAttributeContains(By.xpath(sourceTypeRealEstateStr.replace("xxx",String.valueOf(row))),"innerHTML",value);
    }
    public void clickSearchResult(int row) throws IOException {
        clickElement(By.xpath(searchResultStr.replace("xxx",String.valueOf(row))));
    }
    public String getCompleteName(int row) throws IOException {
        return getText(By.xpath(searchResultStr.replace("xxx",String.valueOf(row))));
    }
    public String getProfileNameInSummaryPageText(){
        return getText(profileNameInSummaryPage);
    }
    public void clickResearchDetailsTab() throws IOException {
        clickElement(researchDetailsTab);
    }
    public String getResearchDetailsHeaderText(){
        scrollToView(profileNameInSummaryPage);
        return getText(researchDetailsHeader);
    }
    public void clickConnectionsTab() throws IOException {
        clickElement(connectionsTab);
    }
    public String getConnectionsPageHeaderText(){
        return getText(connectionsPageHeader);
    }
    public String getWealthScore(int row){
        return getText(By.xpath(wealthScoreStr.replace("xxx",String.valueOf(row))));
    }
    public String getWealthScoreDescription(int row){
        return getText(By.xpath(wealthScoreDescriptionStr.replace("xxx",String.valueOf(row))));
    }
    public void waitTillSearchResultsGetsLoaded() throws IOException {
        waitForVisibilityOfElement(headerWPWSSearchResults);
    }
    public void waitTillSummeryPageToGetLoaded() throws IOException {
        waitForVisibilityOfElement(profileNameInSummaryPage);

    }
    public void clickStateTab() throws IOException {
        clickElement(stateTab);
    }
    public void enterAndSelectMultipleStateMetroInput(String stateormetro){
        String st[]=stateormetro.split("#");
        for(int i=0;i<st.length;i++){
            clickEnterAndEnterKey(stateMetroInput,st[i]);
        }
    }
    public void enterStateMetroInput(String stateormetro){
            clickEnterAndEnterKey(stateMetroInput,stateormetro);
    }
    public void clickP2G(int row) throws IOException {
        clickElement(By.xpath(p2gStr.replace("xxx",String.valueOf(row))));
    }
    public void clickZipTab() throws IOException
    {
        clickElement(zipTab);
    }
    public void enterZipInput(String value) throws IOException
    {
        enterText(zipInput,value);
    }
    public void scrollToViewDesiredRecord(int row) throws InterruptedException {
        mediumHardWait();
        if(row>2) {
            scrollToView(By.xpath(searchResultStr.replace("xxx",String.valueOf(row))));
            scrollToView(By.xpath(saveButtonInResultsStr.replace("xxx", String.valueOf(row - 1))));
        }
    }
    public void clickMoreOptions() throws IOException
    {
        clickElement(moreOptions);
    }
    public void moveLeftSideAgeSlider(String agefilter){
        sliderMoveRight(liftSideAgeSlider,Integer.parseInt(agefilter));
    }
    public void clickMetroTab() throws IOException {
        clickElement(metroTab);
    }
    public void enterAndSelectStateMetroInput(String stateormetro){
        clickEnterAndEnterKey(stateMetroInput,stateormetro);
    }
    public void enterBusinessName(String value) throws IOException {
        enterText(businessName,value);
    }
    public void enterSpouseName(String value) throws IOException {
        enterText(spouseFirstName,value.split(" ")[0]);
        enterText(spouseMiddleName,value.split(" ")[1]);
        enterText(spouseLastName,value.split(" ")[2]);
    }
    public void clickExpandArrow() throws IOException {
        clickElement(expandArrow);
    }
    public void enterPersonLastName(String value) throws IOException {
        enterText(personLastName,value);
    }
    public void enterPersonFirstAndLastName(String value) throws IOException {
        enterText(personFirstName,value.split(" ")[0]);
        enterText(personLastName,value.split(" ")[1]);
    }
    public void enterPersonFirstMiddleAndLastName(String value) throws IOException {
        enterText(personFirstName,value.split(" ")[0]);
        enterText(personMiddleName,value.split(" ")[1]);
        enterText(personLastName,value.split(" ")[2]);
    }
    public void enterSuffix(String value) throws IOException {
        enterText(personSuffix,value);
    }
    public void clickCityTab() throws IOException {
        clickElement(cityTab);
    }
    public void enterCityInput(String city) throws IOException, InterruptedException {
        enterText(cityInput,city.split(",")[0]);
        mediumHardWait();
        clickElement(By.xpath(cityOptionStr.replace("xxx",city)));
        smallHardWait();
    }
    public void clickOrganizationLink() throws IOException, InterruptedException {
        clickElement(organizationLink);
        smallHardWait();
    }
    public void clickAddressLink() throws IOException, InterruptedException {
        clickElement(addressLink);
        smallHardWait();
    }
    public void clickPencilIcon() throws IOException, InterruptedException {
        clickElement(pencilIcon);
        smallHardWait();
    }
    public boolean pencilIconExistenceCheck() throws  InterruptedException {
        return isDisplayed(pencilIcon);
    }
    public void clickAdvancedSearch() throws IOException, InterruptedException {
        clickElement(advancedSearch);
        smallHardWait();
    }
    public boolean advancedSearchVisibilityCheck(){
        return isDisplayed(backToPersonSearchLink);
    }
    public boolean searchResultsPageVisibilityCheck(){
        return isDisplayed(modifySearchButton);
    }
    public void clickNewSearch() throws IOException, InterruptedException {
        clickElement(newSearchButton);
        smallHardWait();
    }
    public String getRecentSearchRecordText(){
        return getText(recentSearchFirstRecord);
    }
    public boolean sourceTypeClickabilityCheckForLink(){
        return getTagName(dataSources);
    }
    public boolean recentFirstRecordDeleteOptionCheck(){
        return isClickable(recentSearchFirstRecordDeleteButton);
    }
    public void recentFirstRecordDelete() throws IOException, InterruptedException {
        clickElement(recentSearchFirstRecordDeleteButton);
        smallHardWait();
    }
    public int getTotalRecentSearchResults(){
        return getTotalElements(recentSearchResults);
    }
    public void clickClearAll() throws IOException, InterruptedException {
        clickElement(clearAll);
        smallHardWait();
    }
    public boolean noRecordsVisibilityCheck(){
        return isDisplayed(noResultsForPersonSearch);
    }
    public boolean topFiveRecordsValidation(String str){
        return topFiveRecordsValidation(totalSearchResults, str);
    }
    public boolean openSnapshotClickabilityCheck(int row){
        return isClickable(By.xpath(openSnapshotButtonInResultsStr.replace("xxx",String.valueOf(row))));
    }
    public void clickOpenSnapShotButton(int row) throws IOException {
        clickElement(By.xpath(openSnapshotButtonInResultsStr.replace("xxx",String.valueOf(row))));
    }
    public void  dataSourceNavigationCheck(){
        navigationCheck(dataSources);
    }
}
