@AdminPortal-E-Delivery @UIAutomation
Feature: E-Delivery

  Scenario: TC01_E-Delivery_Verify the content and account number is properly visible
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Save data to "edeliveryMessage" from "EdeliveryTextMessage" with "XPATH" locator
    Then Assert "edeliveryMessage" contains "Paperless Settings"
    Then Assert "edeliveryMessage" contains "Stop receiving paper statements in the mail. Instead, you can securely view,download or print your statements in the Siebert trading portal. Select the statement(s) below that you would like to receive via email"
    Then Assert "edeliveryMessage" contains "Help reduce the risk of lost or stolen mail"
    Then Assert "edeliveryMessage" contains "Receive email notifications when your statement is available for viewing"
    Then Assert "edeliveryMessage" contains "Easily access online statements whenever you need"
    Then Close browser

  Scenario: TC02_E-Delivery_Verify user can enroll with completely Online only (paperless) options
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser

  Scenario: TC03_E-Delivery_Verify user can enroll with completely paper options
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser

  Scenario: TC04_E-Delivery_Verify User Can Enroll with Mixed Options for All Document Types
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser

  Scenario: TC05_E-Delivery_Verify the paperless settings is displayed with "Kindly Create Paperless Setting in Admin Portal to Update here" message in the user side until the enrollement initiation is done from admin side
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc1@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "2" seconds
    Then Check "PaperlessSettingsMenu" is displayed
    And Wait for "2" seconds
    And Check "UpdateStatementMessage" is displayed
    And Close browser

  Scenario: TC06_E-Delivery_Verify the paperless settings radio button is choosen by default for all document type
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Check "StatementsOnlineCheckedRadioButton" is displayed
    And Check "ConfirmationsOnlineCheckedRadioButton" is displayed
    And Check "TaxDocumentOnlineCheckedRadioButton" is displayed
    And Check "ProspectusOnlineCheckedRadioButton" is displayed
    And Close browser

  Scenario: TC07_E-Delivery_Verify Enrollment Preference for each document type Set by Admin is accurately Reflected on User Side in Paperless Settings Table
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Close browser
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Check "StatementsPaperCheckedRadioButton" is displayed
    And Check "ConfirmationsPaperCheckedRadioButton" is displayed
    And Check "TaxDocumentPaperCheckedRadioButton" is displayed
    And Check "ProspectusPaperCheckedRadioButton" is displayed
    And Close browser
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser

  Scenario: TC08_E-Delivery_Verify the update made from user side for paperless settings for any document is reflected in admin portal
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Enter "abc@gmail.com" into "EmailTextBox"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Click on "EnrolButton"
    And Wait for "2" seconds
    Then Check "EdeliveryToaster" is displayed
    And Close browser
    Given Open website "SiebertURL" in "chrome" browser
    When Enter "admin" into "SiebertUsername"
    And Enter "Siebert@123" into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    Then Scroll down "SaveChangesButton"
    And Click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser
    Given Open website "AdminPortalURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    And Check "ConfirmationsOnlineCheckedRadioButton" is displayed
    And Check "StatementsOnlineCheckedRadioButton" is displayed
    And Check "TaxDocumentOnlineCheckedRadioButton" is displayed
    And Check "ProspectusOnlineCheckedRadioButton" is displayed
    And Click on "DeleteButton"
    And Wait for "2" seconds
    Then Check "DeletedToasterMessage" is displayed
    And Close browser
