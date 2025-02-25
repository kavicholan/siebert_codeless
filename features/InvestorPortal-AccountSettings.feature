@InvestorPortal-AccountSettings @UIAutomation
Feature: Account Settings

sdfghjklkdfsatyuildertyu

#Paperless Settings
  Scenario: TC01_PaperlessSettings_Verify Paperless Settings Headers and Text displaying correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "2" seconds
    Then Check "PaperlessSettingsMenu" is displayed
    And Wait for "2" seconds
    And Save data to "PaperlessMessage" from "PaperlessTextMessage" with "XPATH" locator
    Then Assert "PaperlessMessage" contains "Paperless Settings"
    Then Assert "PaperlessMessage" contains "Stop receiving paper statements in the mail. Instead, you can securely view,download or print your statements in the Siebert trading portal. Select the statement(s) below that you would like to receive via email"
    Then Assert "PaperlessMessage" contains "Help reduce the risk of lost or stolen mail"
    Then Assert "PaperlessMessage" contains "Receive email notifications when your statement is available for viewing"
    Then Assert "PaperlessMessage" contains "Easily access online statements whenever you need"
    Then Close browser

  Scenario: TC02_PaperlessSettings_Verify user able to Save Changes all Document Type with Online Only( Paperless).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "5" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "10" seconds
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC03_PaperlessSettings_Verify user able to Save Changes all Document Type with Paper ($2 fee. Also available online).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "5" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "10" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC04_PaperlessSettings_Verify Save changes button gets disabled if user doesn't change any document type.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "2" seconds
    Then Check "DisableSaveButton" is displayed
    And Close browser

  Scenario: TC05_PaperlessSettings_Verify user able to Save Changes Confirmation Document Type as Online Only( Paperless) and other Document Types as Paper ($2 fee. Also available online).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "2" seconds
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC06_PaperlessSettings_Verify user able to Save Changes Statements Document Type as Online Only( Paperless) and other Document Types as Paper ($2 fee. Also available online).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC07_PaperlessSettings_Verify user able to Save Changes Tax Documents Document Type as Online Only( Paperless) and other Document Types as Paper ($2 fee. Also available online).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC08_PaperlessSettings_Verify user able to Save Changes Prospectus,Annual Reports and Proxies Document Type as Online Only( Paperless) and other Document Types as Paper ($2 fee. Also available online).
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "2" seconds
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC09_PaperlessSettings_Verify user able to Save Changes Confirmation Document Type as Paper ($2 fee. Also available online) and other Document Types as Online Only( Paperless)
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "ConfirmationsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC10_PaperlessSettings_Verify user able to Save Changes Statements Document Type as Paper ($2 fee. Also available online) and other Document Types as Online Only( Paperless)
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "StatementsPaperRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC11_PaperlessSettings_Verify user able to Save Changes Tax Documents Document Type as Paper ($2 fee. Also available online) and other Document Types as Online Only( Paperless)
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "TaxDocumentPaperRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser

  Scenario: TC12_PaperlessSettings_Verify user able to Save Changes Prospectus,Annual Reports and Proxies Document Type as Paper ($2 fee. Also available online) and other Document Types as Online Only( Paperless)
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountSettingsMenu"
    And Wait for "2" seconds
    And Click on "PaperlessSettingsMenu"
    And Wait for "5" seconds
    And Hover and click on "ConfirmationsOnlineRadioButton"
    And Hover and click on "StatementsOnlineRadioButton"
    And Hover and click on "TaxDocumentOnlineRadioButton"
    And Hover and click on "ProspectusOnlineRadioButton"
    And Hover and click on "ProspectusPaperRadioButton"
    And Hover and click on "SaveChangesButton"
    And Wait for "2" seconds
    Then Check "EdeliverySuccessToaster" is displayed
    And Close browser


