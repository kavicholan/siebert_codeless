@EmployeeStockPlan-ETECashless @EmployeeStockPlan @ETE
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
    And Wait for "10" seconds
    And Enter "TUP01" into "ParticipantId"
    And Press ENTER key
    And Wait for "2" seconds
    And Check "PortfolioMenu" is displayed
    Then Click on "PortfolioMenu"
    And Wait for "5" seconds

  Scenario:TC01_Portfolio StockOptions_Verify that the user can exercise full granted shares using a Market order type in the cashless option.
    And Click on "StockOptionsButton"
    And Wait for "3" seconds
    And Click on "ExerciseButton"
    And Wait for "5" seconds
    # Assert the Header Values with DB
    When save all element texts from "ExerciseOptionGranNo" as "SavedNumber"
    Then Verify "ExerciseOptionGranNo" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantNumber_SelectQuery" Query and "when DB value contains special character"
#    Then Verify "ExerciseOptionGrantType" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantType_SelectQuery" Query and "when Both are equal"
    Then Verify "ExerciseOptionGrantDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "ExerciseOptionGrantPrice" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsGrantPrice_SelectQuery" Query and "UI-DB values match after decimal Round off"
    Then Verify "ExerciseOptionSharesExercisable" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsSharesExercisable_SelectQuery" Query and "UI-DB values match after decimal Round off"
#   Then Verify "ExerciseOptionExpirationDate" UI value with Runtime value "SavedNumber" by Executing the "GrantDetailsExpirationDate_SelectQuery" Query and "By changing the Date format"
    Then Verify "MaxShares" UI value with Runtime value "SavedNumber" by Executing the "ExerciseOptionCurrentSharesExercised_SelectQuery" Query and "UI-DB values match after decimal Round off"
    # Place a Full share market order
    And Click on "MaxShares"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
#    When Save data to "OrderSeqNumber" from "OrderSeqNoOrderDetailsPage" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC02_Portfolio StockOptions_Verify that the user can exercise partial granted shares using a Market order type in the cashless option.
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
    # Place a Partial share market order
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC03_Portfolio StockOptions_Updated market order type values in exercise option screen and verify that the changes are reflected on relevant screens
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC04_Portfolio StockOptions_Updated exercise option screen to change the Market order type to Day Limit order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order to Day Limit Order
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
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC05_Portfolio StockOptions_Updated exercise option screen to change the Market order type to Good Until Cancelled order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Good Until Cancelled Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order to Good Until Cancelled Order
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
    # Assert the Market Order to Good Until Cancelled Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Good Until Cancelled" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario:TC06_Portfolio StockOptions_Verify that the user can exercise full granted shares using a Day Limit order type in the cashless option.
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
    # Place a Full share Day Limit order
    And Click on "MaxShares"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC07_Portfolio StockOptions_Verify that the user can exercise partial granted shares using a Day Limit order type in the cashless option.
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
    # Place a Partial share Day Limit order
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
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC08_Portfolio StockOptions_Updated Day Limit order type values in exercise option screen and verify that the changes are reflected on relevant screens
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC09_Portfolio StockOptions_Updated exercise option screen to change the Day Limit Order to Market order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order to Market Order
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "MarketOrderButton"
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Market Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Market Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC10_Portfolio StockOptions_Updated exercise option screen to change the Day Limit Order to Good Until Cancelled order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Good Until Cancelled Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order to Good Until Cancelled Order
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
    # Assert the Day Limit Order to Good Until Cancelled Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Good Until Cancelled" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario:TC11_Portfolio StockOptions_Verify that the user can exercise full granted shares using a Good Until Cancelled order type in the cashless option.
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
    # Place a Full share Good Until Cancelled order
    And Click on "MaxShares"
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC12_Portfolio StockOptions_Verify that the user can exercise partial granted shares using a Good Until Cancelled order type in the cashless option.
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC13_Portfolio StockOptions_Updated Good Until Cancelled order type values in exercise option screen and verify that the changes are reflected on relevant screens
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC14_Portfolio StockOptions_Updated exercise option screen to change the Good Until Cancelled Order to Market order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Good Until Cancelled Order to Market Order
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "MarketOrderButton"
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Market Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Market Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC15_Portfolio StockOptions_Updated exercise option screen to change the Good Until Cancelled Order to Day Limit order type and verify that the updated values are reflected on relevant screens.
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Good Until Cancelled Order to Day Limit Order
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
    # Assert the Good Until Cancelled Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

#    ETE Performance Awards
  Scenario:TC01_Portfolio PerformanceAwards_Verify that the user can exercise full granted shares using a Market order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Full share market order
    And Click on "MaxShares"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC02_Portfolio PerformanceAwards_Verify that the user can exercise partial granted shares using a Market order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share market order
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC03_Portfolio PerformanceAwards_Updated market order type values in exercise option screen and verify that the changes are reflected on relevant screens
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC04_Portfolio PerformanceAwards_Updated exercise option screen to change the Market order type to Day Limit order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order to Day Limit Order
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
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC05_Portfolio PerformanceAwards_Updated exercise option screen to change the Market order type to Good Until Cancelled order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share market order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Good Until Cancelled Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Market Order to Good Until Cancelled Order
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
    # Assert the Market Order to Good Until Cancelled Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Good Until Cancelled" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario:TC06_Portfolio PerformanceAwards_Verify that the user can exercise full granted shares using a Day Limit order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Full share Day Limit order
    And Click on "MaxShares"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC07_Portfolio PerformanceAwards_Verify that the user can exercise partial granted shares using a Day Limit order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Day Limit order
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
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC08_Portfolio PerformanceAwards_Updated Day Limit order type values in exercise option screen and verify that the changes are reflected on relevant screens
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC09_Portfolio PerformanceAwards_Updated exercise option screen to change the Day Limit Order to Market order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order to Market Order
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "MarketOrderButton"
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Market Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Market Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC10_Portfolio PerformanceAwards_Updated exercise option screen to change the Day Limit Order to Good Until Cancelled order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Day Limit order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "DayLimitOrderButton"
    Then Check "DayLimitOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order to Good Until Cancelled Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order to Good Until Cancelled Order
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
    # Assert the Day Limit Order to Good Until Cancelled Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Good Until Cancelled" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario:TC11_Portfolio PerformanceAwards_Verify that the user can exercise full granted shares using a Good Until Cancelled order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Full share Good Until Cancelled order
    And Click on "MaxShares"
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario:TC12_Portfolio PerformanceAwards_Verify that the user can exercise partial granted shares using a Good Until Cancelled order type in the cashless option.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
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
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
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
    Then Assert "MKT" is present at "OrdersColumn3"
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

  Scenario: TC13_Portfolio PerformanceAwards_Updated Good Until Cancelled order type values in exercise option screen and verify that the changes are reflected on relevant screens
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Day Limit Order values
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "5" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "5" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Market Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "15" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$25.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "15" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "15" is present at "ExercisedShareOrderDetailPage"
    Then Assert "15" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "15" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "15" is present at "GrantDetail_Exercised"
    Then Assert "15" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "15" is present at "TranColumn6"
    Then Assert "15" is present at "TranColumn7"
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

  Scenario: TC14_Portfolio PerformanceAwards_Updated exercise option screen to change the Good Until Cancelled Order to Market order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Market Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Good Until Cancelled Order to Market Order
    And Wait for "5" seconds
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    And Click on "ChangeElectionButton"
    And Wait for "5" seconds
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "MarketOrderButton"
    Then Check "MarketOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Market Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Market Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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

  Scenario: TC15_Portfolio PerformanceAwards_Updated exercise option screen to change the Good Until Cancelled Order to Day Limit order type and verify that the updated values are reflected on relevant screens.
    And Click on "PerformanceAwardsButton"
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
    # Place a Partial share Good Until Cancelled order
    When Enter "1" into "CurrentSharesExercisedTextBox"
    And Click on "CashlessButton"
    And Wait for "2" seconds
    And Click on "GTCOrderButton"
    Then Check "GTCOrderButton" is enabled
    When Enter "2" into "ExerciseOptionSalePriceTextBox"
    And Click on "SaveExerciseButton"
    # Assert the Good Until Cancelled Order to Day Limit Order before Update
    And Wait for "10" seconds
    Then Assert "1" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "1" is present at "ExerciseSummary_SharesToSell"
    # Update the Good Until Cancelled Order to Day Limit Order
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
    # Assert the Good Until Cancelled Order to Day Limit Order
    And Wait for "10" seconds
    Then Assert "11" is present at "ExerciseDetail_ExerciseSequence"
    Then Assert "$2.00" is present at "ExerciseSummary_SalePrice"
    Then Assert "11" is present at "ExerciseSummary_SharesToSell"
    And Click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Verify "ExerciseSummary_participantID" UI value with Runtime value "SavedNumber" by Executing the "Tran_ParticipantID_SelectQuery" Query and "when DB value contains special character"
    Then Assert "Modeled" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "2" seconds
    # Assert the Exercise Summary Details Values with DB
    When Save data to "TransactionDate" from "ExerciseSummary_ExerciseDate" with "XPATH" locator
    And Save data to "GrantNumber" from "ExerciseSummary_GrantNumber" with "XPATH" locator
    And Save data to "ExerciseSeqNumber" from "ExerciseSummary_ExerciseSequence" with "XPATH" locator
    And Save data to "ExercisedShares" from "ExerciseSummary_ExercisedShares" with "XPATH" locator
    And Save data to "GrantPrice" from "ExerciseSummary_GrantPrice" with "XPATH" locator
    And Wait for "3" seconds
    And Hover and click on "ElectToExerciseButton"
    And Wait for "5" seconds
    Then Assert "Attestation" is present at "AttestationPageHeader"
    And Wait for "5" seconds
    And Click on "ContinueButton"
    And Wait for "5" seconds
    Then Assert "Exercise elected successfully" is present at "ExercisedSuccessfulMessage"
    Then Assert "ELECTED" is present at "ExerciseSummary_ExerciseStatus"
    And Wait for "3" seconds
    When Click on "ViewOrderDetailsButton"
    And Wait for "5" seconds
    #Assert the updated shares in Exercise Summary
    Then Assert "11" is present at "ExercisedShareOrderDetailPage"
    Then Assert "11" is present at "ExercisedShareInOrderDetailsPage"
    Then Assert "Day Limit Order" is present at "OrderTypeInOrderDetailsPage"
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
    #Assert the updated values in Order Screen
    Then Assert "11" is present at "OrdersColumn9"
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
    #Assert the updated values in Exerise Details page in Grant Details Screen
    Then Assert "11" is present at "GrantDetail_Exercised"
    Then Assert "11" is present at "GrantDetail_Sold/Swapped"
    # Transaction Screen
    And Click on "TransactionButton"
    And Wait for "3" seconds
    When Save data to "TransactionDate_TranList" from "TranColumn2" with "XPATH" locator
    And Save data to "GrantNumber_TranList" from "TranColumn3" with "XPATH" locator
    And Save data to "ExerciseSeqNumber_TranList" from "TranColumn4" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn6" with "XPATH" locator
    And Save data to "GrantPrice_TranList" from "TranColumn8" with "XPATH" locator
    And Save data to "ExercisedShares_TranList" from "TranColumn12" with "XPATH" locator
    #Assert the updated values in Transaction  Screen
    Then Assert "11" is present at "TranColumn6"
    Then Assert "11" is present at "TranColumn7"
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