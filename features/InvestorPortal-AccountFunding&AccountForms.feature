@InvestorPortal-AccountFunding @UIAutomation
Feature: Account Funding

#Account Funding
  @Test
  Scenario: TC01_Account Funding_Verify Account Funding menu is displaying correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountFundingMenu"
    And Wait for "20" seconds
    Then Check "FundingMenuOrder" is displayed
    Then Close browser

    #Account Form
  Scenario: TC01_Account Form_Verify that clicking on account form navigates to new window to download the forms
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountForms"
    And Wait for "10" seconds
    And Get Window Handles
    And Switch to the new window
    Then Check "SibertFormWindow" is displayed
    And Switch back to the original window
    Then Check "HomePage" is displayed
    And Quit browser
    
    
    
    ccvcvvvvvvvvvvvvv
    
    


