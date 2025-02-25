@EmployeeStockPlan-Orders @UIAutomation
Feature: Orders

  Scenario: TC01_Orders_Verify Orders Number, Orders Date, Type, Exercise Sequence, Grant Number, Grant Type, Grant Date, Order Status and Shares Transacted  in Orders screen are correctly fetching from DB
    Given Connect DB with "host", "username", "password"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    Then Print all element texts from "OrdersColumn5"
    When save all element texts from "OrdersColumn4" as "SavedNumber"
    When save all element texts from "OrdersColumn5" as "GrantNumber"
    Then Verify "OrdersColumn1" UI value with Runtime value "SavedNumber" by Executing the "OrderNumber_SelectQuery" Query and "By comparing UI values in DB2"
#    Then Verify "OrdersColumn2" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "OrdersColumn4" UI value with Runtime value "SavedNumber" by Executing the "Tran_ExerciseSequenceNumber_SelectQuery" Query and "when Both are equal"
    Then Verify "OrdersColumn5" UI value with Runtime value "SavedNumber" by Executing the "Tran_GrantNumber_SelectQuery" Query and "when Both are equal"
#    Then Verify "OrdersColumn6" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
#    Then Verify "OrdersColumn7" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
#    Then Verify "OrdersColumn8" UI value with Runtime value "SavedNumber" by Executing the "OrderStatus_SelectQuery" Query and "when Both are equal"
    And Close browser

  Scenario: TC02_Orders_Verify Grant Details by clicking on Grant Number in Orders screen
    Given Connect DB with "host", "username", "password"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    Then Print all element texts from "OrdersColumn5"
    When save all element texts from "OrdersColumn5" as "GrantNumber"
    And Click on "OrdersColumn5"
    And Wait for 3 second
    Then Verify "GrantDetailsGrantNumber" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "GrantDetailsGrantDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsStatus_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsActionStatus" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsActionStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsAcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
#    Then Verify "GrantDetailsPlanName" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsPlanName_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsScheduleType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsScheduleType_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsGrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "GrantDetailsEstCurrentStockFMV" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "GrantDetailsSharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharedOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC03_Orders_Verify Exercise Summary details by clicking on Exercise Sequence Number in Orders screen
    Given Connect DB with "host", "username", "password"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    When save all element texts from "TranExerciseColumn4" as "SavedNumber"
    And Click on "TranExerciseColumn4"
    And Wait for 2 second
    And Check "ExerciseSummaryButton" is displayed
    Then Click on "ExerciseSummaryButton"
    And Wait for 3 second
    And Check "ExerciseSeqNumberTop" is displayed
    Then Verify "Exercise_GrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
#    Then Verify "Exercise_GrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    When save all element texts from "GrantDetailsGrantNumber" as "GrantNumber"
    Then Print all element texts from "GrantDetailsGrantNumber"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Exercise_GrantType" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Exercise_AcceptanceDate" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Exercise_GrantPrice" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Exercise_FMV" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExercisedSeq" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeqNo_SelectQuery" Query and "UI-DB values match after decimal Round off"
#    Then Convert text "ExerciseStatus" to uppercase for "ExerciseStatusInUpperCase" field
#    Then Verify "ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "SharesGranted" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesOutstanding" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesVestedandEarned" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesExercised" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesExercisable" UI value with Runtime value "GrantNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC04_Orders_Verify Extended details by clicking on Exercise Sequence Number in Orders screen
    Given Connect DB with "host", "username", "password"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    When save all element texts from "TranExerciseColumn4" as "SavedNumber"
    And Click on "TranExerciseColumn4"
    And Wait for 2 second
    When save all element texts from "TranColumn4" as "SavedNumber"
    When save all element texts from "TranColumn3" as "grantNumber"
    And Check "ExtendedDetailsButton" is displayed
    Then Click on "ExtendedDetailsButton"
    And Wait for 3 second
#    And Check "ExerciseSeqNumberTop" is displayed
#    Then Verify "ParticipantID" UI value by Executing "Tran_ParticipantID_SelectQuery" Query with the Save Number "when Both are equal"
   #  Extended Details - Exercise summary tab
    Then Verify "Extended_GrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended_GrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "Extended_GrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Extended_GrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_Exercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#    Then Verify "Extended_ExerciseSequence" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeq_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended_ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "By changing the Transaction Date format"
    Then Verify "Extended_ExercisedShares" UI value with Runtime value "SavedNumber" by Executing the "Extended_ExercisedShares_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended_GrantPricePaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "Extended_GrantPricePaymentMethod_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_TaxPaymentMethod" UI value with Runtime value "SavedNumber" by Executing the "Extended_TaxPaymentMethod_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_OrdinaryIncome" UI value with Runtime value "SavedNumber" by Executing the "Extended_OrdinaryIncome_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_SharesToSell" UI value with Runtime value "SavedNumber" by Executing the "Extended_SharesToSell_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_SalePrice" UI value with Runtime value "SavedNumber" by Executing the "Extended_SalePrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_GrossSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "Extended_GrossSaleProceedsSelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_TotalGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalGrantPriceSelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_TotalTaxes" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalTaxes_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_TotalCommissionandFees" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalCommissionandFees_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended_NetSaleProceeds" UI value with Runtime value "SavedNumber" by Executing the "Extended_NetSaleProceeds_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    # Extended Details - Grant & Exercise Info tab
    And Wait for 3 second
    Then Click on "GrantExerciseInfoButton"
    Then Verify "Extended02_row03" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended02_row04" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Extended02_row05" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Extended02_row06" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended02_row07" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Extended02_row09" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "Extended04_row01" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeq_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended04_row02" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeq_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended04_row03" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended04_row04" UI value with Runtime value "SavedNumber" by Executing the "Extended_ExercisedShares_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended04_row06" UI value with Runtime value "SavedNumber" by Executing the "Extended_SalePrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended04_row07" UI value with Runtime value "SavedNumber" by Executing the "Extended_OrdinaryIncome_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended06_row01" UI value with Runtime value "SavedNumber" by Executing the "Extended_GrantPricePaymentMethod_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Extended06_row02" UI value with Runtime value "SavedNumber" by Executing the "Extended_TaxPaymentMethod_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    # Extended Details - Cost & Payments tab
    And Wait for 3 second
    Then Click on "Costs&PaymentsButton"
    Then Verify "Extended02_row02" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalGrantPriceSelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Extended02_row03" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalTaxes_SelectQuery" Query and "By changing the Date format"
    Then Verify "Extended02_row05" UI value with Runtime value "SavedNumber" by Executing the "Extended_TotalCommissionandFees_SelectQuery" Query and "when Both are equal"
    Then Verify "Extended_OrdinaryIncome1" UI value with Runtime value "SavedNumber" by Executing the "Extended_OrdinaryIncome_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    And Close browser

  Scenario: TC05_Orders_Verify that the pagination functionality is working as expected for the Orders screen.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    Then Save data to "String1" from "OrdersColumn4" with "XPATH" locator
    And Click on "TranKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "String2" from "OrdersColumn4" with "XPATH" locator
    And Assert "String1" is not equal to "String2"
    And Wait for 2 second
    Then Click on "TranKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "String2" is not equal to "String1"
    And Close browser

  Scenario: TC06_Orders_Verify that the Sort functionality is working as expected for the Orders screen.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SwitchToESPPage"
    Then Check "ESPHomePage" is displayed
    And Enter "SC1001" into "ParticipantId"
    And Press ENTER key
    And Wait for 2 second
    Then Click on "OrderButton"
    And Wait for 5 second
    And Save data to "DefaultTransactionOldDate" from "OrdersColumn2" with "XPATH" locator
    And Print all element texts from "OrdersColumn2"
    And Click on "SortByButton"
    Then Click on "NewestFromDropdown"
    And Wait for 2 second
    And Click on "SortByButton"
    Then Click on "OldestFromDropdown"
    And Save data to "TransactionOldDate" from "OrdersColumn2" with "XPATH" locator
    Then Wait for 2 second
    And Click on "SortByButton"
    Then Click on "NewestFromDropdown"
    And Save data to "TransactionNewDate" from "OrdersColumn2" with "XPATH" locator
    And Print all element texts from "OrdersColumn2"
    Then Assert "TransactionOldDate" is not equal to "TransactionNewDate"
    And Close browser








