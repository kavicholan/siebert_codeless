@AdminPortal-ActivityLog @UIAutomation
Feature: AdminPortal-ActivityLog

  Scenario: TC01_ActivityLog_Verify that the User's existing Order status Activities were gets updated in Activity log screen in Admin Portal
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Order Status" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    Then Check "ActivtiyLogTableCheck" is displayed
    And Close browser

  Scenario: TC02_ActivityLog_Verify that the User's existing MF Order Activities were gets updated in Activity log screen in Admin Portal
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Mutual Funds" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "MutualFundUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "MutualFundUI" is equal to "Mutual Funds"
    And Close browser

  Scenario: TC03_ActivityLog_Verify that the User's existing Stock Order Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "10" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Close browser

  Scenario: TC04_ActivityLog_Verify that the User's existing Option Order Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Option Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "OptionOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "OptionOrderUI" is equal to "Option Order"
    And Close browser

#  Scenario: TC05_ActivityLog_Verify that the User's existing All Activities were gets updated in Activity log screen in Admin Portal
#    Given Open website "SiebertAdminPortal" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "5" seconds
#    Then Check "AdminPortalHomePage" is displayed
#    And Wait for "2" seconds
#    And Click on "SelectAccount"
#    And Click on "Account1"
#    And Wait for "5" seconds
#    When Click on "ActivityLog"
#    And Wait for "2" seconds
#    And Enter "10999912" into "ALAccountNumber"
#    And Wait for "2" seconds
#    Then Send Keys "All" using Actions into "AlogCategory"
#    And Press "ArrowDown" key for "2" times
#    And Press "Enter" key for "1" times
#    Then Click on "StartDateCalenderIcon"
#    And Wait for "2" seconds
#    And Click on "RandomMonth1stDay"
#    And Wait for "5" seconds
#    Then Click on "EndDateCalenderIcon"
#    And Wait for "2" seconds
#    And Click on "RandomMonthCurrentDate"
#    And Wait for "2" seconds
#    Then Click on "SubmitQueryButton"
#    And Wait for "10" seconds
#    Then Check "ActivtiyLogTableCheck" is displayed
#    And Close browser

  Scenario: TC06_ActivityLog_Verify that the User's existing Snapshot Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Snapshot" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "SnapshotUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "SnapshotUI" is equal to "Snapshot"
    And Close browser

  Scenario: TC07_ActivityLog_Verify that the User's existing Balance Summary Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Balance Summary" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "BalanceSummaryUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "BalanceSummaryUI" is equal to "Balance Summary"
    And Close browser

  Scenario: TC08_ActivityLog_Verify that the User's existing Account Balance Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Account Balances" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "AccountBalancesUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "AccountBalancesUI" is equal to "Account Balances"
    And Close browser

  Scenario: TC10_ActivityLog_Verify that the User's existing Positions Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Positions" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "PositionsUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "PositionsUI" is equal to "Positions"
    And Close browser

  Scenario: TC11_ActivityLog_Verify that the User's existing Positions Asset View Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Positions Asset View" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "PositionsAssetViewUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "PositionsAssetViewUI" is equal to "Positions Asset View"
    And Close browser

  Scenario: TC12_ActivityLog_Verify that the User's existing Positions Foreign view Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Positions Foreign View" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "PositionForeignViewUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "PositionForeignViewUI" is equal to "Positions Foreign View"
    And Close browser

  Scenario: TC13_ActivityLog_Verify that the User's existing Transaction History Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Transaction History" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "TransactionHistoryUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "TransactionHistoryUI" is equal to "Transaction History"
    And Close browser

  Scenario: TC14_ActivityLog_Verify that the User's existing UGL Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "UnRealized Gain And Loss" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "UnRealizedGainAndLossUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "UnRealizedGainAndLossUI" is equal to "UnRealized Gain And Loss"
    And Close browser

  Scenario: TC15_ActivityLog_Verify that the User's existing RGL Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Realized Gain And Loss" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "RealizedGainAndLossUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "RealizedGainAndLossUI" is equal to "Realized Gain And Loss"
    And Close browser

  Scenario: TC16_ActivityLog_Verify that the User's existing Estimated Income Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Estimated Income" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "EstimatedIncomeUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "EstimatedIncomeUI" is equal to "Estimated Income"
    And Close browser

  Scenario: TC17_ActivityLog_Verify that the User's existing Account Profile Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Account Profile" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "AccountProfileUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "AccountProfileUI" is equal to "Account Profile"
    And Close browser

  Scenario: TC18_ActivityLog_Verify that the User's existing Account Funding Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Account Funding" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "AccountFundingUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "AccountFundingUI" is equal to "Account Funding"
    And Close browser

  Scenario: TC19_ActivityLog_Verify that the User's existing Asset chart Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Asset Chart" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "AssetChartUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "AssetChartUI" is equal to "Asset Chart"
    And Close browser

  Scenario: TC20_ActivityLog_Verify that the User's existing Account Link Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Account Link" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "AccountLinkUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "AccountLinkUI" is equal to "Account Link"
    And Close browser

  Scenario: TC21_ActivityLog_Verify that the Admin portal should not display records for unregistered account user in Activity log screen
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "00000000" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "All" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "Nodatafound" is displayed
    And Close browser

  Scenario: TC22_ActivityLog_Verify by giving start and end date as same date and check applied error message displays in Activity log screen
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "All" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "ActivityLogErronMsg" is displayed
    And Close browser

  Scenario: TC23_ActivityLog_Verify by entering values only in User ID and by tapping on submit query button check error message gets displayed
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "admin" into "AlogUserID"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "RequiredFieldErrorMsg" is displayed
    And Close browser

  Scenario: TC24_ActivityLog_Verify by choosing only Category type and by tapping on submit query button check error message gets displayed
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    Then Send Keys "All" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "RequiredFieldErrorMsg" is displayed
    And Close browser

  Scenario: TC25_ActivityLog_Verify by giving only start date & end date and by tapping on submit query button check error message gets displayed
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "ActivityLogErronMsg" is displayed
    And Close browser

  Scenario: TC26_ActivityLog_Verify by clicking Submit query button without giving mandatory fields check error message gets displayed
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "3" seconds
    Then Check "RequirredFieldErrorMsg" is displayed
    And Close browser

  Scenario: TC27_ActivityLog_Verify that the sorting functionality working fine for the listed records in Activity log screen
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "All" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "10" seconds
    Then Check "ActivitylogTable" is displayed
    Then Click on "AlogSortIcon"
    Then verify sorted records in "ascending order" for the "ActivitylogTable" column "Entry Date  "
    And Click on "AlogSortIcon"
    Then verify sorted records in "descending order" for the "ActivitylogTable" column "Entry Date  "
    And Close browser

  Scenario: TC28_ActivityLog_Verify that the User's existing Investor Mail box Activities were gets updated in Activity log screen in Admin Portal
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Investor Mail Box" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    Then Check "ActivitylogTable" is displayed
    Then Check "ActivtiyLogTableCheck" is displayed
    And Close browser

  Scenario: TC29_ActivityLog_Verify that the pagination working fine for the listed records in Activity log screen
    Given Open website "SiebertAdminPortal" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Order Status" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "12" seconds
    Then Check "ActivitylogTable" is displayed
    And Save data to "1stPage1stRow" from "AlogTable1stRow" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "AlogTableNextPageIcon"
    And Save data to "2ndPage1stRow" from "AlogTable1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" is not equal to "2ndPage1stRow"
    And Wait for "5" seconds
    And Click on "AlogTablePreviousPageIcon"
    Then Assert "2ndPage1stRow" is not equal to "1stPage1stRow"
    And Wait for "2" seconds
    And Click on "AlogTableLastPageIcon"
    And Save data to "LastPage1stRow" from "AlogTable1stRow" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "AlogTableFirstPageIcon"
    And Save data to "1stPage1stRow" from "AlogTable1stRow" with "XPATH" locator
    Then Assert "LastPage1stRow" is not equal to "1stPage1stRow"
    And Close browser

#Non-Proceedable scenario from TC30-TC32 stared
  Scenario: TC30_ActivityLog_Place Options order in Investor portal and verify that the placed options order activites are captured in Activity log screen in Admin Portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "5" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Buy Call" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "5" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Click on "LimitInOptionsOrder"
    Then Send Keys "2" using Actions into "LimitInOptionsOrder"
    And Wait for "2" seconds
    Then Enter "2" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    When Click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "2" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData" using Actions class
    And Wait for "2" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "5" seconds
    And Close browser
    Then Open website "SiebertAdminPortal" in "chrome" browser
    And Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Option Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "10" seconds
    Then Check "ActivitylogTable" is displayed
    And Save data to "OptionOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "OptionOrderUI" is equal to "Option Order"
    And Click on "AlogViewDetailOption"
    And Wait for "10" seconds
    Then Assert "orderID" contains "orderID"
    And Close browser

  Scenario: TC31_ActivityLog_Place MF order in Investor portal and verify that the placed MF order activites are captured in Activity log screen in Admin Portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "4" seconds
    Then Click on "EnterFundSearchBar"
    Then Enter "ASIAXX" into "EnterFundSearchBar"
    And Press "BackSpace" key for "1" times
    And Wait for "4" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "5" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButtonInMF"
    And Wait for "5" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "5" seconds
    And Close browser
    Then Open website "AdminPortalURL" in "chrome" browser
    And Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Mutual Funds" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "10" seconds
    Then Check "ActivitylogTable" is displayed
    And Save data to "MutualFundUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "MutualFundUI" is equal to "Mutual Funds"
    And Click on "AlogViewDetailOption"
    And Wait for "10" seconds
    Then Assert "orderID" contains "orderID"
    And Close browser

  Scenario: TC32_ActivityLog_Place Equity order in Investor portal and verify that the placed equity order activites are captured in View Order Message log in Activity log screen in Admin Portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "A" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    And Click on "BuyButton"
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarketOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "DayDropdown"
    And Wait for "5" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Close browser
    Then Open website "AdminPortalURL" in "chrome" browser
    And Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "AdminPortalHomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "5" seconds
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999912" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "12" seconds
    Then Check "ActivitylogTable" is displayed
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Click on "AlogViewDetailOption"
    And Wait for "10" seconds
    Then Assert "orderID" contains "orderID"
    And Close browser
#Non-Proceedable scenario from TC30-TC32 ended

  Scenario: TC33_ActivityLog_Verify the maximum days note in Activity log screen in Admin portal
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "07/01/2024" into "AlogStartdate"
    And Enter "09/01/2024" into "AlogEnddate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    Then Check "ActivityNotesErrMsgCheck" is displayed
    And Close browser

  Scenario: TC34_ActivityLog_Verify when tapping on view detail check it displays the basic request information,user input and system data for the particular selected data in Activity log screen
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    And Save data to "ViewDetailPage" from "ViewDetailPageInfo" with "XPATH" locator
    Then Assert "ViewDetailPage" contains "Basic Request Information"
    Then Assert "ViewDetailPage" contains "User Input"
    Then Assert "ViewDetailPage" contains "System Data"
    And Close browser

  Scenario: TC35_ActivityLog_Verify when tapping on Previous request it redirects to previous section and check it displays the basic information,user input and system data
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Save data to "BeforeRequest" from "AlogTable1stRow" with "XPATH" locator
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    Then Click on "PreviousRequest"
    And Wait for "5" seconds
    And Save data to "ViewDetailPage" from "ViewDetailPageInfo" with "XPATH" locator
    Then Assert "ViewDetailPage" contains "Basic Request Information"
    Then Assert "ViewDetailPage" contains "User Input"
    Then Assert "ViewDetailPage" contains "System Data"
    And Close browser

  Scenario: TC36_ActivityLog_Verify when tapping on Next request it redirects to next section and check it displays the basic information,user input and system data
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Save data to "BeforeRequest" from "Alogentrydate" with "XPATH" locator
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    Then Click on "NextRequest"
    And Wait for "5" seconds
    And Save data to "AfterRequest" from "Alogentrydate1" with "XPATH" locator
    Then Assert "BeforeRequest" is not equal to "AfterRequest"
    And Close browser

  Scenario: TC37_ActivityLog_Verify when tapping on Back to search result it shows the Detailed data of applied date filter
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Save data to "BeforeRequest" from "AlogTable1stRow" with "XPATH" locator
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    Then Click on "BacktoSearchResults"
    And Wait for "5" seconds
    And Save data to "AfterRequest" from "AlogTable1stRow" with "XPATH" locator
    Then Assert "BeforeRequest" is equal to "AfterRequest"
    And Close browser

  Scenario: TC38_ActivityLog_Verify when tapping on Entire section and check it displays the detailed data for the specific action type
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Order Status" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "OrderStatusUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "OrderStatusUI" is equal to "Order Status"
    And Save data to "BeforeRequest" from "AlogTable1stRow" with "XPATH" locator
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    Then Click on "EntireSection"
    And Wait for "5" seconds
    And Save data to "AfterRequest" from "AlogTable1stRow" with "XPATH" locator
    Then Assert "BeforeRequest" is equal to "AfterRequest"
    And Close browser

  Scenario: TC39_ActivityLog_Verify when tapping on any action type it displays the detailed data for the specific category type
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
    When Click on "ActivityLog"
    And Wait for "2" seconds
    And Enter "10999911" into "ALAccountNumber"
    And Wait for "2" seconds
    Then Send Keys "Stock Order" using Actions into "AlogCategory"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "StartDateCalenderIcon"
    And Wait for "2" seconds
    And Click on "RandomMonth1stDay"
    And Wait for "5" seconds
    Then Click on "EndDateCalenderIcon"
    And Wait for "3" seconds
    And Click on "RandomMonthCurrentDate"
    And Wait for "2" seconds
    Then Click on "SubmitQueryButton"
    And Wait for "5" seconds
    And Save data to "StockOrderUI" from "ActivtiyLogTableCheck" with "XPATH" locator
    Then Assert "StockOrderUI" is equal to "Stock Order"
    And Save data to "BeforeRequest" from "AlogTable1stRow" with "XPATH" locator
    And Click on "AlogViewDetailOption"
    And Wait for "5" seconds
    Then Click on "ActionType"
    And Wait for "5" seconds
    And Save data to "AfterRequest" from "AlogTable1stRow" with "XPATH" locator
    Then Assert "BeforeRequest" is not equal to "AfterRequest"
    And Close browser
