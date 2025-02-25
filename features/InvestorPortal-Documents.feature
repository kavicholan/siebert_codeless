@InvestorPortal-Documents @UIAutomation
Feature: Documents

  Scenario: TC01_Statements_Verify all Subtabs are present and it is in same order as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    Then Check "DocumentsMenuOrder" is displayed
    And Close browser

  Scenario: TC02_Statements_Verify Download button is working or not for each date type-Statements
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "StatementsTab"
    And Wait for "10" seconds
    And Click on "DocDownloadIcon"
    And Wait for "10" seconds
    Then Verify filename contains "Statements.pdf" is download successfully
    And Close browser

  Scenario: TC03_Statements_Verify the pagination for next page is working fine or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "StatementsTab"
    And Wait for "10" seconds
    And Save data to "1stPage1stRow" from "DocPageFirstRecord" with "XPATH" locator
    And Click on "NextPageButton"
    And Wait for "5" seconds
    And Save data to "2ndPage1stRow" from "DocPageFirstRecord" with "XPATH" locator
    Then Assert "1stPage1stRow" is not equal to "2ndPage1stRow"
    And Click on "PreviousPageButton"
    And Wait for "5" seconds
    And Save data to "2ndtime1stPage1stRow" from "DocPageFirstRecord" with "XPATH" locator
    Then Assert "2ndPage1stRow" is not equal to "2ndtime1stPage1stRow"
    Then Assert "1stPage1stRow" is equal to "2ndtime1stPage1stRow"
    And Close browser

  Scenario: TC04_Statements_Verify Statements table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "StatementsTab"
    And Wait for "10" seconds
    And Print all element texts from "DocumentsTableHeaders"
    Then Verify table "DocumentsTableHeaders" headers are present in same order "Date,Download"
    And Close browser

  Scenario: TC05_Confirmations_Verify Download button is working or not for each date type-Confirmation
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "ConfirmationsTab"
    And Wait for "10" seconds
    And Hover and click on "DocDownloadIcon"
    And Wait for "10" seconds
    Then Verify filename contains "Confirms.pdf" is download successfully
    And Close browser

  Scenario: TC06_Confirmations_Verify Confirmation table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "ConfirmationsTab"
    And Wait for "10" seconds
    Then Verify table "DocumentsTableHeaders" headers are present in same order "Date,Download"
    And Close browser

  Scenario: TC07_Tax Documents_Verify Tax Document table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "TaxDocumentsTab"
    And Wait for "10" seconds
    Then Verify table "DocumentsTableHeaders" headers are present in same order "Tax Document, Download"
    And Close browser

  Scenario: TC08_Tax Documents_Verify Download button is working or not for each date type-Tax Documents
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "TaxDocumentsTab"
    And Wait for "10" seconds
    And Click on "DocDownloadIcon"
    And Wait for "10" seconds
    Then Verify filename contains "Tax Form" is download successfully
    And Close browser

  Scenario: TC09_Proxy & Prospectus_Verify Proxy and Prospectus table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "ProxyProspectusTab"
    And Wait for "10" seconds
    And Print all element texts from "DocumentsTableHeaders"
    Then Verify table "DocumentsTableHeaders" headers are present in same order "Received,Accounts,Symbol,Issuer/Material,Type,Action,Due Date,Status"
    Then Check "InvestorMailbox" is displayed
    And Close browser

  Scenario: TC10_Proxy & Prospectus_In Proxy & Prospectus table click on AGENDA for any specific Issuer and verify selected Issuer related proxy vote opens
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "DocumentsMenu"
    And Wait for "2" seconds
    And Click on "ProxyProspectusTab"
    And Wait for "10" seconds
    And Click on "AgendaIcon"
    And Wait for "10" seconds
    And Get Window Handles
    And Switch to the new window
    Then Check "SiebertMeetingAgendaWindow" is displayed
    And Switch back to the original window
    Then Check "HomePage" is displayed
    And Close browser


