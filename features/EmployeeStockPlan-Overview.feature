@EmployeeStockPlan-Overview @UIAutomation @EmployeeStockPlan
Feature: Overview

  Background:
    Given Connect DB with "host", "username", "password"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SelectAccount"
    And Click on "ESPAccount"
    And Wait for "2" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "TUP01" into "ParticipantId"
    And Press ENTER key
    And Wait for "10" seconds
    And Check "ESP_OverviewButton" is displayed
    Then Click on "ESP_OverviewButton"
    And Wait for 3 second

    #Your Task UI
  Scenario: TC01_Overview_Verify Your Task, All, Stock option, Restricted Award, Perf Award, Perf Option and ESPP Enrol tabs
    Given Assert "Your Task" is present at "OverviewYourTask"
    Then Check "ParticipantIDSearchBox" is displayed
    Then Check "DateInESP" is displayed
    Then Check "OverviewAll" is displayed
    Then Check "StockOptionsButton" is displayed
    Then Check "RestrictedAwardButton" is displayed
    Then Check "PerformanceAwardsButton" is displayed
    Then Check "PerformanceOptionsButton" is displayed
    Then Check "ESPPEnrollButton" is displayed

  Scenario: TC02_Overview_Click on View All, Stock Option, Restricted Award, Perf Award and Perf Option button and verify page is redirecting to respective portfolio screen
    Given Assert "Your Task" is present at "OverviewYourTask"
    When Click on "OverviewAll"
    Then Click on "OverviewYourTaskViewAll"
    And Wait for 2 second
    Then Check "PortfolioPageData" is displayed
    Then Check "OverviewAll" is enabled
    And Wait for 2 second
    Then Click on "ESP_OverviewButton"
    And Wait for 2 second
    Then Click on "StockOptionsButton"
    And Click on "OverviewYourTaskViewAll"
    Then Wait for 2 second
    Then Check "PortfolioPageData" is displayed
    Then Check "StockOptionsButton" is enabled
    And Wait for 2 second
    Then Click on "ESP_OverviewButton"
    And Wait for 2 second
    Then Click on "RestrictedAwardButton"
    And Click on "OverviewYourTaskViewAll"
    Then Wait for 2 second
    Then Check "PortfolioPageData" is displayed
    Then Check "RestrictedAwardButton" is enabled
    And Wait for 2 second
    Then Click on "ESP_OverviewButton"
    Then Wait for 2 second
    And Click on "PerformanceAwardsButton"
    Then Click on "OverviewYourTaskViewAll"
    And Wait for 2 second
    Then Check "PortfolioPageData" is displayed
    Then Check "PerformanceAwardsButton" is enabled
    And Wait for 2 second
    Then Click on "ESP_OverviewButton"
    And Wait for 2 second
    Then Click on "PerformanceOptionsButton"
    Then Click on "OverviewYourTaskViewAll"
    And Wait for 2 second
    Then Check "PortfolioPageData" is displayed
    Then Check "PerformanceOptionsButton" is enabled
    And Wait for 2 second
    And Close browser

  Scenario: TC03_Overview_Verify the pagination functionality for All, Stock Options, Restricted Award, Perf Award, and Perf Option tabs.
    Given Assert "Your Task" is present at "OverviewYourTask"
    When Click on "OverviewAll"
    Then Save data to "String1" from "OverviewGrantNumber" with "XPATH" locator
    Then Print all element texts from "OverviewGrantNumber"
    And Click on "OverviewKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OverviewGrantNumber" with "XPATH" locator
    Then Print all element texts from "OverviewGrantNumber"
    And Assert "String1" is not equal to "String2"
    Then Click on "OverviewKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    When Click on "StockOptionsButton"
    Then Save data to "String1" from "OverviewGrantNumber" with "XPATH" locator
    And Click on "OverviewKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OverviewGrantNumber" with "XPATH" locator
    And Assert "String1" is not equal to "String2"
    Then Click on "OverviewKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    When Click on "RestrictedAwardButton"
    Then Save data to "String1" from "OverviewGrantNumber" with "XPATH" locator
    And Click on "OverviewKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OverviewGrantNumber" with "XPATH" locator
    And Assert "String1" is not equal to "String2"
    Then Click on "OverviewKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    When Click on "PerformanceAwardsButton"
    Then Save data to "String1" from "OverviewGrantNumber" with "XPATH" locator
    And Click on "OverviewKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OverviewGrantNumber" with "XPATH" locator
    And Assert "String1" is not equal to "String2"
    Then Click on "OverviewKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    When Click on "PerformanceOptionsButton"
    Then Save data to "String1" from "OverviewGrantNumber" with "XPATH" locator
    And Click on "OverviewKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OverviewGrantNumber" with "XPATH" locator
    And Assert "String1" is not equal to "String2"
    Then Click on "OverviewKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    And Close browser

  Scenario: TC04_Overview_Verify Sorting Functionality in Overview screen
    Given Click on "OverviewAll"
    When Click on "OverviewSortButton"
    And Wait for 2 second
    Then Click on "OldestFromDropdown"
    And Save data to "OldGrantDate" from "AllGrantDateInOverviewTable" with "XPATH" locator
    And Print all element texts from "AllGrantDateInOverviewTable"
    Then Wait for 2 second
    And Click on "OverviewSortButton"
    Then Click on "NewestFromDropdown"
    And Save data to "NewGrantDate" from "AllGrantDateInOverviewTable" with "XPATH" locator
    And Print all element texts from "AllGrantDateInOverviewTable"
    Then Assert "OldGrantDate" is not equal to "NewGrantDate"
    And Close browser

  Scenario: TC05_Overview_Verify News and Updates section is displayed and verify the page is navigated to Investor Portal All News page when user click on View All button
    Given Check "NewsAndUpdatesHeader" is displayed
    When Click on "OverviewNews&UpdateViewAll"
    And Wait for 3 second
    Then Assert "All News" is present at "OverviewAllNews"
    And Close browser

  Scenario:TC07_Overview_Verify that Dashboard Shares, Estimated Values and Percentage of Vested and Unvested Shares in Overview screen are correctly fetching from DB
    Given Assert "Current Estimated Value" is present at "CurrentEstimatedValueLabel"
#    Then Verify "VestedExercisableShares" UI value with Runtime value "SavedNumber" by Executing the "VestedExercisableShares_SelectQuery" Query and "By comparing UI values in DB2"
    Then Compare UI value for "VestedExercisableShares" against DB value by Executing "VestedExercisableShares_SelectQuery" to check "UI-DB values match after decimal Round off"
    And Compare UI value for "VestedExercisableEstimatedValue" against DB value by Executing "VestedExercisableEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser

#    Calculator
  Scenario:TC8_Overview_Verify that Stock Option Calculator Shares and Estimated Values of Vested Exercisable in Overview screen are correctly fetching from DB
    Given Click on "StockOptionCalculatorIcon"
    When Assert "Stock Option Calculator" is present at "StockOptionCalculator"
#    Then Verify "VestedExercisableShares" UI value with Runtime value "SavedNumber" by Executing the "StockOptions_ExpirationDate_SelectAscQuery" Query and "By comparing UI values in DB2"
    Then Compare UI value for "VestedExercisableShares" against DB value by Executing "VestedExercisableShares_SelectQuery" to check "UI-DB values match after decimal Round off"
    And Compare UI value for "VestedExercisableEstimatedValue" against DB value by Executing "VestedExercisableEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "RestrictedShareAwardsShares" against DB value by Executing "RestrictedShareAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "RestrictedShareAwardsEstimatedValue" against DB value by Executing "RestrictedShareAwardsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "EarnablePerfAwardsShares" against DB value by Executing "EarnablePerfAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfAwardsEstimatedValue" against DB value by Executing "EarnablePerfAwardsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "EarnablePerfGrantsShares" against DB value by Executing "EarnablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfGrantsEstimatedValue" against DB value by Executing "EarnablePerfGrantsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "UnvestedAwardsShares" against DB value by Executing "UnvestedAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedAwardsEstimatedValue" against DB value by Executing "UnvestedAwardsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "UnvestedOptionsShares" against DB value by Executing "UnvestedOptionsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedOptionsEstimatedValue" against DB value by Executing "UnvestedOptionsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ExercisablePerfGrantsShares" against DB value by Executing "ExercisablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ExercisablePerfGrantsEstimatedValue" against DB value by Executing "ExercisablePerfGrantsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ReleasableAwardssShares" against DB value by Executing "ReleasableAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ReleasableAwardsEstimatedValue" against DB value by Executing "ReleasableAwardsEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ExercisePendingShares" against DB value by Executing "ExercisePendingShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    Then Compare UI value for "ExercisePendingEstimatedValue" against DB value by Executing "ExercisePendingEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser

  Scenario:TC9_Overview_Select minimum price and Select minimum price and verify that Stock Option Calculator Shares and Estimated Values of Vested Exercisable in Overview screen are correctly fetching from DB
    Given Click on "StockOptionCalculatorIcon"
    When Assert "Stock Option Calculator" is present at "StockOptionCalculator"
    And Move slider "SliderXpath" from "1" X axis and to "0" Y axis and print the current value "StockOptionTextBox"
    Then Compare UI value for "VestedExercisableShares" against DB value by Executing "VestedExercisableShares_SelectQuery" to check "UI-DB values match after decimal Round off"
    And Compare UI value for "VestedExercisableEstimatedValue" against DB value by Executing "VestedExercisableEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "RestrictedShareAwardsShares" against DB value by Executing "RestrictedShareAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "RestrictedShareAwardsEstimatedValue" against DB value by Executing "RestrictedShareAwardsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "EarnablePerfAwardsShares" against DB value by Executing "EarnablePerfAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfAwardsEstimatedValue" against DB value by Executing "EarnablePerfAwardsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "EarnablePerfGrantsShares" against DB value by Executing "EarnablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfGrantsEstimatedValue" against DB value by Executing "EarnablePerfGrantsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "UnvestedAwardsShares" against DB value by Executing "UnvestedAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedAwardsEstimatedValue" against DB value by Executing "UnvestedAwardsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "UnvestedOptionsShares" against DB value by Executing "UnvestedOptionsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedOptionsEstimatedValue" against DB value by Executing "UnvestedOptionsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ExercisablePerfGrantsShares" against DB value by Executing "ExercisablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ExercisablePerfGrantsEstimatedValue" against DB value by Executing "ExercisablePerfGrantsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ReleasableAwardssShares" against DB value by Executing "ReleasableAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ReleasableAwardsEstimatedValue" against DB value by Executing "ReleasableAwardsEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    Then Compare UI value for "ExercisePendingShares" against DB value by Executing "ExercisePendingShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    Then Compare UI value for "ExercisePendingEstimatedValue" against DB value by Executing "ExercisePendingEstimatedValueMin_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser

  Scenario:TC10_Overview_Select maximum price and verify that Stock Option Calculator Shares and Estimated Values of Vested Exercisable in Overview screen are correctly fetching from DB
    Given Click on "StockOptionCalculatorIcon"
    When Assert "Stock Option Calculator" is present at "StockOptionCalculator"
    And Move slider "SliderXpath" from "650" X axis and to "0" Y axis and print the current value "StockOptionTextBox"
    Then Compare UI value for "VestedExercisableShares" against DB value by Executing "VestedExercisableShares_SelectQuery" to check "UI-DB values match after decimal Round off"
    And Compare UI value for "VestedExercisableEstimatedValue" against DB value by Executing "VestedExercisableEstimatedValueDefault_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Wait for 2 second
#    Then Compare UI value for "RestrictedShareAwardsShares" against DB value by Executing "RestrictedShareAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "RestrictedShareAwardsEstimatedValue" against DB value by Executing "RestrictedShareAwardsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "EarnablePerfAwardsShares" against DB value by Executing "EarnablePerfAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfAwardsEstimatedValue" against DB value by Executing "EarnablePerfAwardsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "EarnablePerfGrantsShares" against DB value by Executing "EarnablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "EarnablePerfGrantsEstimatedValue" against DB value by Executing "EarnablePerfGrantsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "UnvestedAwardsShares" against DB value by Executing "UnvestedAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedAwardsEstimatedValue" against DB value by Executing "UnvestedAwardsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "UnvestedOptionsShares" against DB value by Executing "UnvestedOptionsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "UnvestedOptionsEstimatedValue" against DB value by Executing "UnvestedOptionsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "ExercisablePerfGrantsShares" against DB value by Executing "ExercisablePerfGrantsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ExercisablePerfGrantsEstimatedValue" against DB value by Executing "ExercisablePerfGrantsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "ReleasableAwardssShares" against DB value by Executing "ReleasableAwardsShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    And Compare UI value for "ReleasableAwardsEstimatedValue" against DB value by Executing "ReleasableAwardsEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
#    And Wait for 2 second
#    Then Compare UI value for "ExercisePendingShares" against DB value by Executing "ExercisePendingShares_SelectQuery" to check "UI-DB values match after decimal Round off"
#    Then Compare UI value for "ExercisePendingEstimatedValue" against DB value by Executing "ExercisePendingEstimatedValueMax_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser