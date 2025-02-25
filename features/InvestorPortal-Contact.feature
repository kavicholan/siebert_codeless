@InvestorPortal-Contact @UIAutomation
Feature: Contact

#  Scenario: TC01_Contact_Verify by giving all valid details then click on submit button now verify  "Thanks for submitting the form" confirmation message gets displayed then check configured email receives for specific created contact details gets display correctly as per Template
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "5" seconds
#    Then Check "HomePage" is displayed
#    And Wait for "2" seconds
#    Then Check "InvestorPortalPage" is displayed
#    And Wait for "5" seconds
#    And Click on "ContactMenu"
#    And Wait for "5" seconds
#    And Switch to iframe with frame id "hs-form-iframe-0"
#    And Wait for "2" seconds
#    Then Send Keys "testing1@gmail.com" using Actions into "EmailButton"
#    And Wait for "2" seconds
#    And select "10999911" into "Account_Number."
#    And Wait for "2" seconds
#    Then Send Keys "1234567890" using Actions into "mobilephone"
#    And Wait for "2" seconds
#    And select "Update My Account" into "how_can_we_help"
#    And Wait for "2" seconds
#    And Enter "For Testing Purpose" into "ContactQuerySection"
#    And Wait for "2" seconds
#    And Click on "Checkbox"
#    And Wait for "2" seconds
#    And Click on "Submitbutton"
#    And Wait for "2" seconds
#    Then Check "Success_Message" is displayed
#    And Wait for "10" seconds
#    And Get mail text using "Email_UserName", "Email_Password", "EmailContactsubject", "EmailContactSenderName", "SiebertContactMailConfirmation" and store email text into "EmailText"
#    Then Assert "EmailText" contains "Phone number: 1234567890 Email: testing1@gmail.com Query: For Testing Purpose"
#    And Close browser

  Scenario: TC02_Contact_Enter Invalid email address and verify validation error message 'Please enter a valid email address' gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "ContactMenu"
    And Wait for "10" seconds
    And Switch to iframe with frame id "hs-form-iframe-0"
    And Wait for "2" seconds
    Then Send Keys "testing@gmail.com" using Actions into "EmailButton"
    And Wait for "2" seconds
    Then Check "InvalidEmail" is displayed
    And Wait for "2" seconds
    And Close browser

  Scenario: TC03_Contact_Enter Invalid Mobile number and verify validation error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "ContactMenu"
    And Wait for "5" seconds
    And Switch to iframe with frame id "hs-form-iframe-0"
    And Wait for "2" seconds
    Then Enter "1QWER11211" into "mobilephone"
    And Wait for "2" seconds
    Then Check "InvalidMobilephone" is displayed
    And Wait for "2" seconds
    And Close browser

  Scenario: TC04_Contact_Verify by clicking submit button on contact screen without choosing mandatory fields
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "ContactMenu"
    And Wait for "2" seconds
    And Switch to iframe with frame id "hs-form-iframe-0"
    And Wait for "2" seconds
    And Click on "Submitbutton"
    And Wait for "2" seconds
    Then Check "RequiredFieldMessage" is displayed
    And Close browser

  Scenario: TC05_Contact_Verify that user can able to read and view the FAQ's section in the Contact screen in Investor portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "ContactMenu"
    And Wait for "5" seconds
    And Click on "FAQsection"
    Then Check "FAQsection" is displayed
    And Close browser

  Scenario: TC06_Contact_Verify that user can able to click on service email and can able to send an message in Investor portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "ContactMenu"
    And Wait for "5" seconds
    And Click on "Emailsection"
    Then Check "Emailsection" is displayed
    And Close browser


