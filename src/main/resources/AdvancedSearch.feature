Feature: Advanced Search
  @Regression
  Scenario Outline:TC_01_Verify Advanced_Search_Page_Details
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Click on Back to Person Search button
    When User Click on Advanced Search Button
    And User verify the hint text
    And User Verify the Mandatory fields with *
    And User Verify the BUSINESS INFORMATION section
    And User Verify the DEMOGRAPHIC INFORMATION section
    And User Verify the SPOUSE INFORMATION section
    And User Verify the GIVING INFORMATION section
    And User Verify the Search and Save Profile button
    And User Verify the Clear button
    And User Verify the Cancel button
    And User logged out from the application
    Examples:
      | testScenario                         |
      | Verify Advanced_Search_Page_Details  |
  @Regression
  Scenario Outline:TC_02_To_Verify_Advanced_Search_With_Mandatory_fields
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User Click on Back to Advance Search button
    And User logged out from the application
    Examples:
      | testScenario                         		  |Mandatory Fields							|FullName    | 	APIBODY                                                                   |
      | Verify_Advanced_Search_With_Mandatory_fields  |Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 |MARK A CUBAN| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:TC_03_To_Verify_Personal_details_fields_with_Business_information
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Business Information Expand or Collapse Arrow
    And User Enter the Business Information "<BusinessInformation>"
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Verify the Carrier History for business details "<BusinessInformation>"
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User logged out from the application
    Examples:
      | testScenario                         |Mandatory Fields						   |FullName    |  BusinessInformation			  			                                                                   |  APIBODY                                                                   |
      | Verify Advanced_Search_Page_Details  |Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 |MARK A CUBAN| Bailoutsleuth. Com Foundation, Inc.#214-698-3800#Xpire Llc#214-658-7174#Radical Management Llc#214-747-6287  | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:TC_04_To_Verify_Personal_details_Fields with_Demographic_information
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Demographic Information Expand or Collapse Arrow
    And User Enter the Demographic Information "<DemographicInformation>"
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    And User Verify the Contact and Demographics details "<DD>" on summary page
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User logged out from the application
    Examples:
      | testScenario                                                         | Mandatory Fields                         | DemographicInformation | FullName     | DD          | APIBODY                                                                    |
      | TC_04_To_Verify_Personal_details_Fields with_Demographic_information | Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 | 54#01071968#1797049078 | MARK A CUBAN | 54#Jul 1968 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:TC_05_To_Verify_Mandatory_fields_With_Spouse_Information
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Spouse Information Expand or Collapse Arrow
    And User Enter the Spouse Details "<SpouseDetails>"
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    And User Verify the Spouse Details "<SpouseDetails>" on summary page
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User logged out from the application
    Examples:
      | testScenario                         					  |Mandatory Fields							|FullName    | SpouseDetails   |APIBODY                                                                    |
      | TC_05_To_Verify_Mandotory_fields_With_SPOUSE INFORMATION  |Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 |MARK A CUBAN| 	Tiffany#S#Cuban|Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:TC_06_To_Verify_All_Mandatory_Fields_With_Giving_Information
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Giving Information Expand or Collapse Arrow
    And User Enter the Giving Information Details "<GivingInfoDetails>"
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    And User Verify the Giving Information Details "<GI>" on summary page
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User logged out from the application
    Examples:
      | testScenario                         					      |Mandatory Fields							                 |FullName             | GivingInfoDetails                         |GI                                                 |APIBODY                                                                                     |
      | TC_06_To_Verify_All_Mandatory_Fields_With_Giving_Information  |Elizabeth#J#Normandin#618 Hermosa Way#Menlo Park#CA#94025 |ELIZABETH J NORMANDIN| 	14328#97#7896#09082010#25834#20062005  |$14,328#97#$7,896#Aug 09, 2010#$25,834#Jun 20, 2005|Elizabeth#Normandin#618 Hermosa Way#Menlo Park#CA#94025#mcuban@audionet.com#2147448800#1234 |
  @Regression1
  Scenario Outline:TC_07_To_Verify_Click_On_Search_And_Save_Profile
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User do not enter anything in Mandatory Fields
    Then User Click on Search and Save Profile button
    And User Verify the Error Message for all Mandatory Fields
    And User logged out from the application
    Examples:
      | testScenario                         			  |
      | TC_07_To_Verify_Click_On_Search_And_Save_Profile  |
  @Regression
  Scenario Outline:TC_08_To_Clear_All_Entered_data
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Business Information Expand or Collapse Arrow
    And User Enter the Business Information "<BusinessInformation>"
    And User Click on Demographic Information Expand or Collapse Arrow
    And User Enter the Demographic Information "<DemographicInformation>"
    And User Click on Spouse Information Expand or Collapse Arrow
    And User Enter the Spouse Details "<SpouseDetails>"
    And User Click on Giving Information Expand or Collapse Arrow
    And User Enter the Giving Information Details "<GivingInfoDetails>"
    Then User Click on Clear button
    And User logged out from the application
    Examples:
      | testScenario                         |Mandatory Fields						   | BusinessInformation 						                                                                | DemographicInformation | SpouseDetails    | GivingInfoDetails			             |
      | TC_08_To_Clear_All_Entered_data      |Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 | Bailoutsleuth. Com Foundation, Inc.#214-698-3800#Xpire Llc#214-658-7174#Radical Management Llc#214-747-6287| 54#01071968#1797049078 |	Tiffany#S#Cuban |  14328#97#7896#09082010#25834#20062005 |
  @Regression
  Scenario Outline:TC_09_To_Verify_Cancel_Button_with_All_Fields_Entered
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    And User Click on Business Information Expand or Collapse Arrow
    And User Enter the Business Information "<BusinessInformation>"
    And User Click on Demographic Information Expand or Collapse Arrow
    And User Enter the Demographic Information "<DemographicInformation>"
    And User Click on Spouse Information Expand or Collapse Arrow
    And User Enter the Spouse Details "<SpouseDetails>"
    And User Click on Giving Information Expand or Collapse Arrow
    And User Enter the Giving Information Details "<GivingInfoDetails>"
    Then User Click on Cancel button
    And User logged out from the application
    Examples:
      | testScenario                                             |Mandatory Fields						   | BusinessInformation 						                                                                | DemographicInformation | SpouseDetails   | GivingInfoDetails			            |
      | TC_09_To_Verify_Cancel_Button_with_All_Fields_Input      |Mark#A#Cuban#2931 Elm St#Dallas#TX#75226 | Bailoutsleuth. Com Foundation, Inc.#214-698-3800#Xpire Llc#214-658-7174#Radical Management Llc#214-747-6287| 54#01071968#1797049078 |	Tiffany#S#Cuban|  14328#97#7896#09082010#25834#20062005 |
  @Regression1
  Scenario Outline:TC_10_To_Verify_Cancel_Button_without_Any_Fields_Enter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Verify the Cancel button
    And User Click on Cancel button
    And User logged out from the application
    Examples:
      | testScenario                         					|
      | TC_10_To_Verify_Cancel_Button_without_Any_Fields_Input  |
  @Regression
  Scenario Outline:TC_11_To_Verify_Advanced_Search_With_Mandatory_fields(Non_Primary_Address)
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Advanced Search Button
    And User Enters Mandatory Fields "<Mandatory Fields>" for person details
    Then User Click on Search and Save Profile button
    And User Click on View Profile button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header in Profile Summary
    And User Verifies the WealthScore,Wealth Description and P2G Details in Profile Summery "<APIBODY>"
    Then User Navigate to Advanced Search result page
    And User Click on Back to Advance Search button
    And User logged out from the application
    Examples:
      | testScenario                         		                                |Mandatory Fields							    |FullName    | 	APIBODY                                                                             |
      | TC_11_To_Verify_Advanced_Search_With_Mandatory_fields(Non_Primary_Address)  |Bijan##Aalami#329 Fulton St#palo Alto#CA#94301 |BIJAN AALAMI| Bijan#Aalami#329 Fulton St#palo Alto#CA#94301#alexa.aalami@gmail.com#2147448800#1234 |