@InvestorPortal-Login @UIAutomation
Feature: Login

  Scenario: TC01_Login_Enter valid userid and password and verify successful login
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
#    And Click on "SiebertLoginPopupWindowCloseIcon"
    And Wait for "3" seconds
    Then Check "HomePage" is displayed
    Then Close browser

  Scenario: TC02_Login_Enter Invalid userid and password and verify appropriate error is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "InvalidUsername" from property file into "SiebertUsername"
    And Enter the value "InvalidPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "3" seconds
    Then Check "LoginErrormessage" is displayed
    Then Close browser

  Scenario: TC03_Login_Enter invalid userid and valid password and verify appropriate error is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "InvalidUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "3" seconds
    Then Check "LoginErrormessage" is displayed
    Then Close browser

  Scenario: TC04_Login_Enter Valid userid and Invalid password and verify appropriate error is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "InvalidPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "3" seconds
    Then Check "LoginErrormessage" is displayed
    Then Close browser

  Scenario: TC05_Login_Verify user is not able to login by Leaving userid and password fields as empty
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Press "BackSpace" key for "10" times
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Press "BackSpace" key for "15" times
    Then Check "RequiredfieldforUsername" is displayed
    Then Check "RequiredfieldforPassword" is displayed
    Then Close browser

  Scenario: TC06_Login_Verify that the "Remember Me" option retains user credentials for next time login.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Hover and click on "RememberCheckbox"
    And Click on "loginbutton"
    And Wait for "10" seconds
#    And Click on "SiebertLoginPopupWindowCloseIcon"
    And Wait for "3" seconds
    Then Check "HomePage" is displayed
    And Click on "LogoutMenu"
    And Click on "LogoutButton"
    Then Check "UseridInput" is displayed
    And Click on "loginbutton"
    And Wait for "10" seconds
#    And Click on "SiebertLoginPopupWindowCloseIcon"
    And Wait for "3" seconds
    Then Check "HomePage" is displayed
    Then Close browser

  Scenario: TC07_Login_Verify Login button is in disabled when user launches the URL
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Press "BackSpace" key for "10" times
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Press "BackSpace" key for "15" times
    And Check "loginDisabledButton" is displayed
    Then Close browser



