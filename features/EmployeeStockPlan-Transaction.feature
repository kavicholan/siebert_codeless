@EmployeeStockPortal-Transactions @UIAutomation
Feature: Transactions

  Scenario: TC01_Transactions_Verify Transaction Type, Transaction Date, Grant/Award Number, Exercise Sequence, Transacted, Sold/Swapped, Price, FMV, Payment Type, Status and Net Shares in Transaction screen are correctly fetching from DB
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    When save all element texts from "TranColumn4" as "SavedNumber"
    Then Verify "TranColumn1" UI value with Runtime value "SavedNumber" by Executing the "Tran_TransactionType_SelectQuery" Query and "By comparing UI values in DB2"
#    Then Verify "TranColumn2" UI value with Runtime value "SavedNumber" by Executing the "Tran_TransactionDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "TranColumn3" UI value with Runtime value "SavedNumber" by Executing the "Tran_GrantNumber_SelectQuery" Query and "when Both are equal"
    Then Verify "TranColumn4" UI value with Runtime value "SavedNumber" by Executing the "Tran_ExerciseSequenceNumber_SelectQuery" Query and "when Both are equal"
    Then Verify "TranColumn5" UI value with Runtime value "SavedNumber" by Executing the "Tran_TransactionSeq_SelectQuery" Query and "when Both are equal"
    Then Verify "TranColumn6" UI value with Runtime value "SavedNumber" by Executing the "Tran_TransactedQty_SelectQuery" Query and "when Both are equal"
    Then Verify "TranColumn7" UI value with Runtime value "SavedNumber" by Executing the "Tran_SoldQty_SelectQuery" Query and "when Both are equal"
    Then Verify "TranColumn8" UI value with Runtime value "SavedNumber" by Executing the "Tran_Price_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "TranColumn9" UI value with Runtime value "SavedNumber" by Executing the "Tran_FMV_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "TranColumn10" UI value with Runtime value "SavedNumber" by Executing the "Tran_PaymentType_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "TranColumn11" UI value with Runtime value "SavedNumber" by Executing the "Tran_Status_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "TranColumn12" UI value with Runtime value "SavedNumber" by Executing the "Tran_NetShares_SelectQuery" Query and "when Both are equal"
    And Close browser

  Scenario: TC02_Transactions_Verify Grant Details by clicking on Grant Number in Transaction screen
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    When save all element texts from "TranGrantColumn3" as "SavedNumber"
    And Click on "TranGrantColumn3"
    And Wait for 2 second
    Then Verify "GrantDetailsGrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "GrantDetailsGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsStatus" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsStatus_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsActionStatus" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsActionStatus_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsAcceptanceDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
#    Then Verify "GrantDetailsPlanName" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsPlanName_SelectQuery" Query and "when Both are equal"
#    Then Verify "GrantDetailsScheduleType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsScheduleType_SelectQuery" Query and "when Both are equal"
    Then Verify "GrantDetailsGrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "GrantDetailsGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "GrantDetailsEstCurrentStockFMV" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "GrantDetailsSharesGranted" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharedOutstanding" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesVestedandEarned" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercised" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "GrantDetailsSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC03_Transactions_Verify Exercise Summary detials  by clicking on Exercise Sequence Number in Transaction screen
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    When save all element texts from "TranExerciseColumn4" as "SavedNumber"
    And Click on "TranExerciseColumn4"
    And Wait for 2 second
    And Check "ExerciseSummeryButton" is displayed
    Then Click on "ExerciseSummeryButton"
    And Wait for 3 second
    And Check "ExerciseSeqNumberTop" is displayed
    Then Verify "TranColumn4" UI value with Runtime value "SavedNumber" by Executing the "Tran_ExerciseSequenceNumber_SelectQuery" Query and "when Both are equal"
    Then Verify "ParticipantID" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when Both are equal"
    Then Verify "Exercise_GrantNumber" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "By comparing UI values in DB2"
    Then Verify "Exercise_GrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "GrantDetailsExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Exercise_GrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "Exercise_AcceptanceDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsAcceptanceDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "Exercise_GrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "Exercise_FMV" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsEstCurrentStockFMV_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "ExercisedSeq" UI value with Runtime value "SavedNumber" by Executing the "ExercisedSeq_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "ExerciseStatus" UI value with Runtime value "SavedNumber" by Executing the "ExerciseStatus_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "ExerciseDate" UI value with Runtime value "SavedNumber" by Executing the "ExerciseDate_SelectQuery" Query and "Remove dollar symbol and compare UI-DB values after Round off"
    Then Verify "SharesGranted" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesGranted_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesOutstanding" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharedOutstandingSelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesVestedandEarned" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesVestedandEarned_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesExercised" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "SharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
    And Close browser

  Scenario: TC04_Transactions_Verify Extended details  by clicking on Exercise Sequence Number in Transaction screen
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    When save all element texts from "TranExerciseColumn4" as "SavedNumber"
    And Click on "TranExerciseColumn4"
    And Wait for 2 second
    When save all element texts from "TranColumn4" as "SavedNumber"
    When save all element texts from "TranColumn3" as "grantNumber"
    And Click on "TranColumn4"
    And Check "ExtendedDetailsButton" is displayed
    Then Click on "ExtendedDetailsButton"
    And Wait for 3 second
#    And Check "ExerciseSeqNumberTop" is displayed
#    Then Verify "ParticipantID" UI value by Executing "Tran_ParticipantID_SelectQuery" Query with the Save Number "when Both are equal"
   #  Extended Details - Exercise summery tab
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

  Scenario: TC05_Transactions_Verify that the pagination functionality is working as expected for the Transaction screen.
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    Then Save data to "Page1" from "TranColumn3" with "XPATH" locator
    And Click on "TranKeyboardArrowRightIcon"
    And Assert "02" is present at "PageCurrentCount"
    Then Save data to "Page2" from "TranColumn3" with "XPATH" locator
    And Assert "Page1" is not equal to "Page2"
    And Wait for 2 second
    Then Click on "TranKeyboardArrowLeftIcon"
    And Assert "01" is present at "PageCurrentCount"
    And Assert "Text2" is not equal to "Text1"
    And Close browser

  Scenario: TC06_Transactions_Verify that the Sort functionality is working as expected for the Transaction screen.
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
    Then Click on "TransactionButton"
    And Wait for 5 second
    And Save data to "DefaultTransactionOldDate" from "TranColumn2" with "XPATH" locator
    And Print all element texts from "TranColumn2"
    And Click on "TranSortButton"
    Then Click on "NewestFromDropdown"
    And Wait for 2 second
    And Click on "TranSortButton"
    Then Click on "OldestFromDropdown"
    And Save data to "TransactionOldDate" from "TranColumn2" with "XPATH" locator
    And Print all element texts from "TranColumn2"
    Then Assert "DefaultTransactionOldDate" is not equal to "TransactionOldDate"
    Then Wait for 2 second
    And Click on "TranSortButton"
    Then Click on "NewestFromDropdown"
    And Save data to "TransactionNewDate" from "TranColumn2" with "XPATH" locator
    And Print all element texts from "TranColumn2"
    Then Assert "TransactionOldDate" is not equal to "TransactionNewDate"
    And Close browser
