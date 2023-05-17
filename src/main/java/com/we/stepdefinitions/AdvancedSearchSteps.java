package com.we.stepdefinitions;
import com.we.base.BaseAPI;
import com.we.base.BasePage;
import com.we.pages.AdvancedSearchPage;
import com.we.pages.SearchPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.restassured.response.Response;
import org.json.JSONObject;

import java.io.IOException;

public class AdvancedSearchSteps extends BasePage {
    public AdvancedSearchSteps() throws IOException {
    }
    AdvancedSearchPage adsearchpage=new AdvancedSearchPage();
    SearchPage searchpage=new SearchPage();
    @And("User Click on Advanced Search Button")
    public void userClickOnAdvancedSearchButton() throws InterruptedException, IOException {
        smallHardWait();
        adsearchpage.clickAdvancedSearchButton();
        smallHardWait();
    }
    @And("User Click on Back to Person Search button")
    public void userClickOnBackToPersonSearchButton() throws  IOException {
        assertTrue(adsearchpage.checkBackToPersonSearchButton(),true);
        adsearchpage.clickBackToPersonSearchButton();
    }
    @And("User verify the hint text")
    public void userVerifyTheHintText()  {
        assertTrue(adsearchpage.checkHintText(),true);
    }
    @And("User Verify the Mandatory fields with *")
    public void userVerifyTheMandatoryFieldsWith()  {
        assertTrue(adsearchpage.verifyTheMandatoryFields(),true);
    }
    @And("User Verify the BUSINESS INFORMATION section")
    public void userVerifyTheBUSINESSINFORMATIONSection() throws IOException {
        adsearchpage.clickArrowBusinessInformation();
        assertTrue(adsearchpage.verifyTheBusinessInformationSection(),true);
    }
    @And("User Verify the DEMOGRAPHIC INFORMATION section")
    public void userVerifyTheDEMOGRAPHICINFORMATIONSection() throws IOException {
        adsearchpage.clickArrowDemographicInformation();
        assertTrue(adsearchpage.verifyTheDemographicInformationSection(),true);
    }
    @And("User Verify the SPOUSE INFORMATION section")
    public void userVerifyTheSPOUSEINFORMATIONSection() throws IOException {
        adsearchpage.clickArrowSpouseInformation();
        assertTrue(adsearchpage.verifyTheSpouseInformationSection(),true);
    }
    @And("User Verify the GIVING INFORMATION section")
    public void userVerifyTheGIVINGINFORMATIONSection() throws IOException {
        adsearchpage.clickArrowGivingInformation();
        assertTrue(adsearchpage.verifyTheGivingInformationSection(),true);
    }
    @And("User Verify the Search and Save Profile button")
    public void userVerifyTheSearchAndSaveProfileButton()  {
        assertTrue(adsearchpage.verifyTheSearchAndSaveProfileButton(),true);
    }
    @And("User Verify the Clear button")
    public void userVerifyTheClearButton()  {
        assertTrue(adsearchpage.verifyTheClearButton(),true);
    }
    @And("User Verify the Cancel button")
    public void userVerifyTheCancelButton() throws IOException {
        assertTrue(adsearchpage.verifyTheCancelButton(),true);
    }
    @And("User Enters Mandatory Fields {string} for person details")
    public void user_enters_mandatory_fields_something_for_person_details(String mandatoryfields) throws Throwable {
        adsearchpage.enterFirstName(mandatoryfields.split("#")[0]);
        adsearchpage.enterMiddleName(mandatoryfields.split("#")[1]);
        adsearchpage.enterLastName(mandatoryfields.split("#")[2]);
        adsearchpage.enterAddress(mandatoryfields.split("#")[3]);
        adsearchpage.enterCity(mandatoryfields.split("#")[4]);
        adsearchpage.clickStateAndSelectStateOption(mandatoryfields.split("#")[5]);
        adsearchpage.enterZip(mandatoryfields.split("#")[6]);
    }
    @Then("User Click on Search and Save Profile button")
    public void user_click_on_search_and_save_profile_button() throws Throwable {
        adsearchpage.clickSearchAndSaveProfileButton();
    }
    @And("User Click on View Profile button")
    public void user_click_on_view_profile_button() throws Throwable {
        mediumHardWait();
        assertTrue(adsearchpage.verifySearchResultSuccessMessageDisplay(),true);
        adsearchpage.clickViewProfile();
        smallHardWait();
        switchWindow();
    }
    @Then("Verify the Connections page tab with one of the header in Profile Summary")
    public void verify_the_connections_page_tab_with_one_of_the_header_in_profile_summary() throws Throwable {
        assertEquals(searchpage.getConnectionsPageHeaderText(),"CONNECTIONS");
    }
    @And("User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery {string}")
    public void user_verifies_the_wealthscore_wealthscore_description_and_p2g_details_in_profile_summery_something(String apibody) throws Throwable {
        hardWait();
        String arr[]=apibody.split("#");
        JSONObject jo=new JSONObject();
        jo.put("first_name",arr[0])
                .put("last_name",arr[1])
                .put("address_line1",arr[2])
                .put("city",arr[3])
                .put("state",arr[4])
                .put("zip",arr[5])
                .put("email",arr[6])
                .put("phone",arr[7])
                .put("client_id",arr[8]);
        Response res= BaseAPI.POST(config.apiURI()+"/profile/summary/basic",jo.toString());
        mediumHardWait();
        assertEquals(adsearchpage.getWealthP2GScoreInProfileSummery(), String.valueOf((Integer) res.then().extract().path("wealth.wealth_score.value")));
        String des=adsearchpage.getWealthP2GScoreDescriptionInProfileSummery();
        if(des.equals("Above Avg")){
            des="Above Average";
        }
        assertEquals(des,(String) res.then().extract().path("wealth.wealth_score.text"));
        adsearchpage.clickP2GInProfileSummery();
        String p2gAPI=res.then().extract().path("giving.p2g_score.text").toString().split(" ")[0];
        String p2gUI=adsearchpage.getWealthP2GScoreInProfileSummery().replace(" ","");
        assertEquals(p2gUI, p2gAPI);
    }
    @Then("User Navigate to Advanced Search result page")
    public void user_navigate_to_advanced_search_result_page() throws Throwable {
        getDriver().close();
        switchToParentWindow();
        assertTrue(adsearchpage.verifySearchResultSuccessMessageDisplay(),true);
    }
    @And("User Click on Back to Advance Search button")
    public void user_click_on_back_to_advance_search_button() throws Throwable {
        assertTrue(adsearchpage.verifyBackToAdvanceSearchButtonDisplay(),true);
        adsearchpage.clickBackToAdvanceSearchButton();
    }
    @And("User Click on Business Information Expand or Collapse Arrow")
    public void user_click_on_business_information_expand_or_collapse_arrow() throws Throwable {
        adsearchpage.clickArrowBusinessInformation();
    }
    @And("User Enter the Business Information {string}")
    public void user_enter_the_business_name_something(String businessinfo) throws Throwable {
        adsearchpage.enterBusiness(businessinfo.split("#")[0]);
        adsearchpage.enterBusinessPhone(businessinfo.split("#")[1]);
        adsearchpage.enterBusiness2(businessinfo.split("#")[2]);
        adsearchpage.enterBusinessPhone2(businessinfo.split("#")[3]);
        adsearchpage.enterBusiness3(businessinfo.split("#")[4]);
        adsearchpage.enterBusinessPhone3(businessinfo.split("#")[5]);
    }
    @And("User Verify the Carrier History for business details {string}")
    public void user_verify_the_carrier_history_for_business_details_something(String businessdetails) throws Throwable {
        adsearchpage.clickBusinessPhonesExpandLink();
        adsearchpage.allBusinessPhonesExistenceValidation(businessdetails.split("#")[1]);
        adsearchpage.allBusinessPhonesExistenceValidation(businessdetails.split("#")[3]);
        adsearchpage.allBusinessPhonesExistenceValidation(businessdetails.split("#")[5]);
        adsearchpage.clickCareerHistoriesExpandLink();
        adsearchpage.allBusinessNamesExistenceValidation(businessdetails.split("#")[0]);
        adsearchpage.allBusinessNamesExistenceValidation(businessdetails.split("#")[2]);
        adsearchpage.allBusinessNamesExistenceValidation(businessdetails.split("#")[4]);
    }
    @And("User Click on Demographic Information Expand or Collapse Arrow")
    public void user_click_on_demographic_information_expand_or_collapse_arrow() throws Throwable {
        adsearchpage.clickArrowDemographicInformation();
    }
    @And("User Enter the DOB {string} in format ddmmyyyy or click on calendar to select date")
    public void user_enter_the_dob_something_in_format_ddmmyyyy_or_click_on_calendar_to_select_date(String dob) throws Throwable {
        adsearchpage.enterDateOfBirth(dob);
    }
    @And("User Enter the Age {string}")
    public void user_enter_the_age_something(String age) throws Throwable {
        adsearchpage.enterAge(age);
    }
    @And("User Enter the Graduation Date {string} in format ddmmyyyy click on calendar to select date")
    public void user_enter_the_graduation_date_something_in_format_ddmmyyyy_click_on_calendar_to_select_date(String graduationdate) throws Throwable {
        adsearchpage.enterGraduationDate(graduationdate);
    }
    @And("User Enter the Demographic Information {string}")
    public void user_enter_the_demographic_information_something(String demographicinformation) throws Throwable {
        adsearchpage.enterAge(demographicinformation.split("#")[0]);
        adsearchpage.enterDateOfBirth(demographicinformation.split("#")[1]);
        adsearchpage.enterClientId(demographicinformation.split("#")[2]);
    }
    @And("User Enter the Client ID {string}")
    public void user_enter_the_client_id_something(String clientid) throws Throwable {
        adsearchpage.enterClientId(clientid);
    }
    @And("User Verify the Contact and Demographics details {string} on summary page")
    public void user_verify_the_contact_and_demographics_details_something_on_summary_page(String dd) throws Throwable {
        assertEquals(adsearchpage.getAgeFromSummeryText(),dd.split("#")[0]);
        assertEquals(adsearchpage.getDOBFromSummeryText(),dd.split("#")[1]);
    }
    @And("User Click on Spouse Information Expand or Collapse Arrow")
    public void user_click_on_spouse_information_expand_or_collapse_arrow() throws Throwable {
        adsearchpage.clickArrowSpouseInformation();
    }
    @And("User Enter the Spouse Details {string}")
    public void user_enter_the_spouse_details_something(String spousedetails) throws Throwable {
        adsearchpage.enterSpouseFirstName(spousedetails.split("#")[0]);
        adsearchpage.enterSpouseMiddleName(spousedetails.split("#")[1]);
        adsearchpage.enterSpouseLastName(spousedetails.split("#")[2]);
    }
    @And("User do not enter anything in Mandatory Fields")
    public void user_do_not_enter_anything_in_mandatory_fields() throws Throwable {
        smallHardWait();
    }
    @And("User Click on Giving Information Expand or Collapse Arrow")
    public void user_click_on_giving_information_expand_or_collapse_arrow() throws Throwable {
        adsearchpage.clickArrowGivingInformation();
    }
    @And("User Enter the Giving Information Details {string}")
    public void user_enter_the_giving_information_details_something(String givinginfodetails) throws Throwable {
        adsearchpage.enterTotalGiving(givinginfodetails.split("#")[0]);
        adsearchpage.enterTotalNumberOfGifts(givinginfodetails.split("#")[1]);
        adsearchpage.enterLastGiftAmount(givinginfodetails.split("#")[2]);
        adsearchpage.enterLastGiftDate(givinginfodetails.split("#")[3]);
        adsearchpage.enterLargestGiftAmount(givinginfodetails.split("#")[4]);
        adsearchpage.enterLargestGiftDate(givinginfodetails.split("#")[5]);
    }
    @Then("User Click on Clear button")
    public void user_click_on_clear_button() throws Throwable {
        adsearchpage.clickClearButton();
        assertTrue(adsearchpage.getFirstName().length()==0,true);
    }
    @Then("User Click on Cancel button")
    public void user_click_on_cancel_button() throws Throwable {
        adsearchpage.clickCancelButton();
        assertTrue(adsearchpage.clickAdvancedSearchButtonVisibilityCheck(),true);
    }
    @And("User Verify the Spouse Details {string} on summary page")
    public void user_verify_the_spouse_details_something_on_summary_page(String spousedetails) throws Throwable {
        assertTrue(adsearchpage.getHouseHoldNameFromSummeryText().toUpperCase().contains(spousedetails.replaceAll("#"," ").toUpperCase()),true);
    }
    @And("User Verify the Giving Information Details {string} on summary page")
    public void user_verify_the_giving_information_details_something_on_summary_page(String gi) throws Throwable {
        assertEquals(adsearchpage.getTotalGivingInSummeryPageText(),gi.split("#")[0]);
        assertEquals(adsearchpage.getTotalNumberOfGiftsInSummeryPageText(),gi.split("#")[1]);
        assertEquals(adsearchpage.getLastGiftAmountInSummeryPageText(),gi.split("#")[2]);
        assertEquals(adsearchpage.getLastGiftDateInSummeryPageText(),gi.split("#")[3]);
        assertEquals(adsearchpage.getLargestGiftAmountInSummeryPageText(),gi.split("#")[4]);
        assertEquals(adsearchpage.getLargestGiftDateInSummeryPageText(),gi.split("#")[5]);
    }
    @And("User Verify the Error Message for all Mandatory Fields")
    public void user_verify_the_error_message_for_all_mandatory_fields() {
        assertTrue(adsearchpage.getFirstNameErrorMsgText().equalsIgnoreCase("Please Enter a value in First Name field."),true);
        assertTrue(adsearchpage.getLastNameErrorMsgText().equalsIgnoreCase("Please Enter a value in Last Name field."),true);
        assertTrue(adsearchpage.getAddressErrorMsgText().equalsIgnoreCase("Please Enter a value in Address field."),true);
        assertTrue(adsearchpage.getCityErrorMsgText().equalsIgnoreCase("Please Enter a value in City field."),true);
        assertTrue(adsearchpage.getStateErrorMsgText().equalsIgnoreCase("Please Enter a value in State field."),true);
        assertTrue(adsearchpage.getZipErrorMsgText().equalsIgnoreCase("Please Enter a value in Zip field."),true);
    }

}
