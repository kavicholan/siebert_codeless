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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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

  Scenario: TC07_EquityOrder_Place an Equity Buy Order with GTC Time in Force and confirm its successful execution by verifying placed order ID in order status Screen
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    And  Click on "GTCDropdown"
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

  Scenario: TC08_EquityOrder_Place an Equity Sell Order with GTC Time in Force and confirm its successful execution by verifying placed order ID in order status Screen
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
    And Hover and click on "CashDropdownButton"
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

  Scenario: TC09_EquityOrder_Place an Equity Buy Order with DNR Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    And  Click on "GTCDropdown"
    And Wait for "5" seconds
    Then Hover and click on "QualifierDropdown"
    And Wait for "2" seconds
    And Hover and click on "DNRDropdown"
    And Wait for "2" seconds
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

  Scenario: TC10_EquityOrder_Place an Equity Sell Order with DNR Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
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
    And Hover and click on "CashDropdownButton"
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

  Scenario: TC11_EquityOrder_Place an Equity Buy Order for Quantity less than 100 with AON Qualifier and verify error message business rules violation gets displayed
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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

  Scenario: TC12_EquityOrder_Place an Equity Sell Order for Quantity less than 100 with AON Qualifier and verify error message business rules violation gets displayed
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

  Scenario: TC13_EquityOrder_Place an Equity Buy Order for Quantity greater than 100 with AON Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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

  Scenario: TC14_EquityOrder_Place an Equity Sell Order for Quantity greater than 100 with AON Qualifier and confirm its successful execution by verifying placed order ID in order status Screen
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

  Scenario: TC15_EquityOrder_In Buy Equity order, the displayed available balance should match the available balance shown in the Portfolio Screen's Account Balances section Account Summary Balance field for the specific account.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
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
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    Then Check "BalanceSummaryAccountBalance" is displayed
    And Save data to "BSAccountBalance" from "BalanceSummaryAccountBalance" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "EquityAccountBalance" contains "BSAccountBalance"
    And Close browser

  Scenario: TC16_EquityOrder_Place an Equity Buy Order with maximum quantity that exceeds account balance and verify validation error message throws insufficient funds
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1000000" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    Then Check "AlertMessageForInsufficientAmount" is displayed
    And Close browser

  Scenario: TC17_EquityOrder_Place an Equity Buy Order with leaving mandatory fields as empty and verify validation error message throws Required field
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
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    Then Check "RequiredField" is displayed
    And Close browser

  Scenario: TC18_EquityOrder_Place an Equity Sell Order with leaving mandatory fields as empty and verify validation error message throws Required field
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
    And Click on "SellTab"
    And Wait for "2" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    Then Check "RequiredField" is displayed
    And Close browser


  Scenario: TC19_EquityOrder_Place a buy equity order as Market type, edit the same order from order status screen and  verify the successfully placed order id gets displayed
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    And Click on "EditButton1"
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Clear data from "QuantityDropdown"
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC20_EquityOrder_Place a buy equity order as Market type, edit the same order from order status screen and  verify the successfully placed order id gets displayed
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
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
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Hover and click on "CashDropdownButton"
    And Wait for "2" seconds
    Then Click on "TimeInForceDropdown"
    And  Click on "DayDropdown"
    And Wait for "5" seconds
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
    And Click on "EditButton1"
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Clear data from "QuantityDropdown"
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC21_EquityOrder_Place a Sell equity order as Market type, edit the same order from order status screen and  verify the successfully placed order id gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC22_EquityOrder_Place a Sell equity order as Limit type, edit the same order from order status screen and  verify the successfully placed order id gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC23_EquityOrder_Verify that editing the order updates the new order ID to "Order requested" status and cancels the existing order ID.
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    And Click on "EditEquity"
    Then Check "EquityOrderTab" is displayed
    And Wait for "5" seconds
    Then Click on "QuantityDropdown"
    And Wait for "5" seconds
    And Clear data from "QuantityDropdown"
    And Send Keys "2" using Actions into "QuantityDropdown"
    And Wait for "2" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
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
    And Save data to "1stPage1stRow" from "OpenOrderstatus1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" contains "Order Requested "
    And Click on "Kebabmenu"
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC24_EquityOrder_Place a buy equity order as a Market order, cancel the order from the Order Status screen, and verify that the order was successfully cancelled.
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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

  Scenario: TC25_EquityOrder_Place a buy equity order as a Limit order, cancel the order from the Order Status screen, and verify that the order was successfully cancelled.
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
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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

  Scenario: TC26_EquityOrder_Place a sell equity order as a Market order, cancel the order from the Order Status screen, and verify that the order was successfully cancelled.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC27_EquityOrder_Place a sell equity order as a Limit order, cancel the order from the Order Status screen, and verify that the order was successfully cancelled.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC28_EquityOrder_In Equity Sell select an symbol which not present in Holdings screen and verify proper error message gets displayed
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
    And Click on "SellTab"
    And Wait for "2" seconds
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
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
    Then Click on "QuantityDropdown"
    And Wait for "2" seconds
    And Send Keys "1" using Actions into "QuantityDropdown"
    And Wait for "5" seconds
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Hover and click on "ConfirmButton"
    And Wait for "10" seconds
    Then Check "Insufficientshareerror" is displayed
    And Wait for "2" seconds
    And Close browser

  Scenario: TC29_EquityOrder_Place an Equity Buy Order by selecting symbol from Watchlist Market Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
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
    And Click on "WatchListButton"
    And Wait for "10" seconds
    And Click on "Watchlist1stOption"
    And Wait for "10" seconds
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

  Scenario: TC30_EquityOrder_Place an Equity Buy Order by selecting symbol from Watchlist with Limit Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
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
    And Click on "WatchListButton"
    And Wait for "10" seconds
    And Click on "Watchlist1stOption"
    And Wait for "10" seconds
    Then Check "Realtimequote" is displayed
    And Wait for "2" seconds
    Then Check "Performancechart" is displayed
    And Wait for "2" seconds
    And Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitInputBox"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitInputBox"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Click on "LimitTimeInForceDropdown"
    And Click on "GTCDropdown"
    And Wait for "2" seconds
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
    And Press "ArrowUp" key for "3" times
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

  Scenario: TC31_EquityOrder_Place an Equity Sell Order by selecting symbol from Watchlist Market Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC32_EquityOrder_Place an Equity Sell Order by selecting symbol from Watchlist with Limit Ordertype and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

  Scenario: TC33_EquityOrder_In preview Order section verify all headers,fields and its values are displaying correctly
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
    Then Click on "EquityOrderTab"
    And Wait for "2" seconds
    And Click on "BuyTab"
    And Wait for "2" seconds
    Then Enter "TSLA" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Click on "BuyButton"
    And Wait for "2" seconds
    Then Click on "OrderDropdown"
    And Wait for "2" seconds
    When Hover and click on "LimitOrderDropdownButton"
    And Wait for "2" seconds
    Then Click on "LimitInputBox"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitInputBox"
    And Wait for "2" seconds
    And Click on "LimitTimeInForceDropdown"
    And Wait for "2" seconds
    Then Send Keys "1" using Actions into "LimitInputBox"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdown"
    And Wait for "2" seconds
    And Save data to "AccountTypeCheck1" from "EquityAccountType" with "XPATH" locator
    And Wait for "2" seconds
    Then Click on "LimitTimeInForceDropdown"
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
    And Hover and click on "PreviewOrderButtonInEquityOrder"
    And Wait for "10" seconds
    And Save data to "QuantityCheck2" from "PreviewQuantity" with "XPATH" locator
    And Save data to "AccountTypeCheck2" from "PreviewAccountType" with "XPATH" locator
    And Save data to "TFCheck2" from "PreviewTF" with "XPATH" locator
    And Save data to "QualifierCheck2" from "PreviewQualifier" with "XPATH" locator
    And Save data to "PriceCheck2" from "PreviewPrice" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "AccountTypeCheck1" contains "AccountTypeCheck2"
    Then Assert "TFCheck1" contains "TFCheck2"
    Then Assert "QualifierCheck1" contains "QualifierCheck2"
    And Wait for "2" seconds
    And Close browser

  Scenario: TC34_EquityOrder_Place an Equity Buy Order with preferred symbol and confirm its successful execution by verifying placed order ID in order status Screen
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
    Then Enter "BCV-A" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    Then Check "PSRealtimequote" is displayed
    And Wait for "2" seconds
    Then Check "PSPerformancechart" is displayed
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

  Scenario: TC35_EquityOrder_Place an Equity Sell Order with preferred symbol and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"

 # Options Order
  Scenario: TC01_OptionsOrder_Place an Options order for Buy Call Action types and confirm its successful execution by verifying placed order ID in order status Screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "25" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "TempBuyAcc"
    And Wait for "2" seconds
    When Click on "TradingMenu"
    And Wait for "2" seconds
    Then Click on "OptionsOrderTab"
    And Wait for "2" seconds
    Then Enter "AADI" into "TradeSymbol"
    And Press "Enter" key for "1" times
    And Wait for "2" seconds
    Then Click on "ActionDropdownInOptionOrder"
    And Wait for "2" seconds
    And Hover and click on "BuyCall"
    And Wait for "2" seconds
    Then Click on "AccountTypeDropdownInOptionOrder"
    And Hover and click on "CashDropdownButton"
    And Wait for "5" seconds
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