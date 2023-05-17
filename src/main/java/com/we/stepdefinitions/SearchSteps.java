package com.we.stepdefinitions;
import com.we.base.BaseAPI;
import com.we.base.BasePage;
import com.we.pages.SearchPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import org.json.JSONObject;
import org.testng.Assert;

import java.io.IOException;
public class SearchSteps extends BasePage {
    public SearchSteps() throws IOException {
    }
    SearchPage searchpage=new SearchPage();
    public  int tableRow;
    public  int beforeDelete;
    @Then("User Click on Search Tab")
    public void user_click_on_search_tab() throws IOException, InterruptedException {
        mediumHardWait();
        searchpage.clickSearchTab();
    }
    @When("User Enters Person Name To Search {string}")
    public void user_enters_person_name_to_search(String string) throws IOException {
        searchpage.enterFirstName(string);
    }
    @When("User Enters ZipCode {string} from the Distance Location Filter")
    public void user_enters_zip_code_from_the_distance_location_filter(String string) throws IOException {
        searchpage.clickDistanceLink();
        searchpage.enterZipcodeInDistanceFilter(string);
    }
    @Then("User Click on Search Button")
    public void user_click_on_search_button() throws IOException, InterruptedException {
        hardWait();
        searchpage.clickSearchButton();
    }
    @Then("User identifies the Client Profile based on {string}")
    public void user_identifies_the_client_based_on(String string) throws InterruptedException, IOException {
        hardWait();
        tableRow=searchpage.getTableRowOfMachedClientID(string);
    }
    @Then("User Verifies the header labels WP WS Full Name Address Source Type Net Worth")
    public void user_verifies_the_header_labels_wp_ws_full_name_address_source_type_net_worth() throws IOException {
        searchpage.waitTillSearchResultsGetsLoaded();
        assertEquals(searchpage.getHeaderWPWSSearchResultsText(),config.labelTextWPWS());
        assertEquals(searchpage.getHeaderFullNameSearchResultsText(),config.labelTextFullName());
        assertEquals(searchpage.getHeaderAddressesSearchResultsText(),config.labelTextAddress());
        assertEquals(searchpage.getHeaderSourceTypeSearchResultsText(),config.labelTextDetails());
        assertTrue(searchpage.getLabelTextSpouseText(tableRow,config.labelTextSpouse()),true);
        assertTrue(searchpage.getLabelTextNetWorthText(tableRow,config.labelTextNetWorth()),true);
    }
    @Then("User Extracts the desired record and Verify Search is Successful with {string}")
    public void user_extracts_the_first_record_and_verify_search_is_successful_with(String string) throws Exception {

        assertTrue(searchpage.getCompleteName(tableRow).toLowerCase().contains(string.toLowerCase()),true);
    }
    @Then("User Verifies the WealthScore WealthScore Description and P2G Details {string}")
    public void user_verifies_the_wealth_score_and_wealth_score_description(String string) throws IOException, InterruptedException {
        hardWait();
        searchpage.scrollToViewDesiredRecord(tableRow);
        hardWait();
        String arr[]=string.split("#");
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
        Response res=BaseAPI.POST(config.apiURI()+"/profile/summary/basic",jo.toString());
        mediumHardWait();
        assertEquals(searchpage.getWealthScore(tableRow), String.valueOf((Integer) res.then().extract().path("wealth.wealth_score.value")));
        String des=searchpage.getWealthScoreDescription(tableRow);
        if(des.equals("Above Avg")){
            des="Above Average";
        }
        assertEquals(des,(String) res.then().extract().path("wealth.wealth_score.text"));
        searchpage.clickP2G(tableRow);
        String p2gAPI=res.then().extract().path("giving.p2g_score.text").toString().split(" ")[0];
        String p2gUI=searchpage.getWealthScore(tableRow).replace(" ","");
        assertEquals(p2gUI, p2gAPI);


    }
    @Then("User Verifies Spouse Name with input {string} and clickable or not")
    public void user_verifies_spouse_name_with_input_and_clickable_or_not(String string) {
        assertEquals(searchpage.getSpouseNameText(tableRow),string);
        assertTrue(searchpage.spouseNameClickabilityCheck(tableRow),true);
    }
    @Then("User Verifies the Save Button is Displayed or not")
    public void user_verifies_the_save_button_is_displayed_or_not() {
        assertTrue(searchpage.saveButtonVisibilityCheck(tableRow),true);
    }
    @Then("User Verifies the Modify Search Button Displayed or not")
    public void user_verifies_the_modify_search_button_displayed_or_not() {
        assertTrue(searchpage.modifySearchButtonVisibilityCheck(),true);
    }
    @Then("User Verifies the New Search Button Displayed or not")
    public void user_verifies_the_new_search_button_displayed_or_not() {
        assertTrue(searchpage.newSearchButtonVisibilityCheck(),true);
    }
    @Then("User Verifies Address is clickable or not")
    public void user_verifies_address_is_clickable_or_not() {
        Assert.assertEquals(searchpage.addressClickabilityCheck(tableRow),true);
    }
    @Then("User Verifies the source type with specified Source Type {string}")
    public void user_verifies_the_source_type_with_specified_source_type(String string) {
        assertTrue(searchpage.getSourceTypeRealEstateText(tableRow,string),true);
    }
    @Then("User Click on the matched record")
    public void user_click_on_the_first_record() throws IOException {
        searchpage.clickSearchResult(tableRow);
        switchWindow();
    }
    @Then("User Validate the Name of the profile with Full Name in Profile Summary {string}")
    public void user_validate_the_name_of_the_profile_with_full_name_in_profile_summary(String value) throws IOException, InterruptedException {
        searchpage.waitTillSummeryPageToGetLoaded();
        hardWait();
        assertEquals(searchpage.getProfileNameInSummaryPageText().toUpperCase(),value.toUpperCase());
    }
    @When("User Click on Research Details page tab")
    public void user_click_on_research_details_page_tab() throws IOException {
        searchpage.clickResearchDetailsTab();
    }
    @Then("User Verifies the Research Details page tab with one of the header")
    public void user_verify_the_research_details_page_tab_with_one_of_the_header() {
        assertEquals(searchpage.getResearchDetailsHeaderText(),"RESEARCH DETAILS");
    }
    @When("User Click on the Connections page tab")
    public void user_click_on_the_connections_page_tab() throws IOException {
        searchpage.clickConnectionsTab();
    }
    @Then("Verify the Connections page tab with one of the header")
    public void verify_the_connections_page_tab_with_one_of_the_headertext() throws IOException {
        assertEquals(searchpage.getConnectionsPageHeaderText(),"CONNECTIONS");
        getDriver().close();
        switchToParentWindow();
    }
    @And("User Verifies the Save Button, Modify Search Button and New Search Button's display")
    public void user_verifies_the_save_button_modify_search_button_and_new_search_buttons_display() throws Throwable {
        assertTrue(searchpage.saveButtonVisibilityCheck(tableRow),true);
        assertTrue(searchpage.modifySearchButtonVisibilityCheck(),true);
        assertTrue(searchpage.newSearchButtonVisibilityCheck(),true);
    }
    @And("User Click on State Tab")
    public void user_click_on_state_tab() throws Throwable {
        searchpage.clickStateTab();
        mediumHardWait();
    }
    @And("User Select the multiple State or metro {string} from the State or Metro Location Filter")
    public void user_select_the_multiple_state_something_from_the_state_location_filter(String state) throws Throwable {
        mediumHardWait();
        searchpage.enterAndSelectMultipleStateMetroInput(state);
    }
    @And("User Verifies Spouse Name with input {string} and Address {string}")
    public void user_verifies_spouse_name_with_input_something_and_address_something(String spousename, String address) throws Throwable {
        if(!(searchpage.getSpouseNameText(tableRow)==null)){
            assertTrue(searchpage.spouseNameClickabilityCheck(tableRow),true);
            assertEquals(searchpage.getSpouseNameText(tableRow).toUpperCase(),spousename.toUpperCase());
        }
        assertTrue(searchpage.addressClickabilityCheck(tableRow),true);
        assertEquals(searchpage.getAddressText(tableRow).toUpperCase(),address.toUpperCase());
    }
    @And("User Click on Zipcode Tab")
    public void user_click_on_zipcode_tab() throws Throwable {
        searchpage.clickZipTab();
    }
    @And("User Enters the single or multiple zipcode {string} from the Zipcode Filter")
    public void user_enters_the_multiple_zipcode_something_from_the_zipcode_filter(String zipcode) throws Throwable {
        searchpage.enterZipInput(zipcode);
    }
    @And("User Click on More options button")
    public void user_click_on_more_options_button() throws Throwable {
        mediumHardWait();
        searchpage.clickMoreOptions();
        mediumHardWait();
    }
    @And("User Selects the age {string} from age slider")
    public void user_selects_the_age_something_from_age_slider(String age) throws Throwable {
        hardWait();
        searchpage.moveLeftSideAgeSlider(age);
        hardWait();
    }
    @And("User Click on Metro Tab")
    public void user_click_on_metro_tab() throws Throwable {
        searchpage.clickMetroTab();
        mediumHardWait();
    }
    @And("User Enters Metro {string} from the Metro Location Filter")
    public void user_enters_metro_something_from_the_metro_location_filter(String metro) throws Throwable {
        searchpage.enterAndSelectStateMetroInput(metro);
    }
    @And("User Enters State {string} from the State Location Filter")
    public void user_enters_state_something_from_the_state_location_filter(String state) throws Throwable {
        searchpage.enterAndSelectStateMetroInput(state);
    }
    @And("User Enters the {string} to Business Name input")
    public void user_enters_the_something_to_business_name_input(String businessname) throws Throwable {
        searchpage.enterBusinessName(businessname);
        mediumHardWait();
    }

    @And("User Enters the {string} to Spouse Name input")
    public void user_enters_the_something_to_spouse_name_input(String spousename) throws Throwable {
        searchpage.enterSpouseName(spousename);
    }

    @And("User Click on Expand Arrow")
    public void user_click_on_expand_arrow() throws Throwable {
        searchpage.clickExpandArrow();
        smallHardWait();
    }
    @When("User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search {string}")
    public void user_enters_person_last_name_or_firstlast_name_or_firstmiddlelast_name_to_search_something(String lastfirstmiddlename) throws Throwable {
        if(lastfirstmiddlename.split(" ").length==1){
            searchpage.enterPersonLastName(lastfirstmiddlename);
        }else if(lastfirstmiddlename.split(" ").length==2){
            searchpage.enterPersonFirstAndLastName(lastfirstmiddlename);
        }else{
            searchpage.enterPersonFirstMiddleAndLastName(lastfirstmiddlename);
        }
    }
    @And("User Enters {string}")
    public void user_enters_something(String suffix) throws Throwable {
        searchpage.enterSuffix(suffix);
        searchpage.clickExpandArrow();
    }
    @And("User Click on City Tab")
    public void user_click_on_city_tab() throws Throwable {
        searchpage.clickCityTab();
    }
    @And("User Enters {string} from the City Location Filter")
    public void user_enters_something_from_the_city_location_filter(String city) throws Throwable {
        searchpage.enterCityInput(city);
    }
    @And("User Enters Non Primary State {string} from the State Location Filter")
    public void user_enters_non_primary_state_something_from_the_state_location_filter(String state) throws Throwable {
        searchpage.enterAndSelectStateMetroInput(state);
    }
    @And("User Enters the Non Primary zipcode {string} from the Zipcode Filter")
    public void user_enters_the_non_primary_zipcode_something_from_the_zipcode_filter(String zipcode) throws Throwable {
        searchpage.enterZipInput(zipcode);
    }

    @Then("Verify user is on Person Search page")
    public void verify_user_is_on_person_search_page() throws Throwable {
        assertTrue(getDriver().getCurrentUrl().contains("person"),true);
    }
    @When("User Click on Organization link")
    public void user_click_on_organization_link() throws Throwable {
        searchpage.clickOrganizationLink();
    }
    @Then("User is navigated to Organization Search page")
    public void user_is_navigated_to_organization_search_page() throws Throwable {
        assertTrue(getDriver().getCurrentUrl().contains("organization"),true);
    }
    @When("User Click on Address link")
    public void user_click_on_address_link() throws Throwable {
        searchpage.clickAddressLink();
    }
    @Then("User is navigated to Address Search page")
    public void user_is_navigated_to_address_search_page() throws Throwable {
        assertTrue(getDriver().getCurrentUrl().contains("address"),true);
    }
    @When("User Click on Advanced Search button")
    public void user_click_on_advanced_search_button() throws Throwable {
        searchpage.clickAdvancedSearch();
    }
    @Then("User is navigated to Advanced Search page")
    public void user_is_navigated_to_advanced_search_page()  {
        assertTrue(searchpage.advancedSearchVisibilityCheck(),true);
    }
    @And("User is navigated to Search Results page")
    public void user_is_navigated_to_search_results_page() throws Throwable {
        hardWait();
        searchpage.searchResultsPageVisibilityCheck();

    }
    @And("User Click on New Search button")
    public void user_click_on_new_search_button() throws Throwable {
        hardWait();
        searchpage.clickNewSearch();
    }
    @Then("User should be able to view the recently searched profiles {string}")
    public void user_should_be_able_to_view_the_recently_searched_profiles_something(String verifytext) throws Throwable {
        assertEquals(searchpage.getRecentSearchRecordText().toUpperCase(),verifytext.toUpperCase());
    }
    @Then("^Verify that Data source as a link in Results page$")
    public void verify_that_data_source_as_a_link_in_results_page() throws Throwable {
        assertTrue(searchpage.sourceTypeClickabilityCheckForLink(),true);
    }
    @And("User Verify the pencil icon on Recent Searches")
    public void user_verify_the_pencil_icon_on_recent_searches() throws Throwable {
        assertTrue(searchpage.pencilIconExistenceCheck(),true);
    }
    @And("User Click on the pencil icon")
    public void user_click_on_the_pencil_icon() throws Throwable {
        searchpage.clickPencilIcon();
    }
    @Then("Verify delete icon")
    public void verify_delete_icon() throws Throwable {
        searchpage.recentFirstRecordDeleteOptionCheck();
    }
    @And("User Click on any one profile delete icon")
    public void user_click_on_any_one_profile_delete_icon() throws Throwable {
        beforeDelete=searchpage.getTotalRecentSearchResults();
        searchpage.recentFirstRecordDelete();
    }
    @Then("Verify profile is deleted from recent searches")
    public void verify_profile_is_deleted_from_recent_searches() throws Throwable {
        if(searchpage.getTotalRecentSearchResults()<beforeDelete){
            assertTrue(true,true);
        }else{
            assertTrue(false,true);
        }
    }
    @Then("Verify Clear All icon and Click")
    public void verify_clear_all_icon_and_click() throws Throwable {
        searchpage.clickClearAll();
        mediumHardWait();
    }
    @Then("Verify No Records from recent searches")
    public void verify_no_records_from_recent_searches() throws Throwable {
        assertTrue(searchpage.noRecordsVisibilityCheck(),true);
    }
    @And("User Verifies Search count and top 5 results {string}")
    public void user_verifies_search_count_and_top_5_results(String val) throws Throwable {
        assertTrue(searchpage.topFiveRecordsValidation(val),true);
    }
    @And("User Click on Save button")
    public void user_click_on_save_button() throws Throwable {
        searchpage.clickSaveButton(tableRow);
        smallHardWait();
    }
    @And("User Click on Open snapshot button")
    public void user_click_on_open_snapshot_button() throws Throwable {
        if(searchpage.openSnapshotClickabilityCheck(tableRow)){
            searchpage.clickOpenSnapShotButton(tableRow);
            hardWait();
            switchWindow();
        }
    }
    @And("User Click on Each data source and Verifies user is navigated to each data source in Research Details")
    public void user_click_on_each_data_source_and_verifies_user_is_navigated_to_each_data_source_in_research_details() throws Throwable {
        searchpage.dataSourceNavigationCheck();
    }



}
