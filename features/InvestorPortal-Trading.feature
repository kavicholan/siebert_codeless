@InvestorPortal-Trading @UIAutomation @InvestorPortal
Feature: Trading

  # Equity Order
  @abc11
  Scenario: TC01_EquityOrder_Place an Equity Buy Order with Market Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    Then Click on "TradingMenu"
    And Wait for "5" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    And Click on "SearchByEquityBar"
    And Wait for "5" seconds
    And Click on "SearchByEquityBar2"
    And Wait for "2" seconds
    Then Enter "TSLA" into "SearchByEquityBar2"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    #And Click on "BuyButton"
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    And Click on "MarketOrderDropdownButton"
    And Wait for "5" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And  Click on "DayDropdown"
    And Wait for "5" seconds
    #Then Hover and click on "QualifierDropdown"
    #And Wait for "2" seconds
    #And Hover and click on "DNRDropdown"
    #And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser
    @abc2
  Scenario: TC02_EquityOrder_Place an Equity Buy Order with Limit Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    And Click on "SearchByEquityBar"
    And Wait for "5" seconds
    And Click on "SearchByEquityBar2"
    And Wait for "2" seconds
    Then Enter "TSLA" into "SearchByEquityBar2"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    #And Click on "BuyButton"
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Hover and click on "AccountTypeDropdown"
    And Wait for "2" seconds
    Then Click on "CashDropdownButton"
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitInputBox"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitInputBox"
    And Wait for "2" seconds
    And Click on "LimitTimeInForceDropdown"
    And Click on "GTCDropdown"
    And Wait for "2" seconds
    #Then Hover and click on "QualifierDropdown"
    #And Wait for "2" seconds
    #And Hover and click on "DNRDropdown"
    #And Wait for "2" seconds
    Then Click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "5" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser
    @abc3
  Scenario: TC03_EquityOrder_Place an Equity Sell Order with Market Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    Then Click on "Portfoliotab"
    And Wait for "5" seconds
    Then Click on "HoldingsTab"
    And Wait for "10" seconds
    And Scroll down "EquityPresizedIcon"
    And Wait for "5" seconds
    And Click on "EquityTradeIcon"
    And Wait for "10" seconds
    Then Check "EquityOrderTab" is displayed
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC04_EquityOrder_Place an Equity Sell Order with Limit Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "5" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "2" into "LimitQuantityDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "5" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Hover and click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    And Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    And Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC05_EquityOrder_Place an Equity Buy Order for Margin Account type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    Then Click on "TradingMenu"
    And Wait for "5" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    And Click on "SearchByEquityBar"
    And Wait for "5" seconds
    And Click on "SearchByEquityBar2"
    And Wait for "2" seconds
    Then Enter "TSLA" into "SearchByEquityBar2"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    #And Click on "BuyButton"
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    And Click on "MarketOrderDropdownButton"
    And Wait for "5" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And  Click on "DayDropdown"
    And Wait for "5" seconds
    #Then Hover and click on "QualifierDropdown"
    #And Wait for "2" seconds
    #And Hover and click on "DNRDropdown"
    #And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC06_EquityOrder_Place an Equity Sell Order for Margin Account type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "2" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "2" into "LimitQuantityDropdown"
#    And Send Keys "5" using Actions into "LimitDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Hover and click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    And Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    And Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC07_EquityOrder_Place an Equity Buy Order for Quantity less than 100 with AON Qualifier and verify error message business rules violation gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    Then Click on "TradingMenu"
    And Wait for "5" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    And Click on "SearchByEquityBar"
    And Wait for "5" seconds
    And Click on "SearchByEquityBar2"
    And Wait for "2" seconds
    Then Enter "TSLA" into "SearchByEquityBar2"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    #And Click on "BuyButton"
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    And Click on "MarketOrderDropdownButton"
    And Wait for "5" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And  Click on "DayDropdown"
    And Wait for "5" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "AONDropdown"
    And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    Then Check "AlertMessageForAONQualifier" is displayed
    And Close browser

  Scenario: TC08_EquityOrder_Place an Equity Sell Order for Quantity less than 100 with AON Qualifier and verify error message business rules violation gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AA" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "2" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarketOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "AONDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    Then Check "AlertMessageForAONQualifier" is displayed
    And Close browser

  Scenario: TC09_EquityOrder_Place an Equity Buy Order for Quantity greater than 100 with AON Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "5" seconds
    And Click on "1stAcc"
    And Wait for "5" seconds
    Then Click on "TradingMenu"
    And Wait for "5" seconds
    And Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    And Click on "SearchByEquityBar"
    And Wait for "5" seconds
    And Click on "SearchByEquityBar2"
    And Wait for "2" seconds
    Then Enter "TSLA" into "SearchByEquityBar2"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    #And Click on "BuyButton"
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    And Click on "MarketOrderDropdownButton"
    And Wait for "5" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And  Click on "DayDropdown"
    And Wait for "5" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "AONDropdown"
    And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "100" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC10_EquityOrder_Place an Equity Sell Order for Quantity greater than 100 with AON Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "2" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarketOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "AONDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "125" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC11_EquityOrder_In a buy Equity order, the displayed available balance should match the available balance shown in the Portfolio Screen's Account Summary Balance field for the specific account.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    Then Check "EquityAvailableBalance" is displayed
    And Save data to "EquityAccountBalance" from "EquityAvailableBalance" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "BalanceSummaryTab"
    And Wait for "5" seconds
    Then Check "BalanceSummaryAccountBalance" is displayed
    And Save data to "BSAccountBalance" from "BalanceSummaryAccountBalance" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "EquityAccountBalance" contains "BSAccountBalance"
    And Close browser

  Scenario: TC12_EquityOrder_Place an equity order for a symbol using cash. Then, attempt to sell the same symbol using margin and verify that an error message is displayed.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "5" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    And Hover and click on "HoldingsSymbolPresizedIcon"
    And Wait for "2" seconds
#    And Hover and click on "HoldingsSymbolTradeIcon"
    And Wait for "7" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarginDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Hover and click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "15" seconds
    Then Check "MarginErrorMsg" is displayed
    And Close browser

#  Scenario: TC13_EquityOrder_Place an Equity Buy Order with maximum quantity that exceeds account balance and verify validation error message throws insufficient funds
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "10" seconds
##    And Click on "SiebertLoginPopupWindowCloseIcon"
##    And Wait for "3" seconds
#    Then Check "HomePage" is displayed
#    And Click on "SelectAccount"
#    And Click on "BuyOrderAcc"
#    And Wait for "2" seconds
#    When Click on "TradingMenu"
#    And Wait for "2" seconds
#    And Click on "EquityOrderTab"
#    And Wait for "10" seconds
#    And Click on "AllEquityButton"
#    And Wait for "2" seconds
#    And Hover and click on "SearchByEquityBar"
#    And Wait for "2" seconds
#    Then Enter "A" into "SearchByEquityBar"
#    And Press "Enter" key for "1" times
#    And Wait for "10" seconds
#    And Click on "AllEquitySymbol1stOption"
#    And Wait for "10" seconds
#    And Click on "BuyButton"
#    And Wait for "2" seconds
#    And Click on "OrderDropdown"
#    And Wait for "2" seconds
#    And Hover and click on "MarketOrderDropdownButton"
#    And Wait for "2" seconds
#    Then Click on "AccountTypeDropdown"
#    And Hover and click on "MarginDropdownButton"
#    And Wait for "5" seconds
#    Then Click on "TimeInForceDropdown"
#    And Hover and click on "DayDropdown"
#    And Wait for "5" seconds
#    Then Click on "QualifierDropdown"
#    And Wait for "2" seconds
#    And Hover and click on "DNRDropdown"
#    And Wait for "2" seconds
#    Then Click on "QuantityDropdown"
#    And Wait for "2" seconds
#    And Send Keys "9999999999999999999999" using Actions into "QuantityDropdown"
#    And Wait for "2" seconds
#    And Click on "PreviewOrderButtonInEquityOrder"
#    Then Check "InsufficientFundsErrorMsg" is displayed
#    And Close browser

  Scenario: TC13_EquityOrder_Place an Equity Buy Order with leaving mandatory fields as empty and verify validation error message throws Required field
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "5" seconds
    Then Check "RequiredField" is displayed
    And Close browser

  Scenario: TC14_EquityOrder_Place an Equity Sell Order with leaving mandatory fields as empty and verify validation error message throws Required field
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "5" seconds
    Then Check "RequiredField" is displayed
    And Close browser

  Scenario: TC15_EquityOrder_Place a buy equity order as Market type, edit the same order from order status screen and verify the successfully placed order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    And Wait for "5" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "DayDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "3" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Wait for "3" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "15" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    And Wait for "2" seconds
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC16_EquityOrder_Place a buy equity order as Limit type, edit the same order  from order status screen and verify the successfully placed order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitButton"
    And Wait for "2" seconds
    Then Send Keys "2" using Actions into "LimitButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "5" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "4" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "3" seconds
    Then Hover and click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "3" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "15" seconds
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "3" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "10" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC17_EquityOrder_Place a Sell equity order as Market type, edit the same order from order status screen  and verify the successfully placed order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "2" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "MarketOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "DayDropdown"
    And Wait for "5" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    And Wait for "2" seconds
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "2" seconds
    Then Hover and click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC18_EquityOrder_Place a Sell equity order as Limit type, edit the same order from order status screen and verify the successfully placed order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "2" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "2" into "LimitQuantityDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "GTCDropdown"
    And Wait for "5" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "2" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC19_EquityOrder_Verify that editing the order updates the new order ID to "Order requested" status and cancels the existing order ID.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitButton"
    And Wait for "2" seconds
    Then Send Keys "2" using Actions into "LimitButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "5" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Save data to "1stPage1stRow" from "OptionsOrderstatus1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" contains "Order Requested "
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC20_EquityOrder_In Equity Sell select an symbol which not present in Holdings screen and verify proper error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AACT" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "1" into "LimitQuantityDropdown"
#    And Send Keys "5" using Actions into "LimitDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "GTCDropdown"
    And Wait for "5" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    Then Check "MarginErrorMsg" is displayed
    And Close browser

  Scenario: TC21_EquityOrder_In preview Order section verify all headers , fields and its values are displaying correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AACT" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    And Click on "BuyButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitButton"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    And Save data to "AccountTypeCheck1" from "EquityAccountType" with "XPATH" locator
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    And Save data to "TFCheck1" from "EquityTF" with "XPATH" locator
    And Wait for "2" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    And Save data to "QualifierCheck1" from "EquityQualifier" with "XPATH" locator
    And Wait for "2" seconds
    Then Hover and click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Save data to "QuantityCheck1" from "EquityQuantity" with "XPATH" locator
    And Wait for "2" seconds
    And Save data to "PriceCheck1" from "EquityPrice" with "XPATH" locator
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Save data to "QuantityCheck2" from "PreviewQuantity" with "XPATH" locator
    And Save data to "AccountTypeCheck2" from "PreviewAccountType" with "XPATH" locator
    And Save data to "TFCheck2" from "PreviewTF" with "XPATH" locator
    And Save data to "QualifierCheck2" from "PreviewQualifier" with "XPATH" locator
    And Save data to "PriceCheck2" from "PreviewPrice" with "XPATH" locator
    And Wait for "2" seconds
#    Then Assert "QuantityCheck1" contains "QuantityCheck2"
    Then Assert "AccountTypeCheck1" contains "AccountTypeCheck2"
    Then Assert "TFCheck1" contains "TFCheck2"
    Then Assert "QualifierCheck1" contains "QualifierCheck2"
#    Then Assert "PriceCheck1" contains "PriceCheck2"
    And Close browser

    # Options Order
  Scenario: TC01_OptionsOrder_Place an Options order for Buy Call Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    When Hover and click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "LimitInOptionsOrder"
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
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "2" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData" using Actions class
    And Wait for "2" seconds
    Then Hover and click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Hover and click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC02_OptionsOrder_Place an Options order for Buy Put Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    When Select "Buy Put" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "LimitInOptionsOrder"
    Then Send Keys "2" using Actions into "LimitInOptionsOrder"
    And Wait for "2" seconds
    Then Enter "2" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "2" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData" using Actions class
    And Wait for "2" seconds
    Then Hover and click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Hover and click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

#    Need clarification on sell covered call
  Scenario: TC03_OptionsOrder_Place an Options order for Sell Covered Call Action type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "KO" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Covered Call" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
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
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC04_OptionsOrder_Place an Options order for Sell Uncovered Call Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "ARGX" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Uncovered Call" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Margin" using Actions into "AccountTypeDropdownInOptionOrder"
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
    And Wait for "10" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC05_OptionsOrder_Place an Options order for Sell Naked Put Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "ARGX" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Naked Put" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Margin" using Actions into "AccountTypeDropdownInOptionOrder"
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
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC06_OptionsOrder_Place an Options order for Buy Call to Close Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Buy Call to Close" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
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
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC07_OptionsOrder_Place an Options order for Buy Put to Close Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Buy Put to Close" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC08_OptionsOrder_Place an Options order for Sell Call to Close Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "5" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "ARGX" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Call to Close" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Margin" using Actions into "AccountTypeDropdownInOptionOrder"
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
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    When Click on "AccountProfileMenu"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "5" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC09_OptionsOrder_Place an Options order for Sell Put to Close Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "5" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "ARGX" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Put to Close" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Margin" using Actions into "AccountTypeDropdownInOptionOrder"
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
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC10_OptionsOrder_Place an Options order for Sell Cash-Secured Put types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "5" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "ARGX" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Cash-Secured Put" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Margin" using Actions into "AccountTypeDropdownInOptionOrder"
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
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC11_OptionsOrder_Place an Options order with Market Order type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    Then Send Keys "Market" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "2" seconds
    And Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    And Hover and click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC12_OptionsOrder_Place an Options order with GTC Duration type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    And Wait for "5" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData" 
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC13_OptionsOrder_Place an Options order with Decimal Quantity and Verify validation error message throws invalid quantity
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Click on "LimitInOptionsOrder"
    Then Send Keys "2" using Actions into "LimitInOptionsOrder"
    And Wait for "2" seconds
    Then Enter "5.5" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "2" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Assert "Invalid Quantity" is present at "InvalidQuantity"
    And Close browser

  Scenario: TC14_OptionsOrder_Place an Options Order with maximum order quantity that exceeds account balance and verify validation error message throws insufficient funds
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "LimitInOptionsOrder"
    Then Send Keys "2" using Actions into "LimitInOptionsOrder"
    And Wait for "2" seconds
    Then Enter "50000000000000" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    When Click on "Duration"
    And Hover and click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "2" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Check "OptionsInsufficientFundErrorMsg" is displayed
    And Close browser
    
  Scenario: TC15_OptionsOrder_Place an options order, then click "Preview Order" before confirming. If you wish to cancel the options order, click "Close" and verify that the order has been successfully cancelled.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
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
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "2" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "8" seconds
    And Click on "OptionsCloseButton"
    Then Check "OptionsOrderTab" is displayed
    And Close browser

  Scenario: TC16_OptionsOrder_In Options Sell select an symbol which not present in Holdings screen and verify proper error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Covered Call" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
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
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "5" seconds
    Then Check "OptionsErrorMsg" is displayed
    And Close browser

  Scenario: TC17_OptionsOrder_Enter valid options order then verify all headers , fields and its values are displaying correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "10" seconds
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
    And Save data to "ActionTypeCheck1" from "OptionsActionType" with "XPATH" locator
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    And Save data to "AccountTypeCheck1" from "OptionsAccountType" with "XPATH" locator
    When Hover and click on "OrderTypeDropdownInOptionOrder"
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
    And Save data to "QuantityCheck1" from "OptionsQuantity" with "XPATH" locator
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day Only" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    And Save data to "DurationCheck1" from "OptionsDuration" with "XPATH" locator
    When Hover and click on "QualifierInOptionsOrder"
#    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    And Save data to "QualifierCheck1" from "OptionsQualifier" with "XPATH" locator
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Save data to "ActionTypeCheck2" from "PreviewActionType" with "XPATH" locator
    And Save data to "AccountTypeCheck2" from "PreviewOpAccountType" with "XPATH" locator
    And Save data to "QuantityCheck2" from "PreviewOpQuantity" with "XPATH" locator
    And Save data to "DurationCheck2" from "PreviewOpDuration" with "XPATH" locator
    And Save data to "QualifierCheck2" from "PreviewOpQualifier" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "ActionTypeCheck1" is equal to "ActionTypeCheck2"
#    Then Assert "ActionTypeCheck1" contains "ActionTypeCheck2"
    Then Assert "AccountTypeCheck1" contains "AccountTypeCheck2"
    Then Assert "QuantityCheck1" contains "QuantityCheck2"
    Then Assert "DurationCheck1" contains "DurationCheck2"
    Then Assert "QualifierCheck1" contains "QualifierCheck2"
    And Close browser

  Scenario: TC18_OptionsOrder_Place an Options order with AON Qualifier type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
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
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "AON" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "5" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "7" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC19_OptionsOrder_Place an Options order with AON/DNR Qualifier type and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    When Hover and click on "OrderTypeDropdownInOptionOrder"
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
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "QualifierInOptionsOrder"
    Then Send Keys "DNR" using Actions into "QualifierInOptionsOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Hover and click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "14" and end index "28" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "5" seconds
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC20_OptionsOrder_Place an Options Order with leaving mandatory fields as empty and verify validation error message throws Required field
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "8" seconds
    Then Check "OptionsRequiredFields" is displayed
    And Close browser

  Scenario: TC21_OptionsOrder_Place an Option Call related options Order without selecting Qualifier field and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
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
    Then Hover and click on "AccountTypeDropdownInOptionOrder"
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
    When Hover and click on "LimitInOptionsOrder"
    Then Send Keys "2" using Actions into "LimitInOptionsOrder"
    And Wait for "2" seconds
    Then Enter "2" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    When Hover and click on "Duration"
    And Click on "OptionsDurationClearIcon"
    Then Send Keys "Day" using Actions into "Duration"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "5" seconds
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC22_OptionsOrder_Place an Option Put related options Order without selecting Qualifier field and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "8" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Buy Put" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Click on "OptionsAccTypeClearIcon"
    Then Send Keys "Cash" using Actions into "AccountTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "OrderTypeDropdownInOptionOrder"
    And Click on "OptionsOrderTypeClearIcon"
    Then Send Keys "Limit" using Actions into "OrderTypeDropdownInOptionOrder"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When Hover and click on "LimitInOptionsOrder"
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
    Then Hover and click on "ClickToChooseStrikePriceAndExpirationDateLink"
    And Wait for "5" seconds
    Then Click on "CallSymbolSelectToEnterStrikePriceAndExpData"
    And Wait for "3" seconds
    Then Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "8" seconds
    Then Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

    #Mutual funds order
  Scenario: TC01_MutualFundOrder_Verify an error message is displayed when leaves the fields empty and submit the order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "3" seconds
    And Click on "MFSYmbolClearIcon"
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    Then Get text from element "MFMissingSymbolAlert"
    Then Assert "You must enter the symbol of the fund." is present at "MFMissingSymbolAlert"
    And Close browser

  Scenario: TC02_MutualFundOrder_Place a Mutual Funds Order with Buy Action and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "4" seconds
    Then Click on "EnterFundSearchBar"
    Then Enter "ASIAX" into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "10" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC03_MutualFundOrder_Place a Mutual Funds Order with Sell Action and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "VWIUX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
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
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "4" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC04_MutualFundOrder_Place a Mutual Funds Order with Margin Payment type and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "PaymentTypeDropdown"
    And Hover and click on "PaymentTypeClearIcon"
    And Send Keys "Margin" using Actions into "PaymentTypeDropdown"
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
    And Wait for "4" seconds
    Then Click on "SubmitButton"
    And Wait for "10" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "12" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "5" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC05_MutualFundOrder_Place a Mutual Funds Order with Decimal Amount and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "3" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "4" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    Then Send Keys "5.75" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "4" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC06_MutualFundOrder_Place a Mutual Funds Order with more than 2 decimal amount and verify error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
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
    And Send Keys "Margin" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "5.750" using Actions into "AmountButton"
    And Wait for "5" seconds
    And Check "MutualFundErrorMessage" is displayed
    And Close browser

  Scenario: TC07_MutualFundOrder_Place a Mutual Funds Order with Shares/units Currency and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "3" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Hover and click on "CurrencyTypeClearIcon"
    And Send Keys "Shares/units" using Actions into "CurrencyDropdown"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    And Hover and click on "FractionsDropdown"
#    Then Click on "FractionsDropdown"
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "4" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Hover and click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC08_MutualFundOrder_Place a Mutual Funds Order with Round up Fractions and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Wait for "2" seconds
    Then Click on "FractionsDropdown"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC09_MutualFundOrder_Place a Mutual Funds Order with Round down Fractions and confirm its successful execution by verifying the MF order status as "executed."
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Wait for "2" seconds
    Then Click on "FractionsDropdown"
    And Send Keys "Round down" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC10_MutualFundOrder_Place a Mutual Funds Order with Reinvest Options - Dividends, LT Gains and ST Gains values as Reinvest and confirm its successful execution by verifying the MF order status as "executed"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "3" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "500" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When user click the "DividendsReinvestRadioButton" field through js
    And Wait for "2" seconds
    When user click the "LTGainReinvestRadioButton" field through js
    And Wait for "2" seconds
    When user click the "STGainReinvestRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "15" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC11_MutualFundOrder_Once Mutual Funds order is submitted then click Edit Orders in preview page and verify user is able to edit the order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "5" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "3" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "2" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When user click the "DividendsReinvestRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    When Click on "EditOrdersButton"
    And Wait for "5" seconds
    When Click on "AmountButton"
    Then Press BACKSPACE key for "5" times
    Then Send Keys "6" using Actions into "AmountButton"
    And Wait for "2" seconds
    When user click the "DividendsCashRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "6" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC12_MutualFundOrder_Once Mutual Funds order is submitted then click close icon in preview page and verify the user navigates back to Mutual order home screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "4" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "3" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "2" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When user click the "DividendsReinvestRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    When Click on "PreviewCloseButton"
    And Wait for "4" seconds
    Then Check "ActionDropdown" is displayed
    And Close browser

  Scenario: TC13_MutualFundOrder_Place a Mutual Funds order with invalid fund symbol and verify an error message is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "3" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "4" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "4" seconds
    And Click on "MFSearchBar2"
    And Press "BackSpace" key for "6" times
    Then Send Keys "AMZN" using Actions into "MFSearchBar2"
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
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "10" seconds
    And Check alert is present
    And Close browser

  Scenario: TC14_MutualFundOrder_In Mutual funds Sell select an symbol which not present in Holdings screen and verify proper error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "AXBAX" using Actions into "EnterFundSearchBar"
    And Wait for "4" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "4" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
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
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When user click the "DividendsReinvestRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "6" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Check "MutualFundInsufficientMessage" is displayed
    And Close browser

  Scenario: TC15_MutualFundOrder_Breadcrumb menu should accurately reflect the users navigation path within the Mutual Funds Order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    And Wait for "2" seconds
    Then Send Keys "AXBAX" using Actions into "EnterFundSearchBar"
    And Wait for "4" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    And Click on "BuyNewFundsRedirectButton"
    And Wait for "2" seconds
    And Click on "MutualFundRedirectButton"
    And Wait for "5" seconds
    Then Check "MutualFundsTab" is displayed
    And Close browser
    
   Scenario: TC16_MutualFundOrder_Buy a Mutual Funds Order with maximum amount that exceeds account balance and verify validation error message throws insufficient funds
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    And Wait for "2" seconds
    Then Send Keys "AXBAX" using Actions into "EnterFundSearchBar"
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
    Then Send Keys "9999999999999999999999999" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "5" seconds
    Then Check "InsufficientErrorMessage" is displayed
    And Close browser

  Scenario: TC17_MutualFundOrder_Sell a Mutual Funds Order for an account not having the sufficient shares and verify validation error message throws
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "VWIUX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "99999999999999999999999" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "5" seconds
    And Check "MutualFundInsufficientMessage" is displayed
    And Close browser

  Scenario: TC18_MutualFundOrder_Place an Mutual funds order symbol with cash then verify by selling the specific symbol with margin and check error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "VWIUX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "PaymentTypeDropdown"
    And Press "BackSpace" key for "1" times
    And Send Keys "Margin" using Actions into "PaymentTypeDropdown"
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
    And Press "BackSpace" key for "1" times
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "7" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "8" seconds
    And Check "MutualFundInsufficientMessage" is displayed
    And Close browser

  Scenario: TC19_MutualFundOrder_Enter Invalid Symbol in Buy New Fund text box and click Buy This Fund button then verify Error message 'The fund symbol XXXX is not supported by your firm.  Please contact your firm for further details.’gets displayed.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "AAAA" using Actions into "EnterFundSearchBar"
    And Click on "MFDropdownCloseIcon"
    And Wait for "3" seconds
    Then Click on "BuyThisFundButton"
    Then Check "InvalidSymbolErrorMessage" is displayed
    And Close browser

  Scenario: TC20_MutualFundOrder_Enter Invalid Symbol in Create order screen Fund symbol text box , enter other details then click Submit button and verify Error message 'Invalid Symbol' gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "2" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "VWIUX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    And Click on "MFSearchBar2"
    And Press "BackSpace" key for "5" times
    Then Send Keys "AAAA" using Actions into "MFSearchBar2"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
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
    And Press "BackSpace" key for "1" times
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "2" seconds
    And Check "InvalidSymbolAAAAErrorMsg" is displayed
    And Close browser

  Scenario: TC21_MutualFundOrder_In Fund Symbols list table click an Fund symbol with Buy type in Mutual fund Home section and verify it navigates to create order page with selected Fund symbol as Buy Action
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    And Click on "MutualFundTableBuy"
    And Wait for "5" seconds
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
    And Press "BackSpace" key for "1" times
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Click on "KebabMenu"
    And Wait for "2" seconds
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "7" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC22_MutualFundOrder_In Fund Symbols list table click an Fund symbol with Sell type in Mutual fund Home New Funds section and verify it navigates to create order page with selected Fund symbol as Sell Action
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "3" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    And Click on "MutualFundTableSell"
    And Wait for "5" seconds
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
    And Press "BackSpace" key for "1" times
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Click on "KebabMenu"
    And Wait for "2" seconds
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC23_MutualFundOrder_Verify existing fund symbols list for specific account gets displayed in Mutual Fund home section correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    And Check "MutualFundHomeTable" is displayed
    And Close browser

  Scenario: TC24_MutualFundOrder_In Mutual fund home screen Click on the ascending sort icon in the Fund Symbols table and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "6" seconds
    And Click on "AscendingSortButton"
    And Wait for "3" seconds
    Then verify sorted records in "ascending order" for the "MutualFundHomeTable" column "FUND SYMBOL"
    And Close browser

  Scenario: TC25_MutualFundOrder_In Mutual fund home screen  Click on the descending sort icon in the Fund Symbols table and ensure that all fields are sorted in descending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    And Click on "AscendingSortButton"
    And Click on "AscendingSortButton"
    And Wait for "5" seconds
    Then verify sorted records in "descending order" for the "MutualFundHomeTable" column "FUND SYMBOL"
    And Close browser

  Scenario: TC26_MutualFundOrder_In Buy New Funds section, Select one of the Fund from dropdown and click submit then verify the selected Fund type related Fund symbol,Fund Name gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Send Keys "ABERDEEN FUNDS" using Actions into "FundFamilyTextBox"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Click on "MutualFundTableBuy"
    And Wait for "5" seconds
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
    And Press "BackSpace" key for "1" times
    And Send Keys "Fractions" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "7" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Click on "KebabMenu"
    And Wait for "2" seconds
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC27_MutualFundOrder_In Buy New Funds section, Select one of the Fund from dropdown and click submit then verify the selected Fund type related Fund symbol,Fund Name gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "4" seconds
    When Click on "TradingMenu"
    And Wait for "3" seconds
    Then Click on "MutualFundsTab"
    And Wait for "5" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Send Keys "ABERDEEN FUNDS" using Actions into "FundFamilyTextBox"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Save data to "FundFamily" from "FundFamilyTable" with "XPATH" locator
    Then Assert "FundFamily" contains "ABERDEEN"
    And Close browser

    #Order status
  Scenario: TC01_OrderStatus_Click on the ascending sort icon in the Open Order Section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "2" seconds
    And Click on "OSSymbolSortButton"
    And Wait for "5" seconds
    Then verify sorted records in "ascending order" for the "OrderStatusTable" column "SYMBOL"
    And Close browser

  Scenario: TC02_OrderStatus_Click on the descending sort icon in the Open Order Section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "5" seconds
    And Click on "OSSymbolSortButton"
    And Click on "OSSymbolSortButton"
    And Wait for "5" seconds
    Then verify sorted records in "descending order" for the "OrderStatusTable" column "SYMBOL"
    And Close browser

  Scenario: TC03_OrderStatus_Click on the ascending sort icon in the Completed Order Section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "10" seconds
    And Click on "OSSymbolSortButton"
    And Wait for "5" seconds
    Then verify sorted records in "ascending order" for the "OrderStatusTable" column "SYMBOL"
    And Close browser

  Scenario: TC04_OrderStatus_Click on the descending sort icon in the Completed Order Section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "5" seconds
    And Click on "OSSymbolSortButton"
    And Click on "OSSymbolSortButton"
    And Wait for "5" seconds
    Then verify sorted records in "descending order" for the "OrderStatusTable" column "SYMBOL"
    And Close browser

  Scenario: TC05_OrderStatus_In Completed Order section select any Date Range dropdown and verify respective date range order details gets displayed in Completed order screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "2" seconds
    Then Click on "DateRange"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    Then Extract the data in columns "Order Id" from table "AllOrderIDsTable" and store as "ThisWeekOrders"
    And Wait for "5" seconds
    Then Click on "DateRange"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    Then Extract the data in columns "Order Id" from table "AllOrderIDsTable" and store as "LastWeekOrders"
    And Wait for "2" seconds
    Then Assert "ThisWeekOrders" is not equal to "LastWeekOrders"
    And Close browser

  Scenario: TC06_OrderStatus_Click Order status OrderID hyperlink and check placed equity and options order details gets displayed correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "2" seconds
    And Click on "OrderID"
    And Check "OrderDetailsPopup" is displayed
    And Wait for "2" seconds
    Then Assert "Order ID" is present at "OrderIdPopup"
    And Close browser

  Scenario: TC07_OrderStatus_In Open Order section verify pagination section by clicking next,previous,First, Last button verify it working as expected.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "5" seconds
    Then Click on "DateRange"
    And Press "ArrowDown" key for "4" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Save data to "1stPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    And Click on "NextPageButton"
    And Wait for "2" seconds
    And Save data to "2ndPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" is not equal to "2ndPage1stRow"
    And Wait for "2" seconds
    And Click on "PreviousPageButton"
    Then Assert "2ndPage1stRow" is not equal to "1stPage1stRow"
    And Wait for "2" seconds
    And Click on "LastPageButton"
    And Wait for "2" seconds
    And Save data to "LastPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    And Click on "FirtPageButton"
    And Wait for "2" seconds
    And Save data to "1stPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    Then Assert "LastPage1stRow" is not equal to "1stPage1stRow"
    And Close browser

  Scenario: TC08_OrderStatus_In Completed Orders section verify Pagination section by clicking next,previous,First, Last button verify it working as expected.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "2" seconds
    Then Click on "DateRange"
    And Press "ArrowDown" key for "4" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Save data to "1stPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    And Click on "NextPageButton"
    And Wait for "2" seconds
    And Save data to "2ndPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" is not equal to "2ndPage1stRow"
    And Wait for "2" seconds
    And Click on "PreviousPageButton"
    Then Assert "2ndPage1stRow" is not equal to "1stPage1stRow"
    And Wait for "2" seconds
    And Click on "LastPageButton"
    And Wait for "2" seconds
    And Save data to "LastPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    And Click on "FirtPageButton"
    And Wait for "2" seconds
    And Save data to "1stPage1stRow" from "OpenOrder1stRow" with "XPATH" locator
    Then Assert "LastPage1stRow" is not equal to "1stPage1stRow"
    And Close browser

  Scenario: TC09_OrderStatus_Place an Valid Equity and Options Order in Market hour and verify the placed orders gets displayed in Completed Order screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    And Wait for "5" seconds
    Then Click on "TimeInForceDropdown"
    And Wait for "2" seconds
    And Hover and click on "DayDropdown"
    And Wait for "2" seconds
    And Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "3" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Wait for "3" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "15" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    Then Check "EquityOrderRejectedStatus" is displayed
    Then Close browser

  Scenario: TC10_OrderStatus_Place an Equity order and verifying placed ordered all details are displaying correctly in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    And Wait for "5" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC11_OrderStatus_Place an options order and verifying placed ordered all details are displaying correctly in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    And Wait for "2" seconds
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC12_OrderStatus_In Completed order section,apply Valid Filters then verify respective filters applied and applied filters results gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "CompletedOrdersSelectorButton"
    And Wait for "2" seconds
    And Click on "FilterButton"
    And Wait for "5" seconds
    And Click on "BuyRadioButton"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    Then Extract the data in columns "Buy/Sell" from table "OrderStatusTable" and store as "OrderStatus"
    And Wait for "2" seconds
    Then Assert "OrderStatus" contains "Buy"
    And Close browser

    #MF Order Status
  Scenario: TC01_MutualFundOrderStatus_Place one valid Mutual Funds order and check whether the Mutual Funds order is visible or not in MF Order Status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "3" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "2" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Buy" using Actions into "ActionDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "3" seconds
    Then Click on "PaymentTypeDropdown"
    And Send Keys "Cash" using Actions into "PaymentTypeDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    When Click on "AmountButton"
    Then Send Keys "2" using Actions into "AmountButton"
    And Wait for "2" seconds
    Then Click on "CurrencyDropdown"
    And Send Keys "Dollar" using Actions into "CurrencyDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "FractionsDropdown"
    And Click on "MFFractionsDropdownClearIcon"
    And Send Keys "Round up" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    When user click the "DividendsReinvestRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    When Click on "EditOrdersButton"
    And Wait for "5" seconds
    When Click on "AmountButton"
    Then Press BACKSPACE key for "5" times
    Then Send Keys "6" using Actions into "AmountButton"
    And Wait for "2" seconds
    When user click the "DividendsCashRadioButton" field through js
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "6" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC02_MutualFundOrderStatus_Click on the ascending sort icon in the MF order status Section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "5" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    And Click on "MFSymbolSortIcon"
    And Wait for "5" seconds
    Then verify sorted records in "ascending order" for the "MFOrderStatusTable" column "Order Id"
    And Close browser

  Scenario: TC03_MutualFundOrderStatus_Click on the descending sort icon in the MF order status Section and ensure that all fields are sorted in descending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    And Click on "MFSymbolSortIcon"
    And Wait for "2" seconds
    And Click on "MFSymbolSortIcon"
    And Wait for "5" seconds
    Then verify sorted records in "descending order" for the "MFOrderStatusTable" column "Order Id"
    And Close browser

  Scenario: TC04_MutualFundOrderStatus_Click on Filter hamburger icon and choose yesterday and submit the report and verify only yesterday placed orders only showing
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "MFOrderStatusButton"
    And Wait for "5" seconds
    When Click on "FilterButton"
    And Wait for "10" seconds
    And Click on "YesterdayCheckbox"
    And Wait for "2" seconds
    Then Click on "SubmitReportButton"
    And Wait for "5" seconds
    And Check "Nodatafound" is displayed
    And Close browser

  Scenario: TC05_MutualFundOrderStatus_Click on Filter hamburger icon and choose today and submit the report and verify only today placed orders only showing
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "MFOrderStatusButton"
    And Wait for "5" seconds
    And Save data to "BeforeFilter" from "MFOrderFirstRow" with "XPATH" locator
    When Click on "FilterButton"
    And Wait for "10" seconds
    Then Click on "SubmitReportButton"
    And Wait for "5" seconds
    And Save data to "AfterFilter" from "MFOrderFirstRow" with "XPATH" locator
    And Assert "BeforeFilter" is equal to "AfterFilter"
    And Close browser

  Scenario: TC06_MutualFundOrderStatus_Click on Filter hamburger icon and select any specific date and submit the report and verify only the orders placed on that specific date is showing
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "MFOrderStatusButton"
    And Wait for "8" seconds
    And Save data to "BeforeFilter" from "MFOrderStatusTable" with "XPATH" locator
    When Click on "FilterButton"
    And Wait for "10" seconds
    And Click on "DateRangeDropdown"
    And Wait for "2" seconds
    And Click on "DateFirst"
    Then Click on "SubmitReportButton"
    And Wait for "10" seconds
    And Save data to "AfterFilter" from "MFOrderStatusTable" with "XPATH" locator
    And Assert "BeforeFilter" is not equal to "AfterFilter"
    And Close browser

    #AllEquitySearchOption
  Scenario: TC01_AllEquitySearch_Verify search by equity by giving valid information
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AADI" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    Then Check "PerfomanceGraph" is displayed
    And Save data to "Symbol" from "PerfomanceGraph" with "XPATH" locator
    Then Assert "Symbol" contains "AADI"
    And Close browser

  Scenario: TC02_AllEquitySearch_Verify search by equity by giving invalid information
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "JHGHGUI" into "EquitySearchBox"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Check "StatusErrorMsg" is displayed
    And Close browser

  Scenario: TC03_AllEquitySearch_Verify all equity section should display symbol and its current market price
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Wait for "2" seconds
    Then Check "EquitySymbolWithPrice" is displayed
    And Close browser

#EquityWatchlist
  Scenario: TC01_EquityWatchlist_Verify Watchlist section should display symbol and its current market place
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Click on "EquityWatchlist2"
    And Wait for "5" seconds
    Then Check "WatchlistSymbolWithPrice" is displayed
    And Close browser

  Scenario: TC02_EquityWatchlist_Verify if user selects a symbol from equity it should display the selected performance graph properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Click on "EquityWatchlist2"
    And Wait for "5" seconds
    And Click on "WatchlistSelectOption"
    And Click on "TestWatchlist"
    And Wait for "5" seconds
    And Click on "Watchlist1stOption"
    And Wait for "5" seconds
    Then Check "PerfomanceGraph" is displayed
    And Close browser

  Scenario: TC03_EquityWatchlists_Create watchlist in Overview section and verify Created watchlist gets displayed in Watchlist section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "3Dot"
    And Press "PageDown" key for "3" times
    And Wait for "2" seconds
    Then Click on "CreateWatchlist"
    And Enter "Automation" into "WatchlistTextBox"
    And Wait for "5" seconds
    Then Click on "CreateWatchlistsButton"
    And Check "AutomationWatchlist" is displayed
    And Click on "TradingMenu"
    And Click on "EquityWatchlist2"
    And Wait for "5" seconds
    And Click on "WatchlistSelectOption"
    And Click on "EquityAutomationWatchlist"
    And Check "EquityAutomationWatchlistCheck" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "3Dot"
    And Press "PageDown" key for "3" times
    And Click on "ManageAllWatchlist"
    And Wait for "2" seconds
    And Click on "AutomationWatchlistRemoveIcon"
    And Wait for "2" seconds
    And Click on "WatchlistDeleteButton"
    And Wait for "2" seconds
    Then Click on "DeleteWatchlist"
    And Wait for "5" seconds
    And Close browser

  Scenario: TC04_EquityWatchlists_Add Symbol from Watchlist and verify added symbol gets displayed in Watchlist
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "WatchlistSelectOption"
    And Click on "WELCOMEWatchlist"
    And Wait for "5" seconds
    And Delete if symbol "MSFT" exists
    Then Click on "AddSymbol"
    And Enter "MSFT" into "WatchlistSearchBox"
    And Wait for "5" seconds
    Then Click on "Search1stOption"
    And Wait for "10" seconds
    And Print all element texts from "WatchlistsTable"
    Then save all element texts from "WatchlistsTable" as "Watchlist"
    And Wait for "2" seconds
    Then Assert "Watchlist" contains "MSFT"
    And Click on "TradingMenu"
    And Click on "EquityWatchlist2"
    And Wait for "5" seconds
    And Click on "WatchlistSelectOption"
    And Wait for "2" seconds
    And Click on "WELCOMEWatchlist"
    And Wait for "5" seconds
    And Print all element texts from "EquityWatchlistSymbolDropdown"
    Then save all element texts from "EquityWatchlistSymbolDropdown" as "Watchlist"
    And Wait for "2" seconds
    Then Assert "Watchlist" contains "MSFT"
    And Close browser

#Performance graph
  Scenario: TC01_Performance Graph_Verify if user selects a symbol from all equity or watchlist it should display the selected performance graph properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    Then Check "PerfomanceGraph" is displayed
    And Save data to "Symbol" from "PerfomanceGraph" with "XPATH" locator
    Then Assert "Symbol" contains "AADI"
    And Close browser

  Scenario: TC02_Performance Graph_Verify all the months should be displayed properly in performance graph
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "6MonthTimeframe"
    Then Check "MonthCalenderCheck" is displayed
    And Close browser

  Scenario: TC03_Performance Graph_In Performance Graph select multiple symbols from search box and verify the selected symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "AddsymbolsInGraph"
    And Enter "MSFT" into "SearchSymbolInGraph"
    And Wait for "5" seconds
    And Click on "MSFTsymbol"
    And Wait for "5" seconds
    Then Check "MultipleSymbolCheckInGraph" is displayed
    And Close browser

  Scenario: TC04_Performance Graph_In Performance Graph verify by selecting different frequency ranges and check selected frequency, symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "FrequencyDropdown"
    And Wait for "2" seconds
    And Click on "WeeklyFrequency"
    And Wait for "2" seconds
    Then Check "WeeklyFrequency" is displayed
    And Close browser

  Scenario: TC05_Performance Graph_In Performance Graph verify by selecting different timeframe ranges and check selected timeframe, symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "1YearTimeframe"
    Then Check "MonthCalenderCheck" is displayed
    And Close browser

  Scenario: TC06_Performance Graph_In Performance Graph verify by selecting different events type and check selected events, symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Wait for "5" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "NVDA" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    And Click on "EventsDropdown"
    And Wait for "4" seconds
    Then Hover and click on "Earnings"
    And Wait for "2" seconds
    And Click on "EventsDropdown"
    Then Hover and click on "Dividends"
#    Then Click on "Dividends"
    And Wait for "2" seconds
    And Click on "EventsDropdown"
    Then Click on "Splits"
    And Wait for "5" seconds
    Then Check "EarningsDetails" is displayed
    Then Check "DividendsDetails" is displayed
    And Close browser

  Scenario: TC07_Performance Graph_In Performance Graph verify by selecting different price type and check selected price type, symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "PriceDropdown"
    And Wait for "2" seconds
    Then Click on "%Change"
    And Wait for "2" seconds
    Then Check "PriceChangeCheck" is displayed
    And Close browser

  Scenario: TC08_Performance Graph_In Performance Graph verify by selecting different chart type and check selected chart, symbol values,records gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "LineChart"
    And Click on "CandlestickChart"
    Then Check "CandlestickChart" is displayed
    And Close browser

  Scenario: TC09_Performance Graph_In Performance Graph enter a Invalid symbol and verify 0 results found message should gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
    And Wait for "2" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "jhsdghgd" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    Then Check "StatusErrorMsg" is displayed
    And Close browser

  Scenario: TC10_Performance Graph_In Performance Graph enable volume toggle switch and verify selected symbol volume details gets displayed properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Click on "VolumeToggle"
    And Wait for "2" seconds
    And Click on "VolumeToggle"
    Then Check "VolumeToggleCheck" is displayed
    And Close browser

  Scenario: TC11_Performance Graph_In Performance Graph Disable volume toggle switch and verify selected symbol volume details not gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "TradingMenu"
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
    And Save data to "BeforeToggle" from "PerformanceGraphChart" with "XPATH" locator
    And Click on "VolumeToggle"
    And Wait for "2" seconds
    And Save data to "AfterToggle" from "PerformanceGraphChart" with "XPATH" locator
    Then Assert "BeforeToggle" is not equal to "AfterToggle"
    And Close browser

#Hubspot
  Scenario: TC01_Hubspot_Verify by Placing buy Equity Order with Limit type and verify configured email receives for specific placed Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitButton"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "2" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "2" seconds
    Then Press UP ARROW key
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "8" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "8" seconds
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
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    Then Assert "EmailText" contains "New Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    And Close browser

  Scenario: TC02_Hubspot_Verify by Placing sell Equity Order with Limit type and verify configured email receives for specific placed Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "5" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "2" into "LimitQuantityDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "GTCDropdown"
    And Wait for "5" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    And Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    And Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "3" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "8" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    Then Assert "EmailText" contains "New Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - GTC"
    And Close browser

  Scenario: TC03_Hubspot_Verify by Placing buy Equity Order with Limit type and Duration as day once order expired then verify configured email receives for specific expired Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "EquityOrderTab"
    And Wait for "10" seconds
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
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitButton"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitButton"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "DayDropdown"
    And Wait for "2" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
    Then Hover and click on "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityButtonForLimitOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "2" seconds
    Then Press UP ARROW key
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Wait for "2" seconds
    Then Press UP ARROW key
    And Wait for "2" seconds
    Then Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    Then Assert "EmailText" contains "New Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Close browser

  Scenario: TC04_Hubspot_Verify by Placing sell Equity Order with Limit type and Duration as day once order expired then verify configured email receives for specific expired Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    When Click on "EquityOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "AAPL" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "5" seconds
    And Click on "SellButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    And Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    And Enter "2" into "LimitQuantityDropdown"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And Hover and click on "DayDropdown"
    And Wait for "5" seconds
    Then Click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "5" seconds
    Then Click on "SellQuantityDropDown"
    And Wait for "2" seconds
    And Send Keys "2" using Actions into "SellQuantityDropDown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "5" seconds
    And Wait for element visibility "CreatedOrderText"
    And Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Press "ArrowUp" key for "1" times
    And Wait for "2" seconds
    And Click on "OrderStatusTab"
    And Wait for "2" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "3" seconds
    And Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    Then Assert "EmailText" contains "New Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Wait for "3" seconds
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Close browser

  Scenario: TC05_Hubspot_Verify by Placing buy Equity Order with Market type and verify configured email receives for specific placed Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
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
    And Wait for "5" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
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
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Market"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - AACG Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    Then Assert "EmailText" contains "New Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "7" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - AACG Action - Buy Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    And Close browser

  Scenario: TC06_Hubspot_Verify by Placing sell Equity Order with Market type and verify configured email receives for specific placed Equity order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "TempBuyAcc"
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
    And Click on "SellButton"
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
    And Wait for "5" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
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
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Market"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    Then Clear data from "QuantityDropdown"
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "13" and end index "27" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details: Symbol - SIEB Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    Then Assert "EmailText" contains "New Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "10" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "HubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details: Symbol - SIEB Action - Sell Quantity - 1"
    Then Assert "EmailText" contains "Order Type - Market Duration - DAY"
    And Close browser

  Scenario: TC07_Hubspot_Verify by Placing buy Options Order with Limit type and verify configured email receives for specific placed Options order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
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
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Details:"
    Then Assert "EmailText" contains "Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Option Type - BCO Order Type - Limit Duration - DAY"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
#    Then Click on "QuantityInOptionOrder"
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details:"
    Then Assert "EmailText" contains "Action - Buy Quantity - 2"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY New Order Details:"
    Then Assert "EmailText" contains "Action - Buy Quantity - 21"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "8" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details:"
    Then Assert "EmailText" contains "Action - Buy Quantity - 21"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Close browser

  Scenario: TC08_Hubspot_Verify by Placing sell Options Order with Limit type and verify configured email receives for specific placed Options order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "10" seconds
    And Click on "AllEquityButton"
    And Wait for "2" seconds
    And Hover and click on "SearchByEquityBar"
    And Wait for "2" seconds
    Then Enter "KO" into "SearchByEquityBar"
    And Press "Enter" key for "1" times
    And Wait for "10" seconds
    And Click on "AllEquitySymbol1stOption"
    And Wait for "10" seconds
    When Select "Sell Covered Call" from dropdown "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
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
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "30" and store it in "orderID"
    And Wait for "10" seconds
    Then Click on "OrderStatusTab"
    And Wait for "5" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Details:"
    Then Assert "EmailText" contains "Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Option Type - SCCO Order Type - Limit Duration - DAY"
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EditEquity"
    Then Check "OptionsOrderTab" is displayed
    And Wait for "5" seconds
    Then Enter "1" into "QuantityInOptionOrder"
    And Wait for "2" seconds
    And Click on "PreviewOrderButtonInOptionsOrder"
    And Wait for "10" seconds
    And Click on "ConfirmButton"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "16" and end index "29" and store it in "orderID"
    And Wait for "3" seconds
    Then Click on "OrderStatusTab"
    And Wait for "3" seconds
    And Click on "OpenOrdersSelectorButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "OrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotModifiedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Previous Order Details:"
    Then Assert "EmailText" contains "Action - Sell Quantity - 2"
    Then Assert "EmailText" contains "Option Type - TODO Order Type - Limit Duration - DAY New Order Details:"
    Then Assert "EmailText" contains "Action - Sell Quantity - 21"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Click on "Kebabmenu"
    And Click on "OptionsCancelButton"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Wait for "10" seconds
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "OptionsHubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order Details:"
    Then Assert "EmailText" contains "Action - Sell Quantity - 21"
    Then Assert "EmailText" contains "Order Type - Limit Duration - DAY"
    And Close browser

  Scenario: TC09_Hubspot_Verify by Placing Buy an Mutual Funds Order and verify configured email receives for specific placed Mutual Funds Order details gets display correctly as per Template


    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "4" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "ASIAX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
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
    And Wait for "2" seconds
    Then Click on "FractionsDropdown"
    And Send Keys "Round down" using Actions into "FractionsDropdown"
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "2" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "MutualFundHubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - ASIAX Action - Buy Quantity - 0"
    Then Assert "EmailText" contains "Order Type - Market"
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "MutualFundHubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order details: Symbol - ASIAX Action - Buy Quantity - 0"
    Then Assert "EmailText" contains "Order Type - Market"
    And Close browser

  Scenario: TC10_Hubspot_Verify by Placing Sell an Mutual Funds Order and verify configured email receives for specific placed Mutual Funds Order details gets display correctly as per Template
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "4" seconds
    Then Click on "MutualFundsTab"
    And Wait for "3" seconds
    Then Click on "BuyNewFundButton"
    And Wait for "3" seconds
    Then Click on "EnterFundSearchBar"
    Then Send Keys "VWIUX" using Actions into "EnterFundSearchBar"
    And Wait for "2" seconds
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    Then Click on "BuyThisFundButton"
    And Wait for "2" seconds
    Then Click on "ActionDropdown"
    Then Clear text from "ActionDropdown"
    And Send Keys "Sell" using Actions into "ActionDropdown"
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
    Then Click on "SubmitButton"
    And Wait for "8" seconds
    And Click on "PlaceOrderButtonInMF"
    And Wait for "10" seconds
    And Wait for element visibility "CreatedOrderText"
    Then Get text from element "CreatedOrderText"
    Then Extract substring from element text content "CreatedOrderText" with start index "21" and end index "34" and store it in "orderID"
    And Wait for "5" seconds
    Then Click on "MFOrderStatusButton"
    And Wait for "10" seconds
    Then Assert "[dynamic_value]" is present at "MFOrderStatusFirstValue" with value "orderID" on siebert
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "MutualFundHubSpotPlacedEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order details: Symbol - VWIUX Action - Sell Quantity - 0"
    Then Assert "EmailText" contains "Order Type - Market"
    And Click on "KebabMenu"
    And Click on "MFCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Get mail text using "Email_UserName", "Email_Password", "Email_subject", "Email_SenderName", "MutualFundHubSpotCancelledEmail" and store email text into "EmailText"
    Then Assert "EmailText" contains "Order Status: Canceled Order details: Symbol - VWIUX Action - Sell Quantity - 0"
    Then Assert "EmailText" contains "Order Type - Market"
    And Close browser
