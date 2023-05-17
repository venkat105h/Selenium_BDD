Feature: Search
  @Regression
  Scenario Outline:Tc_01_Verify_Search_With_Last_Name_All_Of_US_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              | SearchInput |ID        | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Last Name using Person Search | CUBAN       |1797049078| CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_02_Verify_Search_With_FirstName_And_LastName_All_Of_US_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                             | SearchInput|ID         | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with First Name and Last Name using Person Search | MARK CUBAN |1797049078 | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_03_Verify_Search_With_FullName_All_Of_US_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              | SearchInput |ID        | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Full Name using Person Search | MARK CUBAN  |1797049078| CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_04_Verify_Search_With_Last_Name_Distance_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                              | SearchInput |ID          | ZipCode | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Last Name and Distance Location Filter | CUBAN       |1797049078  | 33139   | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_05_Verify_Search_With_FirstName_And_LastName_Distance_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                          | SearchInput|ID          | ZipCode | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with First Name, Last Name and Distance Location Filter | MARK CUBAN |1797049078  |33139    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_06_Verify_Search_With_FullName_Distance_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                              | SearchInput |ID         | ZipCode | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name and Distance Location Filter | MARK A CUBAN|1797049078 | 33139   | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_07_Verify_Search_With_Last_Name_Metro_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           | SearchInput|ID        | Metro  | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Last Name and Metro Location Filter | CUBAN      |1797049078| Dallas | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_08_Verify_Search_With_FirstName_And_LastName_Metro_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                      | SearchInput |ID          | Metro | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with First Name,Last Name and Metro Location Filter | MARK CUBAN  |1797049078  |Dallas | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_09_Verify_Search_With_FullName_Metro_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           | SearchInput |ID          | Metro        | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name and Metro Location Filter | MARK A CUBAN|1797049078  | Dallas       | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_10_Verify_Search_With_Last_Name_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           | SearchInput |ID        | State | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Last Name and Metro Location Filter | CUBAN       |1797049078| Texas | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_11_Verify_Search_With_FirstName_And_LastName_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                      | SearchInput|ID        | State | VerifyText   | FullName     | SpouseName       |Address                    | APIBODY                                                                    |
      | Person Search with First Name,Last Name and State Location Filter | MARK CUBAN |1797049078| Texas | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban  |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_12_Verify_Search_With_FullName_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           | SearchInput  |ID        | State     | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name and State Location Filter | MARK A CUBAN |1797049078| Texas     | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_13_Verify_Search_With_Last_Name_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                             | SearchInput|ID        | ZipCode | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Last Name and Zipcode Location Filter | CUBAN      |1797049078| 33139   | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_14_Verify_Search_With_FirstName_And_LastName_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                         | SearchInput|ID        | ZipCode | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with First Name, Last Name and Zipcode Location Filter | MARK CUBAN |1797049078| 33139   | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_15_Verify_Search_With_FullName_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                             | SearchInput  |ID        | ZipCode | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name and Zipcode Location Filter | MARK A CUBAN |1797049078| 33139   | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_16_Verify_Search_With_Last_Name_Multiple_Metro_Information_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                    | SearchInput|ID        | Stateormetros   | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                            |
      | Person Search with Last Name and Multiple Metro Location Filter | CUBAN      |1797049078| Dallas#New York | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234|
  @Regression
  Scenario Outline:Tc_17_Verify_Search_With_FirstName_And_LastName_Multiple_Metro_Information_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                               | SearchInput |ID        | Stateormetros   | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with First Name,Last Name and Multiple Metro Location Filter | MARK CUBAN  |1797049078| Dallas#New York | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_18_Verify_Search_With_FullName_Multiple_Metro_Information_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                    | SearchInput  |ID        | Stateormetros   | VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name and Multiple Metro Location Filter | MARK A CUBAN |1797049078| Dallas#New York | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_19_Verify_Search_With_Last_Name_With_Multiple_States_In_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     | SearchInput  |ID        | Stateormetros          | VerifyText   | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name and multiple State Filter |  CUBAN       |1797049078| Texas#New York         |     CUBAN    | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_20_Verify_Search_With_FirstName_And_LastName_With_Multiple_States_In_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                                 | SearchInput  |ID        | Stateormetros          | VerifyText   | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name and multiple State Filter | MARK CUBAN   |1797049078| Texas#New York         | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_21_Verify_Search_With_FullName_With_Multiple_States_In_State_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     | SearchInput  |ID        | Stateormetros          | VerifyText   | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and multiple State Filter | MARK A CUBAN |1797049078| Texas#New York         | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_22_Verify_Search_With_Last_Name_With_Multiple_ZipCodes_By_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
    | testScenario                                                              | SearchInput |ID         | ZipCode        | VerifyText | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
    | Search for the record in Person Search using Last Name and Zipcode Filter | CUBAN       | 1797049078| 75226,75220    | CUBAN      | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_23_Verify_Search_With_FirstName_And_LastName_With_Multiple_ZipCodes_By_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
    | testScenario                                                                             | SearchInput |ID         | ZipCode        | VerifyText | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
    | Search for the record in Person Search using First name and Last Name and Zipcode Filter | MARK CUBAN  | 1797049078| 75226,75220    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_24_Verify_Search_With_FullName_With_Multiple_ZipCodes_By_ZipCode_Filter
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
    | testScenario                                                              | SearchInput  |ID          | ZipCode         | VerifyText   | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
    | Search for the record in Person Search using Full Name and Zipcode Filter | MARK A CUBAN | 1797049078 |  75226,75220    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_25_Verify_Search_With_Last_Name_All_Of_US_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                          |SearchInput |ID         | Age | VerifyText | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name and age Filter | CUBAN      | 1797049078| 45  | CUBAN      | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_26_Verify_Search_With_FirstName_And_LastName_All_Of_US_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                      |SearchInput |ID         | Age | VerifyText | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name and age Filter | MARK CUBAN | 1797049078| 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_27_Verify_Search_With_FullName_All_Of_US_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                          |SearchInput   |ID         | Age | VerifyText   | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and age Filter | MARK A CUBAN | 1797049078| 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_28_Verify_Search_With_Last_Name_Distance_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                    |SearchInput |ID        | ZipCode| Age | VerifyText | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Distance and age Filter | CUBAN      |1797049078| 75226  | 45  | CUBAN      | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_29_Verify_Search_With_FirstName_And_LastName_Distance_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                                 |SearchInput |ID        | ZipCode| Age | VerifyText | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name , Distance and age Filter | MARK CUBAN |1797049078| 75226  | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_30_Verify_Search_With_FullName_Distance_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     |SearchInput   |ID        | ZipCode| Age | VerifyText   | FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name , Distance and age Filter | MARK A CUBAN |1797049078| 75226  | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_31_Verify_Search_With_Last_Name_Metro_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						 | SearchInput|ID        | Metro  |Age| VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Metro and age Filter | CUBAN      |1797049078| Dallas | 45|  CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_32_Verify_Search_With_FirstName_And_LastName_Metro_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           									 | SearchInput	  |ID        | Metro  |Age| VerifyText 		| FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, Metro and age Filter | MARK CUBAN      |1797049078| Dallas | 45|  MARK A CUBAN   | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_33_Verify_Search_With_FullName_Metro_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						 | SearchInput		|ID        | Metro  |Age| VerifyText 		| FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Metro and age Filter | MARK A CUBAN      |1797049078| Dallas | 45|  MARK A CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_34_Verify_Search_With_Last_Name_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						 | SearchInput|ID        | State  |Age| VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name , State and age Filter| CUBAN      |1797049078| Texas | 45|  CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_35_Verify_Search_With_FirstName_And_LastName_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           									 | SearchInput	  |ID        | State  |Age| VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name , State and age Filter| MARK CUBAN      |1797049078| Texas | 45|  CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_36_Verify_Search_With_FullName_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						 | SearchInput		|ID        | State  |Age| VerifyText 	| FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name , State and age Filter| MARK A CUBAN      |1797049078| Texas 	| 45|  MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_37_Verify_Search_With_Last_Name_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						  | SearchInput|ID        | ZipCode  |Age| VerifyText  | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, zipcode and age Filter| CUBAN      |1797049078| 75226    | 45|  CUBAN		 | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_38_Verify_Search_With_FirstName_And_LastName_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           									  | SearchInput	  |ID        | ZipCode    |Age| VerifyText 	  | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name zipcode and age Filter | MARK CUBAN      |1797049078| 75226 	  | 45|  MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_39_Verify_Search_With_FullName_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           						  | SearchInput		|ID        | ZipCode  |Age| VerifyText 	  | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, zipcode and age Filter| MARK A CUBAN      |1797049078| 75226 	  | 45|  MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_40_Verify_Search_With_Last_Name_Metro_Information_Multiple_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                           								  | SearchInput|ID        | Stateormetros  |Age| VerifyText  | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name , Multiple Metro and age Filter| CUBAN      |1797049078| Dallas#New York| 45|  CUBAN	   | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_41_Verify_Search_With_FirstName_And_LastName_Metro_Information_Multiple_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 														   | SearchInput| ID 		   | Stateormetros 	 | Age| VerifyText 	 | FullName 	| SpouseName 	  | Address 					| APIBODY 																	 |
      | Person Search with First Name,Last Name, Multiple Metro and Age Filter | MARK CUBAN | 1797049078 | Dallas#New York | 45 | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_42_Verify_Search_With_FullName_Metro_Information_Multiple_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 												| SearchInput  | ID         | Stateormetros   | Age | VerifyText   | FullName 	| SpouseName 	  | Address                     | APIBODY 																	 |
      | Person Search with Full Name, Multiple Metro and Age Filter | MARK A CUBAN | 1797049078 | Dallas#New York | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_43_Verify_Search_With_Last_Name_With_Multiple_States_In_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 												| SearchInput | ID         | Stateormetros  | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Last Name, Multiple State and Age Filter | CUBAN       | 1797049078 | Texas#New York | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_44_Verify_Search_With_FirstName_And_LastName_With_Multiple_States_In_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 														    | SearchInput | ID          | Stateormetros  | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with First Name, Last Name, Multiple State and Age Filter | MARK CUBAN  | 1797049078  | Texas#New York | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_45_Verify_Search_With_FullName_With_Multiple_States_In_State_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 												| SearchInput  | ID         | Stateormetros  | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Full Name, Multiple State and Age Filter | MARK A CUBAN | 1797049078 | Texas#New York | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_46_Verify_Search_With_Last_Name_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 												  | SearchInput | ID         | ZipCode     | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Last Name, Multiple Zipcode and Age Filter | CUBAN       | 1797049078 | 75226,75220 | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_47_Verify_Search_With_FirstName_And_LastName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario															 | SearchInput | ID         | ZipCode     | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with First Name,Last Name, Multiple Zipcode and Age Filter | MARK CUBAN  | 1797049078 | 75226,75220 | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_48_Verify_Search_With_FullName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 										        | SearchInput  | ID         | ZipCode     | Age | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Full Name, Multiple State and Age Filter | MARK A CUBAN | 1797049078 | 75226,75220 | 45  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_49_Verify_Search_With_Last_Name_All_Of_US_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 										  | SearchInput | ID         | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY 																	|
      | Person Search with Last Name and Business Name Filter | CUBAN 	  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_50_Verify_Search_With_FirstName_And_LastName_All_Of_US_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                     | SearchInput | ID         | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with First Name,Last Name and Business Name Filter | MARK CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_51_Verify_Search_With_FullName_All_Of_US_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                   | SearchInput  | ID         | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and business name Filte | MARK A CUBAN | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
    Scenario Outline: Tc_52_Verify_Search_With_Last_Name_Distance_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                              | SearchInput | ID         | BusinessName                        | ZipCode | VerifyText | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, business name and distance Filter | CUBAN       | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | 75226   | CUBAN      | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_53_Verify_Search_With_FirstName_And_LastName_Distance_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                                          | SearchInput | ID         | BusinessName                        | ZipCode | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, business name and distance Filter | MARK CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | 75226	` | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_54_Verify_Search_With_FullName_Distance_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			| SearchInput 	| ID         | BusinessName                        |ZipCode	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, business name and distance Filter | MARK A CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |75226	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_55_Verify_Search_With_Last_Name_Metro_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                           | SearchInput | ID         | BusinessName                        | Metro  | VerifyText | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, business name and Metro Filter | CUBAN       | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | Dallas | CUBAN      | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_56_Verify_Search_With_FirstName_And_LastName_Metro_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 					 | SearchInput | ID         | BusinessName                        |Metro | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, business name and Metro Filter | MARK CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |Dallas| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_57_Verify_Search_With_FullName_Metro_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 		 | SearchInput 	| ID         | BusinessName                        |Metro	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, business name and Metro Filter | MARK A CUBAN | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |Dallas	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_58_Verify_Search_With_Last_Name_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                           | SearchInput | ID         | BusinessName                        | State | VerifyText | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, business name and State Filter | CUBAN       | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | Texas | CUBAN      | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_59_Verify_Search_With_FirstName_And_LastName_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 					  | SearchInput | ID         | BusinessName                        |State| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, business name and State Filter  | MARK CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |Texas| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_60_Verify_Search_With_FullName_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                           | SearchInput  | ID         | BusinessName                        | State | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, business name and State Filter | MARK A CUBAN | 1797049078 | Bailoutsleuth. Com Foundation, Inc. | Texas | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_61_Verify_Search_With_Last_Name_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                          			| SearchInput | ID         | ZipCode  | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Last Name, Zipcode and Business Name Filter  | CUBAN       | 1797049078 |	75220 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_62_Verify_Search_With_FirstName_And_LastName_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                     		  | SearchInput | ID         | ZipCode	|BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with First Name,Last Name, Zipcode and Business Name Filter | MARK CUBAN  | 1797049078 | 75220 	|Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_63_Verify_Search_With_FullName_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                          			| SearchInput | ID   | ZipCode    | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with Full Name, Zipcode and Business Name Filter  | MARK A CUBAN       | 1797049078 |	75220 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_64_Verify_Search_With_Last_Name_Metro_Information_Multiple_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                    				| SearchInput|ID        | Stateormetros   | BusinessName |VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                            |
      | Person Search with Last Name, Multiple Metro Location  and Business Name Filter | CUBAN      |1797049078| Dallas#New York | Bailoutsleuth. Com Foundation, Inc.|CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234|
  @Regression
  Scenario Outline:Tc_65_Verify_Search_With_FirstName_And_LastName_Metro_Information_Multiple_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                               		  | SearchInput |ID        | Stateormetros   | BusinessName						  |VerifyText    | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with First Name,Last Name, Multiple Metro and Business Name  Filter | MARK CUBAN  |1797049078| Dallas#New York | Bailoutsleuth. Com Foundation, Inc.| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_66_Verify_Search_With_FullName_Metro_Information_Multiple_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                   		  | SearchInput  |ID        | Stateormetros   | BusinessName						 |VerifyText   | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Person Search with Full Name, Multiple Metro and Business Name Filter | MARK A CUBAN |1797049078| Dallas#New York | Bailoutsleuth. Com Foundation, Inc.|MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_67_Verify_Search_With_Last_Name_With_Multiple_States_In_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     			   | SearchInput  |ID        | Stateormetros          | BusinessName |VerifyText   		 | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, multiple State and BusinessName Filter | CUBAN 		  |1797049078| Texas#New York         | Bailoutsleuth. Com Foundation, Inc.|MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_68_Verify_Search_With_FirstName_And_LastName_With_Multiple_States_In_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     						  | SearchInput  |ID        | Stateormetros          | BusinessName |VerifyText   		 | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using First Name,Last Name, multiple State and BusinessName Filter | MARK CUBAN |1797049078| Texas#New York         | Bailoutsleuth. Com Foundation, Inc.|MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_69_Verify_Search_With_FullName_With_Multiple_States_In_State_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                     			   | SearchInput  |ID        | Stateormetros          | BusinessName |VerifyText   		 | FullName     | SpouseName     | Address                           |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, multiple State and BusinessName Filter | MARK A CUBAN |1797049078| Texas#New York         | Bailoutsleuth. Com Foundation, Inc.|MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban| 2931 Elm St Dallas TX 75226       |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_70_Verify_Search_With_Last_Name_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              | SearchInput | ID         | ZipCode     | BusinessName                        | VerifyText | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name and Zipcode Filter | CUBAN       | 1797049078 | 75226,75220 | Bailoutsleuth. Com Foundation, Inc. | CUBAN      | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_71_Verify_Search_With_FirstName_And_LastName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                             | SearchInput |ID         | ZipCode        | BusinessName|VerifyText 		   | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
      | Search for the record in Person Search using First name and Last Name and Zipcode Filter | MARK CUBAN  | 1797049078| 75226,75220    | Bailoutsleuth. Com Foundation, Inc.|MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_72_Verify_Search_With_FullName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Business_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<BusinessName>" to Business Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              | SearchInput  |ID          | ZipCode         | BusinessName|VerifyText   			| FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and Zipcode Filter | MARK A CUBAN | 1797049078 |  75226,75220    | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_73_Verify_Search_With_Last_Name_All_Of_US_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              				 | SearchInput |ID        | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Last Name and SpouseName using Person Search | CUBAN       |1797049078| CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_74_Verify_Search_With_FirstName_And_LastName_All_Of_US_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                             			 | SearchInput|ID         | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with First Name, Last Name and SpouseName using Person Search | MARK CUBAN |1797049078 | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_75_Verify_Search_With_FullName_All_Of_US_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              				   | SearchInput |ID        | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Full Name and SpouseName using Person Search   | MARK CUBAN  |1797049078| CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_Tc_76_Verify_Search_With_Last_Name_Distance_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              				 			| SearchInput |ID        | ZipCode |VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Last Name ,Distance and SpouseName using Person Search  | CUBAN       |1797049078| 33139   | CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_77_Verify_Search_With_FirstName_And_LastName_Distance_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                             			 		   | SearchInput|ID         | ZipCode| VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with First Name, Last Name ,Distance and Spouse Name using Person Search | MARK CUBAN |1797049078 |33139	 | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_78_Verify_Search_With_FullName_Distance_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              				 | SearchInput |ID        | ZipCode | VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                    |
      | Search with Full Name,Distance and using Person Search   | MARK CUBAN  |1797049078|33139    | CUBAN      | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_79_Verify_Search_With_Last_Name_Metro_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                    				| SearchInput|ID        | Stateormetros   |VerifyText | FullName     | SpouseName      |Address                    | APIBODY                                                                            |
      | Person Search with Last Name, Multiple Metro Location  and Spouse Name Filter 	| CUBAN      |1797049078| Dallas#New York | CUBAN     | MARK A CUBAN | Tiffany S Cuban |2931 Elm St Dallas TX 75226| Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234|
  @Regression
  Scenario Outline:Tc_80_Verify_Search_With_FirstName_And_LastName_Metro_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                    | SearchInput | ID         | Stateormetros   | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Person Search with First Name,Last Name, Multiple Metro and Spouse Name  Filter | MARK CUBAN  | 1797049078 | Dallas#New York | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_81_Verify_Search_With_FullName_Metro_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 	   | SearchInput   | ID         |Metro	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, spouse name and Metro Filter   | MARK A CUBAN  | 1797049078 |Dallas	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_82_Verify_Search_With_Last_Name_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 	   | SearchInput 	 | ID         |State| VerifyText  | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, spouse name and State Filter   | CUBAN  		 | 1797049078 |Texas| CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_83_Verify_Search_With_FirstName_And_LastName_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 					| SearchInput | ID         |State| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, spouse name and State Filter    | MARK CUBAN  | 1797049078 |Texas| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_84_Verify_Search_With_FullName_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 	   | SearchInput   | ID         |State	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, spouse name and State Filter   | MARK A CUBAN  | 1797049078 |Texas	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_85_Verify_Search_With_Last_Name_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 		  | SearchInput  | ID         |ZipCode	| VerifyText  | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, zipcode and spouse name Filter    | CUBAN  		 | 1797049078 |75226	| CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_86_Verify_Search_With_FirstName_And_LastName_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 				    | SearchInput | ID         |ZipCode| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name zipcode and spouse name Filter   | MARK CUBAN  | 1797049078 |75226  | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_87_Verify_Search_With_FullName_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 		 | SearchInput 	 | ID         |ZipCode	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name zipcode and spouse name Filter    | MARK A CUBAN  | 1797049078 |75226	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_88_Verify_Search_With_Last_Name_Metro_Information_Multiple_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 	| SearchInput  | ID         |Stateormetros	| VerifyText  | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, spouse name and Metro Filter| CUBAN  	   | 1797049078 |Dallas#New York	| CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_89_Verify_Search_With_FirstName_And_LastName_Metro_Information_Multiple_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 				   | SearchInput | ID         |Stateormetros	 | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, spouse name and Metro Filter   | MARK CUBAN  | 1797049078 |Dallas#New York	`| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_90_Verify_Search_With_FullName_Multiple_Filter_Metro_Location_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 	  | SearchInput   | ID         |Stateormetros	| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, spouse name and Metro Filter  | MARK A CUBAN  | 1797049078 |Dallas#New York	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_91_Verify_Search_With_Last_Name_With_Multiple_States_In_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                             		 | SearchInput |ID         | Stateormetros     |VerifyText 	  | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Multiple States and Spouse Name Filter | CUBAN  	   | 1797049078| Texas#New York    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_92_Verify_Search_With_FirstName_And_LastName_With_Multiple_States_In_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                             		 			| SearchInput |ID         | Stateormetros     |VerifyText 	  | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
      | Search for the record in Person Search using First Name,Last Name, Multiple States and Spouse Name Filter | MARK CUBAN  | 1797049078| Texas#New York    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_93_Verify_Search_With_FullName_With_Multiple_States_In_State_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                             		 | SearchInput  |ID         | Stateormetros     |VerifyText 	  | FullName     | SpouseName     |Address                      |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Multiple States and Spouse Name Filter | MARK A CUBAN | 1797049078| Texas#New York    | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226  |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_94_Verify_Search_With_Last_Name_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              | SearchInput  |ID          | ZipCode         | BusinessName|VerifyText   			| FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and Zipcode Filter | CUBAN | 1797049078 |  75226,75220    | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_95_Verify_Search_With_FirstName_And_LastName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              | SearchInput  |ID          | ZipCode         | BusinessName|VerifyText   			| FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and Zipcode Filter | MARK CUBAN | 1797049078 |  75226,75220    | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_96_Verify_Search_With_FullName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              | SearchInput  |ID          | ZipCode         | BusinessName|VerifyText   			| FullName     | SpouseName     |Address                     |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and Zipcode Filter | MARK A CUBAN | 1797049078 |  75226,75220    | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_97_Verify_Search_With_Last_Name_All_Of_US_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              						| SearchInput  |ID          |  Age  | BusinessName|VerifyText   			| FullName    | SpouseName   |Address         |APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Age, Business Name and Spouse Name Filter | CUBAN 	   | 1797049078 |  45   | Bailoutsleuth. Com Foundation, Inc.   |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_98_Verify_Search_With_FirstName_And_LastName_All_Of_US_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              								   | SearchInput  |ID          |  Age  | BusinessName|VerifyText   			| FullName    | SpouseName   |Address         |APIBODY                                                                    |
      | Search for the record in Person Search using First name,Last Name, Age, Business Name and Spouse Name Filter | MARK CUBAN   | 1797049078 |  45   | Bailoutsleuth. Com Foundation, Inc.   |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_99_Verify_Search_With_FullName_All_Of_US_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information \
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                              						| SearchInput  |ID          |  Age  | BusinessName|VerifyText   			| FullName    | SpouseName   |Address         |APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Age, Business Name and Spouse Name Filter | MARK A CUBAN | 1797049078 |  45   | Bailoutsleuth. Com Foundation, Inc.   |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban|2931 Elm St Dallas TX 75226 |Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_100_Verify_Search_With_Last_Name_Distance_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    #And User Verifies the Estimated Giving Capacity, Donations, Connections, Net Worth, Income and Real Estate Information
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                                                                                | SearchInput | ID         | ZipCode | Age | BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Distance, Age, Business Name and Spouse Name Filter | CUBAN       | 1797049078 | 75226   | 45  | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_101_Verify_Search_With_FirstName_And_LastName_Distance_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						               | SearchInput | ID         | BusinessName                        |ZipCode|Age| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name Distance, Age, Business name and spouse name Filter | MARK CUBAN  | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |75220  | 45| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_102_Verify_Search_With_FullName_Distance_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Enters ZipCode "<ZipCode>" from the Distance Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						   | SearchInput 	| ID         | BusinessName                        |ZipCode	|Age| VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Distance, Age, Business name and spouse name Filter| MARK A CUBAN | 1797049078 | Bailoutsleuth. Com Foundation, Inc. |75220	| 45|MARK A CUBAN  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_103_Verify_Search_With_Last_Name_Metro_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			            | SearchInput  | ID         |Metro|Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Metro, Age, Business name and spouse name Filter| CUBAN  	   | 1797049078 |Dallas|45| Bailoutsleuth. Com Foundation, Inc. | CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_104_Verify_Search_With_FirstName_And_LastName_Metro_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									 | SearchInput |Metro	| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, Metro, Age, Business name and spouse name Filter | MARK CUBAN  |Dallas| 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_105_Verify_Search_With_FullName_Metro_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Enters Metro "<Metro>" from the Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						 | SearchInput   | ID        	|Metro |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Metro, Age, Business name and spouse name Filter | MARK A CUBAN  | 1797049078 |Dallas|45 | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_106_Verify_Search_With_Last_Name_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			            | SearchInput  | ID         |State|Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name State, Age, Business name and spouse name Filter | CUBAN  	   | 1797049078 |Texas|45 | Bailoutsleuth. Com Foundation, Inc. | CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_107_Verify_Search_With_FirstName_And_LastName_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									| SearchInput |State  | ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name State, Age, Business name and spouse name Filter | MARK CUBAN  |Texas  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_108_Verify_Search_With_FullName_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters State "<State>" from the State Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						| SearchInput   | ID         |State|Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name State, Age, Business name and spouse name Filter | MARK A CUBAN  | 1797049078 |Texas|45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_109_Verify_Search_With_Last_Name_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			                | SearchInput  | ID         |ZipCode|Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name , Zipcode, Age, Business name and spouse name Filter | CUBAN  	   | 1797049078 |75226|45 | Bailoutsleuth. Com Foundation, Inc. | CUBAN 	| MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_110_Verify_Search_With_FirstName_And_LastName_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									  	| SearchInput |ZipCode| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name , Zipcode, Age, Business name and spouse name Filter | MARK CUBAN  |75226  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_111_Verify_Search_With_FullName_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						   | SearchInput   |ZipCode| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name , Zipcode, Age, Business name and spouse name Filte | MARK A CUBAN  |75226  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_112_Verify_Search_With_Last_Name_Metro_Information_Multiple_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			                  	  | SearchInput| ID         |Stateormetros	|Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, multiple Metro, Age, Business name and spouse name Filter | CUBAN  	   | 1797049078 |Dallas#New York|45 | Bailoutsleuth. Com Foundation, Inc. | CUBAN 	| MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_113_Verify_Search_With_FirstName_And_LastName_Metro_Information_Multiple_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									  	      | SearchInput |Stateormetros	| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, multiple Metro, Age, Business name and spouse name Filter | MARK CUBAN  |Dallas#New York  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_114_Verify_Search_With_FullName_Metro_Information_Multiple_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Metro Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						     	 | SearchInput   |Stateormetros	| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, multiple Metro, Age, Business name and spouse name Filter| MARK A CUBAN  |Dallas#New York | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_115_Verify_Search_With_Last_Name_With_Multiple_States_In_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			                      | SearchInput  | ID         |Stateormetros	|Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, multiple State, Age, Business name and spouse name Filter | CUBAN  	   | 1797049078 |Texas#New York|45 | Bailoutsleuth. Com Foundation, Inc. | CUBAN 	| MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_116_Verify_Search_With_FirstName_And_LastName_With_Multiple_States_In_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									  	  	  | SearchInput |Stateormetros	| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, multiple State, Age, Business name and spouse name Filter | MARK CUBAN  |Texas#New York  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_117_Verify_Search_With_FullName_With_Multiple_States_In_State_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Select the multiple State or metro "<Stateormetros>" from the State or Metro Location Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						     	 | SearchInput   |Stateormetros	| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, multiple State, Age, Business name and spouse name Filter| MARK A CUBAN  |Texas#New York | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_118_Verify_Search_With_Last_Name_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			                  		| SearchInput  | ID         |ZipCode	 |Age| BusinessName                        | VerifyText| FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name, Multiple Zipcode, Age, Business name and spouse name Filter | CUBAN  		| 1797049078 |75226,75220|45 | Bailoutsleuth. Com Foundation, Inc. | CUBAN 	| MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_119_Verify_Search_With_FirstName_And_LastName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 									  	  		| SearchInput |ZipCode	  | ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name, Multiple Zipcode, Age, Business name and spouse name Filter | MARK CUBAN  |75226,75220  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. | MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_120_Verify_Search_With_FullName_With_Multiple_ZipCodes_By_ZipCode_Filter_With_Age_Business_Name_Spouse_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the single or multiple zipcode "<ZipCode>" from the Zipcode Filter
    And User Click on More options button
    And User Selects the age "<Age>" from age slider
    And User Enters the Business Name "<BusinessName>" to Business Name input
    And User Enters the "<SpouseName>" to Spouse Name input
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 						     		| SearchInput   |ZipCode		| ID         |Age| BusinessName                        | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name, Multiple Zipcode, Age, Business name and spouse name Filter | MARK A CUBAN  |75226,75220  | 1797049078 |45 | Bailoutsleuth. Com Foundation, Inc. |MARK A CUBAN  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_121_Verify_Search_With_Last_Name_All_Of_US_Filter_With_With_Suffix
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Expand Arrow
    When User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search "<LastFirstMiddleName>"
    And User Enters "<Suffix>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   		 | LastFirstMiddleName|Suffix| ID         | VerifyText | FullName            | SpouseName    | Address                           | APIBODY                                                                             |
      | Search for the record in Person Search using Last Name and suffix Filter | GATES   			  |SR    | 2848853825 | GATES 	   | WILLIAM W GATES, SR | Joann I Gates | 2385 Moon Lake Rd Dundee MS 38626 | WILLIAM#GATES#2385 Moon Lake Rd#Dundee#MS#38626#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_122_Verify_Navigation_From_Person_Search_To_Organization_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    Then Verify user is on Person Search page
    When User Click on Organization link
    Then User is navigated to Organization Search page
    Examples:
      | testScenario 										  |
      | Navigation from person search to organization search  |
  @Regression
  Scenario Outline: Tc_123_Verify_Navigation_From_Person_Search_To_Address_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    Then Verify user is on Person Search page
    When User Click on Address link
    Then User is navigated to Address Search page
    Examples:
      | testScenario 									 |
      | Navigation from person search to address search  |
  @Regression
  Scenario Outline: Tc_124_Verify_Navigation_From_Person_Search_To_Advanced_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    Then Verify user is on Person Search page
    When User Click on Advanced Search button
    Then User is navigated to Advanced Search page
    Examples:
      | testScenario 									 |
      | Navigation from person search to advance search  |
  @Regression
  Scenario Outline:Tc_126_Verify_Search_And_Save_Snapshot_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    And User Click on Save button
    And User Click on Open snapshot button
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                       | SearchInput |ID       | VerifyText  | FullName    | SpouseName   |Address                                 | APIBODY                                                                                |
      | verify Search and Save Snapshot using Person Search| Elon R Musk |422299119| Elon R Musk | Elon R Musk | Tosca J Musk |12250 Castlegate Dr Los Angeles CA 90049| Elon#Musk#12250 Castlegate Dr#Los Angeles#CA#90049#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_127_Verify_Search_And_Data_Source_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    And User Click on Each data source and Verifies user is navigated to each data source in Research Details
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                              						| SearchInput |ID       | VerifyText  | FullName    | SpouseName   |Address                                 | APIBODY                                                                                |
      | Search with Name and Data source navigation using Person Search | Elon R Musk |422299119| Elon R Musk | Elon R Musk | Tosca J Musk |12250 Castlegate Dr Los Angeles CA 90049| Elon#Musk#12250 Castlegate Dr#Los Angeles#CA#90049#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_128_Verify_Search_And_Save_Snapshot_Verify_Data_SourceUsing_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    And User Click on Save button
    And User Click on Open snapshot button
    And User Click on Each data source and Verifies user is navigated to each data source in Research Details
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario                                       			  | SearchInput |ID       | VerifyText  | FullName    | SpouseName   |Address                                 | APIBODY                                                                                |
      | Search And Save and Data source navigation using Person Search| Elon R Musk |422299119| Elon R Musk | Elon R Musk | Tosca J Musk |12250 Castlegate Dr Los Angeles CA 90049| Elon#Musk#12250 Castlegate Dr#Los Angeles#CA#90049#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_130_Verify_Search_With_LastName_And_Suffix_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Expand Arrow
    When User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search "<LastFirstMiddleName>"
    And User Enters "<Suffix>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   		 | LastFirstMiddleName|Suffix| ID         | VerifyText  | FullName           | SpouseName    | Address                           | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name and suffix Filter | GATES    		  |SR    | 2848853825 | GATES 	    | WILLIAM W GATES, SR | Joann I Gates | 2385 Moon Lake Rd Dundee MS 38626 | WILLIAM#GATES#2385 Moon Lake Rd#Dundee#MS#38626#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_131_Verify_Search_With_FirstName_And_LastName_And_Suffix_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Expand Arrow
    When User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search "<LastFirstMiddleName>"
    And User Enters "<Suffix>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   		   			 | LastFirstMiddleName|Suffix| ID         | VerifyText     | FullName            | SpouseName    | Address                           | APIBODY                                                                             |
      | Search for the record in Person Search using First Name, Last Name and suffix Filter | WILLIAM GATES   	  |SR    | 2848853825 | WILLIAM W GATES| WILLIAM W GATES, SR | Joann I Gates | 2385 Moon Lake Rd Dundee MS 38626 | WILLIAM#GATES#2385 Moon Lake Rd#Dundee#MS#38626#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_132_Verify_Search_With_FirstName_Middle_Name_And_LastName_And_Suffix_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Expand Arrow
    When User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search "<LastFirstMiddleName>"
    And User Enters "<Suffix>"
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   		 | LastFirstMiddleName|Suffix| ID         | VerifyText     | FullName            | SpouseName    | Address                           | APIBODY                                                                             |
      | Search for the record in Person Search using Full Name and suffix Filter | WILLIAM W GATES    |SR    | 2848853825 | WILLIAM W GATES| WILLIAM W GATES, SR | Joann I Gates | 2385 Moon Lake Rd Dundee MS 38626 | WILLIAM#GATES#2385 Moon Lake Rd#Dundee#MS#38626#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline:Tc_133_Verify_Search_And_RecentSearches_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User is navigated to Search Results page
    And User Click on New Search button
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User is navigated to Search Results page
    Then User should be able to view the recently searched profiles "<VerifyText>"
    And User logged out from the application
    Examples:
      | testScenario                                       	  | SearchInput | VerifyText |
      | Search for the record in Person Search using Last Name| CUBAN       | CUBAN      |
  @Regression
  Scenario Outline:Tc_134_Verify_Search_And_Data_Source_Should_Be_Link_Using_Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    Then User Click on Search Button
    And User is navigated to Search Results page
    Then Verify that Data source as a link in Results page
    And User logged out from the application
    Examples:
      | testScenario                                       	  | SearchInput |
      | Search for the record in Person Search using Last Name| CUBAN       |
  @Regression
  Scenario Outline: Tc_135_Verify_Search_With_Last_Name_Single_City_Using Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on City Tab
    And User Enters "<City>" from the City Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   			 | SearchInput 	 | ID         |City      | VerifyText | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Last Name and Single city Filter| CUBAN  		 | 1797049078 |DALLAS, TX| CUBAN 	  | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_141_Verify_Search_With_First_Name_And_Last_Name_Single_City_Using Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on City Tab
    And User Enters "<City>" from the City Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 		   | SearchInput | ID         |City      | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using First Name, Last Name and Single city Filter  | MARK CUBAN  | 1797049078 |DALLAS, TX| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: Tc_147_Verify_Search_With_Full_Name_Single_City_Using Person_Search
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on City Tab
    And User Enters "<City>" from the City Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   		      | SearchInput   | ID         |City	    | VerifyText   | FullName     | SpouseName      | Address                     | APIBODY                                                                    |
      | Search for the record in Person Search using Full Name and Single city Filter | MARK A CUBAN  | 1797049078 |DALLAS, TX	| MARK A CUBAN | MARK A CUBAN | Tiffany S Cuban | 2931 Elm St Dallas TX 75226 | Mark#Cuban#2931 Elm St#Dallas#TX#75226#mcuban@audionet.com#2147448800#1234 |
  @Regression
  Scenario Outline: TC_156_Verify_the_Delete_Icon_In_Recent_Searches_Before_Profile_Name
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Verify the pencil icon on Recent Searches
    And User Click on the pencil icon
    Then Verify delete icon
    Examples:
      | testScenario 									   |
      | Delete Icon In Recent Searches Before Profile Name |
  @Regression
  Scenario Outline: TC_157_Verify_the_Single_Profile_Delete_Functionality_In_Recent_Searches
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Verify the pencil icon on Recent Searches
    And User Click on the pencil icon
    Then Verify delete icon
    And User Click on any one profile delete icon
    Then Verify profile is deleted from recent searches
    Examples:
      | testScenario 						  |
      | Single Profile Delete functionality   |
  @Regression
  Scenario Outline: TC_158_Verify_the_ClearAll_Profiles_Delete_Functionality_In_Recent_Searches
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Verify the pencil icon on Recent Searches
    And User Click on the pencil icon
    Then Verify Clear All icon and Click
    Then Verify No Records from recent searches
    Examples:
      | testScenario 							  |
      | Clear All profiles Delete functionality   |
  @Regression
  Scenario Outline: TC_159_Verify_the_Search_Count_And_Top_5_Result
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    And User Click on Expand Arrow
    When User Enters Person Last Name or First-Last Name or First-Middle-Last, name To Search "<LastFirstMiddleName>"
    And User Enters "<Suffix>"
    Then User Click on Search Button
    And User Verifies Search count and top 5 results "<VerifyText>"
    And User logged out from the application
    Examples:
      | testScenario 													   		 | LastFirstMiddleName|Suffix| VerifyText  |
      | Search for the record in Person Search using Last Name and suffix Filte  | GATES   			  |SR    | GATES 	   |
  @Regression
  Scenario Outline: TC_160_Verify_Search_With_FN_LN_and_Non_Primary_State
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on State Tab
    And User Enters Non Primary State "<State>" from the State Location Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 				 | SearchInput | ID         |State   | VerifyText    | FullName      | SpouseName     | Address                             | APIBODY                                                                               |
      | Search for the record in Person Search using First Name, Last Name and Non-Primary State Filter  | CAROL AARON | 2222300159 |Colorado| CAROL R AARON | CAROL R AARON | Steven L Aaron | 9707 Meadowbrook Dr Dallas TX 75220 | CAROL#AARON#9707 Meadowbrook Dr#Dallas#TX#75220#carolaaron@alltel.net#2143697775#1234 |
  @Regression
  Scenario Outline: TC_161_Verify_Search_With_FN_LN_and_Non_Primary_Zip
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the Non Primary zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 			   | SearchInput | ID         |ZipCode   | VerifyText   | FullName      | SpouseName     | Address                             | APIBODY                                                                               |
      | Search for the record in Person Search using First Name, Last Name and Non-Primary Zip Filter  | CAROL AARON | 2222300159 |81611     |CAROL R AARON | CAROL R AARON | Steven L Aaron | 9707 Meadowbrook Dr Dallas TX 75220 | CAROL#AARON#9707 Meadowbrook Dr#Dallas#TX#75220#carolaaron@alltel.net#2143697775#1234 |
  @Regression
  Scenario Outline: TC_162_Verify_Search_With_FN_LN_and_Non_Primary_Zip_with_9 digits
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the Non Primary zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 				      | SearchInput | ID         |ZipCode   | VerifyText    | FullName      | SpouseName     | Address                             | APIBODY                                                                               |
      | Search for the record in Person Search using First Name, Last Name and Non-Primary Zip with 9 digits  | CAROL AARON | 2222300159 |60045-3657| CAROL R AARON | CAROL R AARON | Steven L Aaron | 9707 Meadowbrook Dr Dallas TX 75220 | CAROL#AARON#9707 Meadowbrook Dr#Dallas#TX#75220#carolaaron@alltel.net#2143697775#1234 |
  @Regression
  Scenario Outline: TC_163_Verify_Search_With_FN_LN_and_Non_Primary_Zip_with_5 digits
    Given User login into application to execute "<testScenario>"
    Then User Click on Search Tab
    When User Enters Person Name To Search "<SearchInput>"
    And User Click on Zipcode Tab
    And User Enters the Non Primary zipcode "<ZipCode>" from the Zipcode Filter
    Then User Click on Search Button
    And User identifies the Client Profile based on "<ID>"
    And User Verifies the header labels WP WS Full Name Address Source Type Net Worth
    And User Extracts the desired record and Verify Search is Successful with "<VerifyText>"
    Then User Verifies the WealthScore WealthScore Description and P2G Details "<APIBODY>"
    And User Verifies Spouse Name with input "<SpouseName>" and Address "<Address>"
    And User Verifies the Save Button, Modify Search Button and New Search Button's display
    Then User Click on the matched record
    And User Validate the Name of the profile with Full Name in Profile Summary "<FullName>"
    Then User Verifies the Research Details page tab with one of the header
    Then Verify the Connections page tab with one of the header
    And User logged out from the application
    Examples:
      | testScenario 													   				 				      | SearchInput | ID         |ZipCode   | VerifyText    | FullName      | SpouseName     | Address                             | APIBODY                                                                               |
      | Search for the record in Person Search using First Name, Last Name and Non-Primary Zip with 5 digits  | CAROL AARON | 2222300159 |81611     | CAROL R AARON | CAROL R AARON | Steven L Aaron | 9707 Meadowbrook Dr Dallas TX 75220 | CAROL#AARON#9707 Meadowbrook Dr#Dallas#TX#75220#carolaaron@alltel.net#2143697775#1234 |



