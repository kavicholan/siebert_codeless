@EmployeeStockPlan-Portfolio @EmployeeStockPlan @UIAutomation
Feature: Portfolio

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
    And Wait for "5" seconds
    And Enter "TUP01" into "ParticipantId"
    And Press ENTER key
    And Wait for "2" seconds
    Then Check "PortfolioMenu" is displayed
    And Click on "PortfolioMenu"
    And Wait for "5" seconds

  Scenario:TC01_Portfolio_Verify that the Grant Type, Grant Price, Grant Number, Grant Date, Expiration Date, Vested Value, Unvested Value and Net Share in Portfolio screen are correctly fetching from DB
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    Then Verify "PortfolioGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "PortfolioGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "PortfolioGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
#    Then Verify "PortfolioExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioVestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioUnvestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailUnVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioNetShare" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailNetShare_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC02_Portfolio_Verify that Stock Option, Restricted Awards, Performance Awards and Performance Option Values of Shared Owned, Estimated Value, Company Name, Symbol, Market Value Exercised, Exercisable, Vested and Earned, Unvested, Cancelled for overall values are correctly fetching from DB
    # All Screen
    Then Check "All_Label" is enabled
    Then Assert "Exercised" is present at "PortfolioExercised_Label"
    Then Compare UI value for "PortfolioExercisedInTotal" against DB value by Executing "Exercised_All_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisedInDollars" against DB value by Executing "Exercised_All_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Exercisable" is present at "PortfolioExercisable_Label"
    Then Compare UI value for "PortfolioExercisableInTotal" against DB value by Executing "Exercisable_All_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisableInDollars" against DB value by Executing "Exercisable_All_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Vested and Earned" is present at "PortfolioVestedandEarned_Label"
    Then Compare UI value for "PortfolioVestedandEarnedInTotal" against DB value by Executing "VestedAndEarned_All_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioVestedandEarnedInDollars" against DB value by Executing "VestedAndEarned_All_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Unvested" is present at "PortfolioUnvested_Label"
    Then Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_All_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_All_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Cancelled" is present at "PortfolioCancelled_Label"
    Then Compare UI value for "PortfolioCancelledInTotal" against DB value by Executing "Cancelled_All_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioCancelledInDollars" against DB value by Executing "Cancelled_All_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
   # Stock Option screen
    And Click on "StockOptionsButton"
    Then Check "StockOptionsButton" is enabled
    Then Assert "Exercised" is present at "PortfolioExercised_Label"
    Then Compare UI value for "PortfolioExercisedInTotal" against DB value by Executing "Exercised_StockOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisedInDollars" against DB value by Executing "Exercised_StockOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Exercisable" is present at "PortfolioExercisable_Label"
    Then Compare UI value for "PortfolioExercisableInTotal" against DB value by Executing "Exercisable_StockOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisableInDollars" against DB value by Executing "Exercisable_StockOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Vested and Earned" is present at "PortfolioVestedandEarned_Label"
    Then Compare UI value for "PortfolioVestedandEarnedInTotal" against DB value by Executing "VestedAndEarned_StockOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioVestedandEarnedInDollars" against DB value by Executing "VestedAndEarned_StockOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Unvested" is present at "PortfolioUnvested_Label"
    Then Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_StockOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_StockOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Cancelled" is present at "PortfolioCancelled_Label"
    Then Compare UI value for "PortfolioCancelledInTotal" against DB value by Executing "Cancelled_StockOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioCancelledInDollars" against DB value by Executing "Cancelled_StockOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
  # Restricted Awards screen
    And Click on "RestrictedAwardButton"
    Then Check "RestrictedAwardButton" is enabled
    Then Assert "Released" is present at "PortfolioReleased_Label"
    Then Compare UI value for "PortfolioReleasedInTotal" against DB value by Executing "Released_RestrictedAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioReleasedInDollars" against DB value by Executing "Released_RestrictedAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Vested and Earned" is present at "PortfolioVestedandEarned_Label"
    Then Compare UI value for "PortfolioVestedandEarnedInTotal" against DB value by Executing "VestedAndEarned_RestrictedAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioVestedandEarnedInDollars" against DB value by Executing "VestedAndEarned_RestrictedAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Unvested" is present at "PortfolioUnvested_Label"
    Then Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_RestrictedAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_RestrictedAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
  # Performance Awards screen
    And Click on "PerformanceAwardsButton"
    Then Check "PerformanceAwardsButton" is enabled
    Then Assert "Exercised" is present at "PortfolioExercised_Label"
    Then Compare UI value for "PortfolioExercisedInTotal" against DB value by Executing "Exercised_PerformanceAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisedInDollars" against DB value by Executing "Exercised_PerformanceAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Exercisable" is present at "PortfolioExercisable_Label"
    Then Compare UI value for "PortfolioExercisableInTotal" against DB value by Executing "Exercisable_PerformanceAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisableInDollars" against DB value by Executing "Exercisable_PerformanceAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Vested and Earned" is present at "PortfolioVestedandEarned_Label"
    Then Compare UI value for "PortfolioVestedandEarnedInTotal" against DB value by Executing "VestedAndEarned_PerformanceAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioVestedandEarnedInDollars" against DB value by Executing "VestedAndEarned_PerformanceAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Unvested" is present at "PortfolioUnvested_Label"
    Then Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_PerformanceAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_PerformanceAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Cancelled" is present at "PortfolioCancelled_Label"
    Then Compare UI value for "PortfolioCancelledInTotal" against DB value by Executing "Cancelled_PerformanceAward_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioCancelledInDollars" against DB value by Executing "Cancelled_PerformanceAward_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
  # Performance Option screen
    And Click on "PerformanceOptionsButton"
    Then Check "PerformanceOptionsButton" is enabled
    Then Assert "Exercised" is present at "PortfolioExercised_Label"
    Then Compare UI value for "PortfolioExercisedInTotal" against DB value by Executing "Exercised_PerformanceOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisedInDollars" against DB value by Executing "Exercised_PerformanceOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Exercisable" is present at "PortfolioExercisable_Label"
    Then Compare UI value for "PortfolioExercisableInTotal" against DB value by Executing "Exercisable_PerformanceOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioExercisableInDollars" against DB value by Executing "Exercisable_PerformanceOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Vested and Earned" is present at "PortfolioVestedandEarned_Label"
    Then Compare UI value for "PortfolioVestedandEarnedInTotal" against DB value by Executing "VestedAndEarned_PerformanceOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioVestedandEarnedInDollars" against DB value by Executing "VestedAndEarned_PerformanceOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Unvested" is present at "PortfolioUnvested_Label"
    Then Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_PerformanceOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioUnvestedInTotal" against DB value by Executing "Unvested_PerformanceOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    Then Assert "Cancelled" is present at "PortfolioCancelled_Label"
    Then Compare UI value for "PortfolioCancelledInTotal" against DB value by Executing "Cancelled_PerformanceOption_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Compare UI value for "PortfolioCancelledInDollars" against DB value by Executing "Cancelled_PerformanceOption_Price_SelectQuery" to check "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser

  Scenario: TC03_Portfolio_Verify the sorting functionality is working properly in Stock Option, Restricted Awards, Performance Awards and Performance Option screen based on Grant Date
    # ALL Screen
    When Save data to "PortfoliotOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Click on "SortButton"
    And Click on "NewestSort"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "OldestSort"
    And Save data to "PortfolioOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "NewestSort"
    And Save data to "PortfolioNewDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    Then Assert "PortfolioOldDate" is not equal to "PortfolioNewDate"
    # Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "5" seconds
    And Save data to "PortfoliotOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Click on "SortButton"
    And Click on "NewestSort"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "OldestSort"
    And Save data to "PortfolioOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "NewestSort"
    And Save data to "PortfolioNewDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    Then Assert "PortfolioOldDate" is not equal to "PortfolioNewDate"
    # Restricted Awards screen
    And Click on "RestrictedAwardButton"
    And Wait for "5" seconds
    And Save data to "PortfoliotOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Click on "SortButton"
    And Click on "NewestSort"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "OldestSort"
    And Save data to "PortfolioOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "NewestSort"
    And Save data to "PortfolioNewDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    Then Assert "PortfolioOldDate" is not equal to "PortfolioNewDate"
    # Performance Awards screen
    And Click on "PerformanceAwardsButton"
    And Wait for "5" seconds
    And Save data to "PortfoliotOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Click on "SortButton"
    And Click on "NewestSort"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "OldestSort"
    And Save data to "PortfolioOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "NewestSort"
    And Save data to "PortfolioNewDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    Then Assert "PortfolioOldDate" is not equal to "PortfolioNewDate"
    # Performance Options screen
    And Click on "PerformanceOptionsButton"
    And Wait for "5" seconds
    And Save data to "PortfoliotOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Click on "SortButton"
    And Click on "NewestSort"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "OldestSort"
    And Save data to "PortfolioOldDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    And Wait for "2" seconds
    And Click on "SortButton"
    And Click on "NewestSort"
    And Save data to "PortfolioNewDate" from "PortfolioGrantDate" with "XPATH" locator
    And Print all element texts from "PortfolioGrantDate"
    Then Assert "PortfolioOldDate" is not equal to "PortfolioNewDate"
    And Close browser

  Scenario:TC01_Portfolio StockOption_Verify that Stock Option Values of Grant Type, Grant Price, Grant Number, Grant Date, Expiration Date, Vested Value, Unvested Value and Net Share in Portfolio screen are correctly fetching from DB
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    Then Verify "PortfolioGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "PortfolioGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "PortfolioGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioVestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioUnvestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailUnVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioNetShare" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailNetShare_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario:TC02_Portfolio StockOptions_Verify the Grant Details data are correctly fetching from DB in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "3" seconds
    Then Verify "GrantDetailsGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetailsGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
#   Then Verify "GrantDetailsStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsStatus_SelectQuery" Query and "when Both are equal"
#   Then Verify "GrantDetailsActionStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsActionStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsAcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsEstCurrentStockFMV" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario:TC03_Portfolio StockOptions_Verify the Exercise Details data are correctly fetching from DB in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "ExerciseNumber"
    And Wait for "2" seconds
    Then Verify "GrantDetail_ExerciseDate" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetail_ExerciseID" UI value with Runtime value "ExerciseNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_ClientID" UI value with Runtime value "ExerciseNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Exercised" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Sold/Swapped" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Price" UI value with Runtime value "ExerciseNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "GrantDetail_FMV" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseDate_fmvforexercisedate_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "GrantDetail_GrantPricePaymentMethod" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "GrantDetail_Status" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when DB value contains special character"
    And Close browser

  Scenario: TC04_Portfolio StockOptions_Verify the Exercise Summary detail by clicking on the "Exercise Seq Number" on the Exercise Details screen are correctly fetching from DB in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "SavedNumber"
    And Wait for "5" seconds
    And Click on "GrantDetail_ExerciseID"
    And Wait for "5" seconds
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseDetail_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "ExerciseDetail_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseDetail_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_AcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseDetail_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseDetail_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseDetail_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseDetail_ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    When save all element texts from "ExerciseDetail_GrantNumber" as "GrantNumber"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Extended Details Values with DB
    And Click on "ExtendedDetailsButton"
    And Wait for "3" seconds
    Then Verify "ExerciseSummary_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseSummary_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_Exercisable" UI value with Runtime value "GrantNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseSummary_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseSummary_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_ExercisedShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantPricePaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseSummary_TaxPaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SharesToSell" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SalePrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_GrossSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrossSaleProceedsSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalTaxes" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalCommissionandFees" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_NetSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_NetSaleProceeds_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Extended Details - Grant & Exercise Info tab
    And Wait for "3" seconds
    And Click on "GrantExerciseInfoButton"
    When save all element texts from "Grant&ExerciseInfo_row03" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "Grant&ExerciseInfo_row04" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row06" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row07" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row09" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "Grant&ExerciseInfo_row10" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row10" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row11" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
#   Then Verify "Grant&ExerciseInfo_row12" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row13" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
    Then Verify "Grant&ExerciseInfo_row14" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row15" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "Extended06_row01" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when Both are equal"
#   Then Verify "Extended06_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "when Both are equal"
    # Extended Details - Cost & Payments tab
    And Wait for "3" seconds
    And Click on "Costs&PaymentsButton"
    Then Verify "Grant&ExerciseInfo_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome1" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC05_Portfolio StockOptions_Verify the Exercise Summary detail by clicking on the "Pay Info" on the Exercise Details screen are correctly fetching from DB in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "SavedNumber"
    And Wait for "5" seconds
    And Click on "payInfoButton"
    And Wait for "5" seconds
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseDetail_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "ExerciseDetail_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseDetail_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_AcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseDetail_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseDetail_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseDetail_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseDetail_ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    When save all element texts from "ExerciseDetail_GrantNumber" as "GrantNumber"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC06_Portfolio StockOptions_Verify that only "ISO", "NQSO","SAR" and "CSAR" options are displayed in the Grant Type dropdown for Stock Option.
    And Click on "StockOptionsButton"
    And Wait for "5" seconds
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Close browser

  Scenario: TC07_Portfolio StockOptions_Verify the User can sell shares using cashless trade type with market order type when employee doesn't have money to purchase the shares in stock option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC08_Portfolio StockOptions_Verify the User can sell shares using cashless trade type with day limit order type when employee doesn't have money to purchase the shares in stock option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC09_Portfolio StockOptions_Verify the User can sell shares using cashless trade type with good until cancelled order type when employee doesn't have money to purchase the shares in stock option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
     # Assert the Header Values with DB
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC10_Portfolio StockOptions_Verify that the order and transaction details are displayed on the transaction and orders screen after the user sells the shares in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    When Save data to "OrderSeqNumber" from "OrderSeqNoOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderDate" from "OrderDateOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderStatus" from "OrderStatusOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantNumber" from "GrantNumberFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantType" from "GrantTypeFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantDate" from "GrantDateFromOrderDetailsPage" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExercisedShareOrderDetailPage" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSequenceNumberInOrderDetailsPage" with "XPATH" locator
    # Order Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    When Save data to "OrderSeqNumber_OrderList" from "OrdersColumn1" with "XPATH" locator
    And Save data to "OrderDate_OrderList" from "OrdersColumn2" with "XPATH" locator
    And Save data to "OrderStatus_OrderList" from "OrdersColumn8" with "XPATH" locator
    And Save data to "GrantNumber_OrderList" from "OrdersColumn5" with "XPATH" locator
    And Save data to "GrantType_OrderList" from "OrdersColumn6" with "XPATH" locator
    And Save data to "GrantDate_OrderList" from "OrdersColumn7" with "XPATH" locator
    And Save data to "ExercisedShares_OrderList" from "OrdersColumn9" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_OrderList" from "OrdersColumn4" with "XPATH" locator
    Then Assert "OrderSeqNumber_OrderList" contains "OrderSeqNumber"
#   Then Assert "OrderDate_OrderList" contains "OrderDate"
    Then Assert "ExerciseSeqNumber_OrderList" contains "ExerciseSeqNumber"
    Then Assert "GrantNumber_OrderList" contains "GrantNumber"
    Then Assert "GrantType_OrderList" contains "GrantType"
    Then Assert "GrantDate_OrderList" contains "GrantDate"
    Then Assert "OrderStatus_OrderList" contains "OrderStatus"
    Then Assert "ExercisedShares_OrderList" contains "ExercisedShares"
    And Click on "OrdersColumn5"
    And Wait for "5" seconds
    # Exercise Details Screen
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When Save data to "ExerciseSeqNumber_ExerciseList" from "GrantDetail_ExerciseID" with "XPATH" locator
    And Save data to "ExercisedShares_ExerciseList" from "GrantDetail_Exercised" with "XPATH" locator
    Then Assert "ExerciseSeqNumber_ExerciseList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_ExerciseList" contains "ExercisedShares"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
#   Then Assert "TransactionDate_TranList" contains "TransactionDate"
    Then Assert "GrantNumber_TranList" contains "GrantNumber"
    Then Assert "ExerciseSeqNumber_TranList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "GrantPrice_TranList" contains "GrantPrice"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC11_Portfolio StockOptions_Verify that the order and transaction details are displayed on the transaction and orders screen after the user sells the shares in Stock Option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "10" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    When Save data to "OrderSeqNumber" from "OrderSeqNoOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderDate" from "OrderDateOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderStatus" from "OrderStatusOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantNumber" from "GrantNumberFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantType" from "GrantTypeFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantDate" from "GrantDateFromOrderDetailsPage" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExercisedShareOrderDetailPage" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSequenceNumberInOrderDetailsPage" with "XPATH" locator
    # Order Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    When Save data to "OrderSeqNumber_OrderList" from "OrdersColumn1" with "XPATH" locator
    And Save data to "OrderDate_OrderList" from "OrdersColumn2" with "XPATH" locator
    And Save data to "OrderStatus_OrderList" from "OrdersColumn8" with "XPATH" locator
    And Save data to "GrantNumber_OrderList" from "OrdersColumn5" with "XPATH" locator
    And Save data to "GrantType_OrderList" from "OrdersColumn6" with "XPATH" locator
    And Save data to "GrantDate_OrderList" from "OrdersColumn7" with "XPATH" locator
    And Save data to "ExercisedShares_OrderList" from "OrdersColumn9" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_OrderList" from "OrdersColumn4" with "XPATH" locator
    Then Assert "OrderSeqNumber_OrderList" contains "OrderSeqNumber"
#   Then Assert "OrderDate_OrderList" contains "OrderDate"
    Then Assert "ExerciseSeqNumber_OrderList" contains "ExerciseSeqNumber"
    Then Assert "GrantNumber_OrderList" contains "GrantNumber"
    Then Assert "GrantType_OrderList" contains "GrantType"
    Then Assert "GrantDate_OrderList" contains "GrantDate"
    Then Assert "OrderStatus_OrderList" contains "OrderStatus"
    Then Assert "ExercisedShares_OrderList" contains "ExercisedShares"
    And Click on "OrdersColumn5"
    And Wait for "5" seconds
    # Exercise Details Screen
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When Save data to "ExerciseSeqNumber_ExerciseList" from "GrantDetail_ExerciseID" with "XPATH" locator
    And Save data to "ExercisedShares_ExerciseList" from "GrantDetail_Exercised" with "XPATH" locator
    Then Assert "ExerciseSeqNumber_ExerciseList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_ExerciseList" contains "ExercisedShares"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
#   Then Assert "TransactionDate_TranList" contains "TransactionDate"
    Then Assert "GrantNumber_TranList" contains "GrantNumber"
    Then Assert "ExerciseSeqNumber_TranList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "GrantPrice_TranList" contains "GrantPrice"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC12_Portfolio StockOptions_Update the exercise details Then Verify the values are reflected in the Exercise Summary, Grant & Exercise Info, and Costs & Payments  tab in stock option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "2" seconds
    Then Assert "31" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "31" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "10" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    Then Assert "31" is present at "ExercisedShareOrderDetailPage"
    Then Assert "31" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC13_Portfolio StockOptions_Verify that the Exercise details of Exercise Summary, Grant & Exercise Info, and Costs & Payments details after Elect the Exercises before user Elect the Exercise in stock option screen
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseSummary_GrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_GrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseSummary_GrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_Exercisable" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseSummary_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseSummary_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseSummary_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_ExercisedShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantPricePaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseSummary_TaxPaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SharesToSell" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SalePrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_GrossSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrossSaleProceedsSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalTaxes" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalCommissionandFees" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_NetSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_NetSaleProceeds_SelectQuery" Query and "UI-DB values match after decimal Round off"
    #  Extended Details - Grant & Exercise Info tab
    And Wait for "3" seconds
    And Click on "GrantExerciseInfoButton"
    When save all element texts from "Grant&ExerciseInfo_row03" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "Grant&ExerciseInfo_row04" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row06" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row07" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row09" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "Grant&ExerciseInfo_row10" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row10" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row11" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
#   Then Verify "Grant&ExerciseInfo_row12" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row13" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
    Then Verify "Grant&ExerciseInfo_row14" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row15" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "Extended06_row01" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when Both are equal"
#   Then Verify "Extended06_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "when Both are equal"
    #  Extended Details - Cost & Payments tab
    And Wait for "3" seconds
    And Click on "Costs&PaymentsButton"
    Then Verify "Grant&ExerciseInfo_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome1" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Wait for "2" seconds
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC01_Portfolio RestrictedAwards_Verify that only "RSU", "RSA","CRSU", "CSAR" and "DSU" options are displayed in the Grant Type dropdown for Restricted Awards.
    And Click on "RestrictedAwardButton"
    And Wait for "5" seconds
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Wait for "3" seconds
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
    Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Close browser

  Scenario:TC02_Portfolio RestrictedAwards_Verify that Restricted Award Values of Grant Type, Grant Price, Grant Number, Grant Date, Expiration Date, Vested Value, Unvested Value and Net Share in Portfolio screen are correctly fetching from DB
    And Click on "RestrictedAwardButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    Then Verify "PortfolioGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "PortfolioGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "PortfolioGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioVestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioUnvestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailUnVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioNetShare" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailNetShare_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC01_Portfolio PerformanceOptions_Verify that only "PNQ" options are displayed in the Grant Type dropdown for Performance Option.
    And Click on "PerformanceOptionsButton"
    And Wait for "5" seconds
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Wait for "2" seconds
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Close browser

  Scenario:TC02_Portfolio PerformanceOptions_Verify that Performance Option Values of Grant Type, Grant Price, Grant Number, Grant Date, Expiration Date, Vested Value, Unvested Value and Net Share in Portfolio screen are correctly fetching from DB
    And Click on "PerformanceOptionsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    Then Verify "PortfolioGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "PortfolioGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "PortfolioGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioVestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioUnvestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailUnVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioNetShare" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailNetShare_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC01_Portfolio PerformanceAwards_Verify that only "PSU" and "CPSU" options are displayed in the Grant Type dropdown for Performance Awards.
    And Click on "PerformanceAwardsButton"
    And Wait for "5" seconds
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Click on "GrantTypeValue"
    And Wait for "2" seconds
    Then Press DOWN ARROW key
    And Wait for "2" seconds
    Then Press ENTER key
    When Save data to "GrantTypeDropDownValue" from "GrantTypeValue" with "XPATH" locator
    And Print all element texts from "GrantTypeValue"
    And Wait for "3" seconds
    And Save data to "GrantTypeListValue" from "PortfolioGrantType" with "XPATH" locator
#   Then Assert "GrantTypeListValue" contains "GrantTypeDropDownValue"
    And Close browser

  Scenario:TC02_Portfolio PerformanceAwards_Verify that Performance Awards Values of Grant Type, Grant Price, Grant Number, Grant Date, Expiration Date, Vested Value, Unvested Value and Net Share in Portfolio screen are correctly fetching from DB
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    Then Verify "PortfolioGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "PortfolioGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "PortfolioGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "PortfolioVestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioUnvestedValue" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailUnVestedValue_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "PortfolioNetShare" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailNetShare_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario:TC03_Portfolio PerformanceAwards_Verify Grant Details data are correctly fetching from DB in Performances Awards screen
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "3" seconds
    Then Verify "GrantDetailsGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetailsGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
#   Then Verify "GrantDetailsStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsStatus_SelectQuery" Query and "when Both are equal"
#   Then Verify "GrantDetailsActionStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsActionStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsAcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsEstCurrentStockFMV" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC04_Portfolio PerformanceAwards_Verify the Exercise Details data are correctly fetching from DB in Performances Awards screen
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "ExerciseNumber"
    And Wait for "2" seconds
    Then Verify "GrantDetail_ExerciseDate" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetail_ExerciseID" UI value with Runtime value "ExerciseNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_ClientID" UI value with Runtime value "ExerciseNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Exercised" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Sold/Swapped" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "when DB value contains special character"
    Then Verify "GrantDetail_Price" UI value with Runtime value "ExerciseNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "GrantDetail_FMV" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseDate_fmvforexercisedate_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "GrantDetail_GrantPricePaymentMethod" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "GrantDetail_Status" UI value with Runtime value "ExerciseNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when DB value contains special character"
    And Close browser

  Scenario: TC05_Portfolio PerformanceAwards_Verify the Exercise Summary detail by clicking on the "Exercise Seq Number" on the Exercise Details screen are correctly fetching from DB in performance awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "SavedNumber"
    And Wait for "5" seconds
    And Click on "GrantDetail_ExerciseID"
    And Wait for "5" seconds
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseDetail_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "ExerciseDetail_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseDetail_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_AcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseDetail_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseDetail_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseDetail_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseDetail_ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    When save all element texts from "ExerciseDetail_GrantNumber" as "GrantNumber"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
     # Assert the Extended Details Values with DB
    And Click on "ExtendedDetailsButton"
    And Wait for "3" seconds
    Then Verify "ExerciseSummary_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseSummary_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_Exercisable" UI value with Runtime value "GrantNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseSummary_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseSummary_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_ExercisedShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantPricePaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseSummary_TaxPaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SharesToSell" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SalePrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_GrossSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrossSaleProceedsSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalTaxes" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalCommissionandFees" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_NetSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_NetSaleProceeds_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Extended Details - Grant & Exercise Info tab
    And Wait for "3" seconds
    And Click on "GrantExerciseInfoButton"
    When save all element texts from "Grant&ExerciseInfo_row03" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "Grant&ExerciseInfo_row04" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row06" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row07" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row09" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "Grant&ExerciseInfo_row10" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row10" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row11" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
#   Then Verify "Grant&ExerciseInfo_row12" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row13" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
    Then Verify "Grant&ExerciseInfo_row14" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row15" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "Extended06_row01" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when Both are equal"
#   Then Verify "Extended06_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "when Both are equal"
    #  Extended Details - Cost & Payments tab
    And Wait for "3" seconds
    And Click on "Costs&PaymentsButton"
    Then Verify "Grant&ExerciseInfo_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome1" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC06_Portfolio PerformanceAwards_Verify the Exercise Summary detail by clicking on the "Pay Info" on the Exercise Details screen are correctly fetching from DB in performance awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    When save all element texts from "PortfolioGrantNumber" as "GrantNumber"
    And Click on "PortfolioGrantNumber"
    And Wait for "2" seconds
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When save all element texts from "GrantDetail_ExerciseID" as "SavedNumber"
    And Wait for "5" seconds
    And Click on "payInfoButton"
    And Wait for "5" seconds
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseDetail_GrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "ExerciseDetail_GrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseDetail_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_AcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseDetail_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseDetail_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseDetail_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseDetail_ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDetail_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    When save all element texts from "ExerciseDetail_GrantNumber" as "GrantNumber"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseDetail_SharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC07_Portfolio PerformanceAwards_Verify the User can sell shares using cashless trade type with market order type when employee doesn't have money to purchase the shares in performance awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC08_Portfolio PerformanceAwards_Verify the User can sell shares using cashless trade type with day limit order type when employee doesn't have money to purchase the shares in performance awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC09_Portfolio PerformanceAwards_Verify the User can sell shares using cashless trade type with good until cancelled order type when employee doesn't have money to purchase the shares in performance awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC10_Portfolio PerformanceAwards_Verify that the order and transaction details are displayed on the transaction and orders screen after the user sells the shares in Performance Awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Click on "Costs&PaymentsButton"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    When Save data to "OrderSeqNumber" from "OrderSeqNoOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderDate" from "OrderDateOrderDetailsPage" with "XPATH" locator
    And Save data to "OrderStatus" from "OrderStatusOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantNumber" from "GrantNumberFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantType" from "GrantTypeFromOrderDetailsPage" with "XPATH" locator
    And Save data to "GrantDate" from "GrantDateFromOrderDetailsPage" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExercisedShareOrderDetailPage" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSequenceNumberInOrderDetailsPage" with "XPATH" locator
    # Order Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    When Save data to "OrderSeqNumber_OrderList" from "OrdersColumn1" with "XPATH" locator
    And Save data to "OrderDate_OrderList" from "OrdersColumn2" with "XPATH" locator
    And Save data to "OrderStatus_OrderList" from "OrdersColumn8" with "XPATH" locator
    And Save data to "GrantNumber_OrderList" from "OrdersColumn5" with "XPATH" locator
    And Save data to "GrantType_OrderList" from "OrdersColumn6" with "XPATH" locator
    And Save data to "GrantDate_OrderList" from "OrdersColumn7" with "XPATH" locator
    And Save data to "ExercisedShares_OrderList" from "OrdersColumn9" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_OrderList" from "OrdersColumn4" with "XPATH" locator
    Then Assert "OrderSeqNumber_OrderList" contains "OrderSeqNumber"
#   Then Assert "OrderDate_OrderList" contains "OrderDate"
    Then Assert "ExerciseSeqNumber_OrderList" contains "ExerciseSeqNumber"
    Then Assert "GrantNumber_OrderList" contains "GrantNumber"
    Then Assert "GrantType_OrderList" contains "GrantType"
    Then Assert "GrantDate_OrderList" contains "GrantDate"
    Then Assert "OrderStatus_OrderList" contains "OrderStatus"
    Then Assert "ExercisedShares_OrderList" contains "ExercisedShares"
    And Click on "OrdersColumn5"
    And Wait for "5" seconds
    # Exercise Details Screen
    And Click on "GrantDetail_ExerciseTab"
    And Wait for "3" seconds
    When Save data to "ExerciseSeqNumber_ExerciseList" from "GrantDetail_ExerciseID" with "XPATH" locator
    And Save data to "ExercisedShares_ExerciseList" from "GrantDetail_Exercised" with "XPATH" locator
    Then Assert "ExerciseSeqNumber_ExerciseList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_ExerciseList" contains "ExercisedShares"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
#   Then Assert "TransactionDate_TranList" contains "TransactionDate"
    Then Assert "GrantNumber_TranList" contains "GrantNumber"
    Then Assert "ExerciseSeqNumber_TranList" contains "ExerciseSeqNumber"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    Then Assert "GrantPrice_TranList" contains "GrantPrice"
    Then Assert "ExercisedShares_TranList" contains "ExercisedShares"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC11_Portfolio PerformanceAwards_Update the exercise details Then Verify the values are reflected in the Exercise Summary, Grant & Exercise Info, and Costs & Payments  tab in stock option screen
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    When Enter "3" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "1" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "2" seconds
    Then Assert "31" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "31" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "10" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    Then Assert "31" is present at "ExercisedShareOrderDetailPage"
    Then Assert "31" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Good Until Cancelled" is present at "OrderTypeInOrderDetailsPage"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser

  Scenario: TC12_Portfolio PerformanceAwards_Verify that the Exercise details of Exercise Summary, Grant & Exercise Info, and Costs & Payments details before Elect the Exercises after user Elect the Exercise in Performance Awards
    And Click on "PerformanceAwardsButton"
    And Wait for "3" seconds
    And Hover and click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Assert the Header Values with DB
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    # Assert the Exercise Summary Details Values with DB
    Then Verify "ExerciseSummary_GrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_GrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseSummary_GrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_Exercisable" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "ExerciseSummary_ExerciseSequence" as "SavedNumber"
    Then Verify "ExerciseSummary_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when DB value contains special character"
    Then Verify "ExerciseSummary_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "ExerciseSummary_ExercisedShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "ExerciseSummary_GrantPricePaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseSummary_TaxPaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SharesToSell" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SharesToSell_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_SalePrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_GrossSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrossSaleProceedsSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalTaxes" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_TotalCommissionandFees" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_NetSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_NetSaleProceeds_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Extended Details - Grant & Exercise Info tab
    And Wait for "3" seconds
    And Click on "GrantExerciseInfoButton"
    When save all element texts from "Grant&ExerciseInfo_row03" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#   Then Verify "Grant&ExerciseInfo_row04" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Grant&ExerciseInfo_row06" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row07" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row09" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    When save all element texts from "Grant&ExerciseInfo_row10" as "SavedNumber"
    Then Verify "Grant&ExerciseInfo_row10" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
#    Then Verify "Grant&ExerciseInfo_row11" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "when Both are equal"
#   Then Verify "Grant&ExerciseInfo_row12" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Grant&ExerciseInfo_row13" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_ExercisedShares_SelectQuery" Query and "when DB value contains special character"
    Then Verify "Grant&ExerciseInfo_row14" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_SalePrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row15" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "Extended06_row01" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_GrantPricePaymentMethod_SelectQuery" Query and "when Both are equal"
#   Then Verify "Extended06_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TaxPaymentMethod_SelectQuery" Query and "when Both are equal"
    #  Extended Details - Cost & Payments tab
    And Wait for "3" seconds
    And Click on "Costs&PaymentsButton"
    Then Verify "Grant&ExerciseInfo_row02" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalGrantPriceSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row03" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalTaxes_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Grant&ExerciseInfo_row05" UI value with Runtime value "SavedNumber" by Executing the "ExerciseSummary_TotalCommissionandFees_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseSummary_OrdinaryIncome1" UI value with Runtime value "SavedNumber" by Executing the "OrdinaryIncome_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Wait for "2" seconds
    And Click on "ElectToExerciseButton"
    And Wait for "2" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    # Order Cancel Screen
    And Click on "OrderButton"
    And Wait for "3" seconds
    And Click on "OrdersColumn1"
    And Wait for "5" seconds
    And Click on "CancelButton"
    And Wait for "10" seconds
    And Click on "YesCancelButton"
    And Wait for "10" seconds
    Then Assert "Cancel Received" is present at "BrokerMessageInOrderDetails"
    And Close browser