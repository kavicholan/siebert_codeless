@InvestorPortal-CostBasis @UIAutomation
Feature: CostBasis

#UGL
  Scenario: TC01_UGL_Fetch data from BroadRidge API and compare with cost basis - UGL in UI
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "UGL.json"
    And Print API Request headers
    And Add Endpoint "postUGLAPIurl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.topTenPositionGainMap.*.['symbol','securityDescription','purchaseDate','currentPrice','currentValue','percentToTotal','gainLossPercentage','longShortIndex']" as "UGL" with same decimal
    #Cash&Equivalent
    And Save "responseObject.taxLotTotalsMap.110.netAmount" attribute value from API response to "TotalC&CEquivalentCostMoneyAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.110.currentValue" attribute value from API response to "TotalC&CEquivalentCurrentMoneyAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.110.percentToTotal" attribute value from API response to "C&CEquivalentPercentOfTotalAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.110.gainLossAmountMoney" attribute value from API response to "C&CEquivalentGainLossAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.110.gainLossPercentage" attribute value from API response to "C&CEquivalentGainLossPerAPI" on siebert
    #CommonStock
    And Save "responseObject.taxLotTotalsMap.130.netAmountMoney" attribute value from API response to "TotalCommonStockCostAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.130.currentValueMoney" attribute value from API response to "TotalCommonStockCurrentValueMoneyAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.130.percentToTotal" attribute value from API response to "TotalCommonStockPercentOfTotalAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.130.gainLossAmount" attribute value from API response to "TotalCommonStockGainLossAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.130.gainLossPercentage" attribute value from API response to "TotalCommonStockGainLossPerAPI" on siebert   
    #MutualFunds
#    And Save "responseObject.taxLotTotalsMap.160.netAmountMoney" attribute value from API response to "TotalMFCostAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.160.currentValueMoney" attribute value from API response to "TotalMFCurrentValueMoneyAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.160.percentToTotal" attribute value from API response to "TotalMFPercentOfTotalAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.160.gainLossAmount" attribute value from API response to "TotalMFGainLossAmtAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.160.gainLossPercentage" attribute value from API response to "TotalMFGainLossPerAPI" on siebert
    #Options
#    And Save "responseObject.taxLotTotalsMap.165.netAmountMoney" attribute value from API response to "TotalOptionsCostAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.165.currentValueMoney" attribute value from API response to "TotalOptionsCurrentValueMoneyAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.165.percentToTotal" attribute value from API response to "TotalOptionsPercentOfTotalAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.165.gainLossAmount" attribute value from API response to "TotalOptionsGainLossAmtAPI" on siebert
#    And Save "responseObject.taxLotTotalsMap.165.gainLossPercentage" attribute value from API response to "TotalOptionsGainLossPerAPI" on siebert
    #Total Unrealized Short Term Gain/Loss
    And Save "responseObject.taxLotTotalsMap.ST.purchasePrice" attribute value from API response to "TotalSTAcquirePriceAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.purchaseAmount" attribute value from API response to "TotalSTPurchaseAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.gainLossAmount" attribute value from API response to "TotalSTGainLossAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.gainLossPercentage" attribute value from API response to "TotalSTGainLossPerAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.estimatedAnnualIncomeMoney" attribute value from API response to "TotalSTEstimatedAnnIncomeAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.estimatedAnnualYield" attribute value from API response to "TotalSTEstimatedAnnualYieldAPI" on siebert  
    #Total Unrealized Long Term Gain/Loss
    And Save "responseObject.taxLotTotalsMap.LT.purchasePrice" attribute value from API response to "TotalLTAcquirePriceAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.LT.purchaseAmount" attribute value from API response to "TotalLTPurchaseAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.LT.gainLossAmount" attribute value from API response to "TotalLTGainLossAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.LT.gainLossPercentage" attribute value from API response to "TotalLTGainLossPerAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.LT.estimatedAnnualIncomeMoney" attribute value from API response to "TotalLTEstimatedAnnIncomeAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.LT.estimatedAnnualYield" attribute value from API response to "TotalLTEstimatedAnnualYieldAPI" on siebert  
    #Total For Account
    And Save "responseObject.taxLotTotalsMap.grandTotal.purchasePrice" attribute value from API response to "TotalAccountAcquirePriceAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.netAmountMoney" attribute value from API response to "TotalAccountCostAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.purchaseAmount" attribute value from API response to "TotalAccountPurchaseAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.currentValueMoney" attribute value from API response to "TotalAccountCurrentValueMoneyAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.gainLossAmount" attribute value from API response to "TotalAccountGainLossAmtAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.gainLossPercentage" attribute value from API response to "TotalAccountGainLossPerAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.estimatedAnnualIncomeMoney" attribute value from API response to "TotalAccountEstimatedAnnIncomeAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.estimatedAnnualYield" attribute value from API response to "TotalAccountEstimatedAnnualYieldAPI" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Extract the data in columns "Symbol,Description,Purchase Date,Current Price,Current Value,Percent Of Total,Gain/Loss Percentage,ST/LT" from table "UGLTable" and store as "UGLWebTable"
    #Cash&Equivalent
    Then Assert "[dynamic_value]" is present at "Cash&EquivalentCostValue" with value "TotalC&CEquivalentCostMoneyAPI" on siebert
    Then Assert "[dynamic_value]" is present at "Cash&EquivalentCurrentValue" with value "TotalC&CEquivalentCurrentMoneyAPI" on siebert
    Then Assert "[dynamic_value]" is present at "Cash$EquivalentPerOfTotalValue" with value "C&CEquivalentPercentOfTotalAPI" on siebert
    Then Assert "[dynamic_value]" is present at "Cash&EquivalentGain/LossAmt" with value "C&CEquivalentGainLossAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "Cash&EquivalentGain/LossPer" with value "C&CEquivalentGainLossPerAPI" on siebert
    #CommonStock
    Then Assert "[dynamic_value]" is present at "CSCostValue" with value "TotalCommonStockCostAPI" on siebert
    Then Assert "[dynamic_value]" is present at "CSCurrentValue" with value "TotalCommonStockCurrentValueMoneyAPI" on siebert
    Then Assert "[dynamic_value]" is present at "CSPerOfTotalValue" with value "TotalCommonStockPercentOfTotalAPI" on siebert
    Then Assert "[dynamic_value]" is present at "CSGain/LossAmt" with value "TotalCommonStockGainLossAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "CSGain/LossPer" with value "TotalCommonStockGainLossPerAPI" on siebert
    #MutualFunds
#    Then Assert "[dynamic_value]" is present at "MFCostValue" with value "TotalMFCostAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "MFCurrentValue" with value "TotalMFCurrentValueMoneyAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "MFPerOfTotalValue" with value "TotalMFPercentOfTotalAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "MFGain/LossAmt" with value "TotalMFGainLossAmtAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "MFGain/LossPer" with value "TotalMFGainLossPerAPI" on siebert
#    #Options
#    Then Assert "[dynamic_value]" is present at "OptionsCostValueCB" with value "TotalOptionsCostAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "OptionsCurrentValueCB" with value "TotalOptionsCurrentValueMoneyAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "OptionsPerOfTotalValueCB" with value "TotalOptionsPercentOfTotalAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "OptionsGain/LossAmtCB" with value "TotalOptionsGainLossAmtAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "OptionsGain/LossPerCB" with value "TotalOptionsGainLossPerAPI" on siebert
    #Total Unrealized Short Term Gain/Loss	  
    Then Assert "[dynamic_value]" is present at "STAquirePrice" with value "TotalSTAcquirePriceAPI" on siebert
    Then Assert "[dynamic_value]" is present at "STPurchaseAmt" with value "TotalSTPurchaseAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "STGain/LossAmt" with value "TotalSTGainLossAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "STGain/LossPer" with value "TotalSTGainLossPerAPI" on siebert
    Then Assert "[dynamic_value]" is present at "STEstAnnualIncome" with value "TotalSTEstimatedAnnIncomeAPI" on siebert
    Then Assert "[dynamic_value]" is present at "STEstAnnualYield" with value "TotalSTEstimatedAnnualYieldAPI" on siebert
    #Total Unrealized Long Term Gain/Loss	
    Then Assert "[dynamic_value]" is present at "LTAquirePrice" with value "TotalLTAcquirePriceAPI" on siebert
    Then Assert "[dynamic_value]" is present at "LTPurchaseAmt" with value "TotalLTPurchaseAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "LTGain/LossAmt" with value "TotalLTGainLossAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "LTGain/LossPer" with value "TotalLTGainLossPerAPI" on siebert
    Then Assert "[dynamic_value]" is present at "LTEstAnnualIncome" with value "TotalLTEstimatedAnnIncomeAPI" on siebert
    Then Assert "[dynamic_value]" is present at "LTEstAnnualYield" with value "TotalLTEstimatedAnnualYieldAPI" on siebert
    #Total For Account
    Then Assert "[dynamic_value]" is present at "TotalAmountAcquirePrice" with value "TotalAccountAcquirePriceAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountCostValue" with value "TotalAccountCostAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountPurchaseAmt" with value "TotalAccountPurchaseAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountCurrentValue" with value "TotalAccountCurrentValueMoneyAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountGain/LossAmt" with value "TotalAccountGainLossAmtAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountGain/LossPer" with value "TotalAccountGainLossPerAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountEstAnnualIncome" with value "TotalAccountEstimatedAnnIncomeAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAmountEstAnnualYield" with value "TotalAccountEstimatedAnnualYieldAPI" on siebert
    Then Verify webtable "UGLWebTable" contains API response "UGL"
    And Close browser

  Scenario: TC02_UGL_Verify UGL table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Print all element texts from "UGLHeaders"
    Then Verify table "UGLHeaders" headers are present in same order "Symbol  ,Description  ,Quantity  ,Purchase Date  ,Cost Per Share  ,Acquire Price  ,Cost  ,Purchase Amount  ,Current Price  ,Current Value  ,Percent Of Total  ,Gain/Loss Amount  ,Gain/Loss Percentage  ,ST/LT  ,Currency  ,Est. Annual Div/Int  ,Wash Sale Adj.  ,Est Annual Income  ,Est Annual Yield  ,Status  ,Trade  "
    And Close browser

  Scenario: TC03_UGL_Verify UGL table symbol details are displaying correctly as per figma
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "UGL.json"
    And Print API Request headers
    And Add Endpoint "postUGLAPIurl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.topTenPositionGainMap.*.['symbol','securityDescription','purchaseDate','currentPrice','currentValue','percentToTotal','gainLossPercentage','longShortIndex']" as "UGL" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Description,Purchase Date,Current Price,Current Value,Percent Of Total,Gain/Loss Percentage,ST/LT" from table "UGLTable" and store as "UGLWebTable"
    Then Verify webtable "UGL" contains API response "UGLWebTable"
    And Close browser

  Scenario: TC04_UGL_Verify Note details present under the UGL section as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    Then Assert "Cost basis is provided to you by Siebert for informational purposes only. Siebert makes no warranties and specifically disclaims any liability as to the usage or reporting of the Cost Basis information. Clients are solely responsible for the accuracy of information provided to the taxing authorities and should verify the accuracy of this information against your own records." is present at "UGLNotes"
    And Close browser

  Scenario: TC05_UGL_Verify UGL table should display Cash & Cash Equivalent details separately and those Cash & Cash Equivalent should display in UGL table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    Then Check "Cash&EquivalentDetails" is displayed
    And Close browser

  Scenario: TC06_UGL_Verify UGL table should display Equity Symbol details separately and those Equity symbols should display in UGL table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    Then Check "CommonSymbolDetails" is displayed
    And Close browser

  Scenario: TC07_UGL_Verify UGL table should display Options Symbol details separately and those Options symbols should display in UGL table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    Then Check "OptionsDetails" is displayed
    And Close browser

#  Scenario: TC08_UGL_Verify UGL table should display Mutual Funds Symbol details separately in UGL table
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "10" seconds
#    Then Check "HomePage" is displayed
#    And Click on "SelectAccount"
#    And Click on "BuyOrderAcc"
#    And Wait for "2" seconds
#    Then Check "InvestorPortalPage" is displayed
#    And Click on "CostBasisMenu"
#    And Wait for "5" seconds
#    Then Check "MutualFundsDetails" is displayed
#    And Close browser

  Scenario: TC09_UGL_Verify the sorting functionality in UGL table column headers(Ascending and Descending order)
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "CostBasisMenu"
    And Wait for "15" seconds
    Then Click on "UGLTableSortIcon"
    Then verify sorted records in "ascending order" for the "UGLTable" column "Description  "
    And Click on "UGLTableSortIcon"
    Then verify sorted records in "descending order" for the "UGLTable" column "Description  "
    And Close browser

  Scenario: TC10_UGL_Click on trade now icon under TRADE column and verify it navigates to buy order screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Click on "UGLTradeIcon"
#    And Press "Arrow Right" key for "1" times
    Then Check "TradingPage" is displayed
    Then Close browser

  Scenario: TC11_UGL_Search valid symbol in search bar and verify only that specific symbol details are displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Enter "GOOG" into "UGLSearchBox"
    And Save data to "UGLSymbol" from "UGLTable" with "XPATH" locator
    Then Assert "UGLSymbol" contains "GOOG"
    And Close browser

  Scenario: TC12_UGL_Search invalid symbol in search bar and verify no records displayed message present
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Enter "g46" into "UGLSearchBox"
    And Save data to "SymbolResults" from "UGLTable" with "XPATH" locator
    Then Assert "SymbolResults" contains "No data found"
    And Close browser

#RGL
  Scenario: TC01_RGL_Fetch data from BroadRidge API and compare with cost basis - RGL in UI
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    And Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "RGL.json"
    And save "currenttaxyearstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Modify API Request body with "C" where "$TaxYear" exists
    And Print API Request headers
    And Add Endpoint "postRGLAPIurl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.options.*['symbol','securityDescription','purchaseDate','sellDate','costPerShare','purchaseAmount','sellPrice','sellProceeds','gainLossAmount','gainLossPercentage','longShortIndex','WSI']" as "RGL" with same decimal
    #Total Option Gain/Loss
    And Save "responseObject.taxLotTotalsMap.OP.purchaseAmount" attribute value from API response to "TotalOptionsCostAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.OP.sellProceeds" attribute value from API response to "TotalOptionsSellProceedsAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.OP.gainLossAmount" attribute value from API response to "TotalOptionsGainLossAmtAPI" on siebert
    #Total Short Term Gain/Loss
    And Save "responseObject.taxLotTotalsMap.ST.purchaseAmount" attribute value from API response to "TotalStCostAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.sellProceeds" attribute value from API response to "TotalStSellProceedsAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.ST.gainLossAmount" attribute value from API response to "TotalStGainLossAmtAPI" on siebert
    #Total Account Gain/Loss
    And Save "responseObject.taxLotTotalsMap.grandTotal.purchaseAmount" attribute value from API response to "TotalGtCostAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.sellProceeds" attribute value from API response to "TotalGtSellProceedsAPI" on siebert
    And Save "responseObject.taxLotTotalsMap.grandTotal.gainLossAmount" attribute value from API response to "TotalGtGainLossAmtAPI" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "RGLTab"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Description,Purchase Date,Sell Date,Cost Per Share,Cost,Sell Price,Sell Proceeds,Realized Gain/Loss,Realized Gain/Loss Percentage,ST/LT" from table "RGLTable" and store as "RGLWebTable"  
    #Total Option Gain/Loss
    Then Assert "[dynamic_value]" is present at "OptionsCostValue" with value "TotalOptionsCostAPI" on siebert
    Then Assert "[dynamic_value]" is present at "OptionsSellProceeds" with value "TotalOptionsSellProceedsAPI" on siebert
    Then Assert "[dynamic_value]" is present at "OptionsGainLossAmt" with value "TotalOptionsGainLossAmtAPI" on siebert
    #Total Option Gain/Loss
#    Then Assert "[dynamic_value]" is present at "TotalSTCostValue" with value "TotalStCostAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "TotalStSellProceeds" with value "TotalStSellProceedsAPI" on siebert
#    Then Assert "[dynamic_value]" is present at "TotalSTGainLossAmt" with value "TotalStGainLossAmtAPI" on siebert
    #Total Option Gain/Loss
    Then Assert "[dynamic_value]" is present at "TotalAccCostValue" with value "TotalGtCostAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAccSellProceeds" with value "TotalGtSellProceedsAPI" on siebert
    Then Assert "[dynamic_value]" is present at "TotalAccGainLossAmt" with value "TotalGtGainLossAmtAPI" on siebert
    Then Verify webtable "RGL" contains API response "RGLWebTable"
    #Then Assert "RGL" is equal to "RGLWebTable"
    And Close browser

  Scenario: TC02_RGL_Select Tax Year as Previous and verify Realized gains and losses record asset details should display
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    And Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header        | value            |
      | Content-Type  | application/json |
      | Authorization | token            |
    And Update Request headers with "Authorization" as "bearerToken"
    And Add API Request body "RGL.json"
    And save "priortaxstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "priortaxenddate" date to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Modify API Request body with "P" where "$TaxYear" exists
    And Print API Request headers
    And Print API Request headers
    And Add Endpoint "postRGLAPIurl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.shortTerms.*.['symbol','securityDescription','purchaseDate','sellDate','costPerShare','purchaseAmount','sellPrice','sellProceeds','gainLossAmount','gainLossPercentage','longShortIndex','WSI']" as "RGL" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "RGLTab"
    And Wait for "2" seconds
    And Click on "TaxYearDropDown"
    And Press "ArrowDown" key for "2" times
    And Press "Enter" key for "1" times
    And Click on "RGLSubmit"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Description,Purchase Date,Sell Date,Cost Per Share,Cost,Sell Price,Sell Proceeds,Realized Gain/Loss,Realized Gain/Loss Percentage,ST/LT" from table "RGLTable" and store as "RGLWebTable"
    Then Verify webtable "RGL" contains API response "RGLWebTable"
    #Then Assert "RGLWebTable" is equal to "RGL"
    And Close browser

  Scenario: TC03_RGL_Select Tax Year as Current and verify Realized gains and losses record asset details should display
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    And Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "RGL.json"
    And save "currenttaxyearstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Modify API Request body with "C" where "$TaxYear" exists
    And Print API Request headers
    And Add Endpoint "postRGLAPIurl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.options.*['symbol','securityDescription','purchaseDate','sellDate','costPerShare','purchaseAmount','sellPrice','sellProceeds','gainLossAmount','gainLossPercentage','longShortIndex','WSI']" as "RGL" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "RGLTab"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Description,Purchase Date,Sell Date,Cost Per Share,Cost,Sell Price,Sell Proceeds,Realized Gain/Loss,Realized Gain/Loss Percentage,ST/LT" from table "RGLTable" and store as "RGLWebTable"
    Then Verify webtable "RGL" contains API response "RGLWebTable"
    #Then Assert "RGL" is equal to "RGLWebTable"
    And Close browser

  Scenario: TC04_RGL_Verify Note details present under the RGL section as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "RGLTab"
    And Wait for "2" seconds
    Then Assert ": This report may contain consolidated account data that includes information relating to securities held in tax deferred accounts (IRAs). It may not necessarily represent currently taxable gains and losses." is present at "RGLNotes"
    And Close browser

  Scenario: TC05_RGL_Verify RGL table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "RGLTab"
    And Wait for "2" seconds
    And Print all element texts from "RGLHeaders"
    Then Verify table "RGLHeaders" headers are present in same order "Symbol  ,Description  ,Purchase Date  ,Sell Date  ,Quantity  ,Cost Per Share  ,Cost  ,Sell Price  ,Sell Proceeds  ,Realized Gain/Loss  ,Realized Gain/Loss Percentage  ,ST/LT  ,WSI  "
    And Close browser

#Estimated Income
  Scenario: TC01_Estimated Income_Select "All" from Location dropdown and verify all the records are showing in Estimated Income table for a specific account
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "EIAllApi.json"
    And Print API Request headers
    And Add Endpoint "PostAllUrl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.*.*.['symbol','location']" as "EiAll" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Assert "All" is present at "Location"
    And Wait for "5" seconds
    And Extract the data in columns "Security,Location" from table "EstimatedIncomeTable" and store as "EstimatedIncomeWebTable"
    And Verify webtable "EstimatedIncomeWebTable" contains API response "EiAll"
    And Close browser

  Scenario: TC02_Estimated Income_Select "External" values in the dropdown menu and confirm the records in the Estimated Income table for a specific account.
  #  No values were displaying in Estimated income screen >>>>>>> External values
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "External.json"
    And Print API Request headers
    And Add Endpoint "PostExternalUrl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.E-130.*.['symbol','totalQuantity','location']" as "EiExternal" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    And Click on "Location"
    And Press DOWN ARROW key
    And Press "ArrowDown" key for "1" times
    And Press "Enter" key for "1" times
    And Extract the data in columns "Security,Qty,Location" from table "EstimatedIncomeTable" and store as "EstimatedIncomeWebTable"
    Then Comparing API response "EstimatedIncomeWebTable" with webtable "EiExternal"
    And Close browser

  Scenario: TC03_Estimated Income_Select "Internal" values in the dropdown menu and confirm the records in the Estimated Income table for a specific account.
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    When Update Request headers with "Authorization" as "bearerToken"
    Given Add API Request body "Internal.json"
    And Print API Request headers
    And Add Endpoint "PostInternalUrl"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.*.*.['symbol','location']" as "EiInternal" with same decimal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    And Click on "Location"
    And Press "ArrowDown" key for "0" times
    And Press "Enter" key for "1" times
    And Wait for "5" seconds
    And Extract the data in columns "Security,Location" from table "EstimatedIncomeTable" and store as "EstimatedIncomeWebTable"
    And Verify webtable "EstimatedIncomeWebTable" contains API response "EiInternal"
    And Close browser

  Scenario: TC04_Estimated Income_Estimated Income Predicits next 12 months estimate income value month wise for each security
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "5" seconds
    And Save data to "EIMonth" from "EstimatedIncomeHeaders" with "XPATH" locator
    Then Assert "EIMonth" contains "JAN"
    Then Assert "EIMonth" contains "FEB"
    Then Assert "EIMonth" contains "MAR"
    Then Assert "EIMonth" contains "APR"
    Then Assert "EIMonth" contains "MAY"
    Then Assert "EIMonth" contains "JUN"
    Then Assert "EIMonth" contains "JUL"
    Then Assert "EIMonth" contains "AUG"
    Then Assert "EIMonth" contains "SEP"
    Then Assert "EIMonth" contains "OCT"
    Then Assert "EIMonth" contains "NOV"
    Then Assert "EIMonth" contains "DEC"
    And Close browser

  Scenario: TC05_Estimated Income_Verify Estimated Income table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    And Print all element texts from "EstimatedIncomeHeaders"
    Then Check "EstimatedIncomeHeaders" is displayed
    #Then Verify table "EstimatedIncomeHeaders" headers are present in same order "Security,Qty,Description,MAY 24,JUN 24,JUL 24,AUG 24,SEPT 24,OCT 24,NOV 24,DEC 24,JAN 25,FEB 25,MAR 25,APR 25,Est. Annual Income,Location"
    And Close browser

  Scenario: TC06_Estimated Income_Verify Sorting working properly for Ascending and Descending order or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Click on "EstimatedIncomeSortIcon"
    Then verify sorted records in "ascending order" for the "EstimatedIncomeTable" column "Security  "
    And Click on "EstimatedIncomeSortIcon"
    Then verify sorted records in "descending order" for the "EstimatedIncomeTable" column "Security  "
    And Close browser

  Scenario: TC07_Verify Note details present under the Estimated income section as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Assert "The information on this report has been taken from sources believed to be reliable, however, it cannot be guaranteed. Income or dividends are subject to change." is present at "EstimatedIncomeNotes"
    And Close browser

  Scenario: TC08_Estimated Income_Verify the records are showing section wise like Mutual funds, Common Stocks etc
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Check "CommonStockEI" is displayed
#    Then Check "MutualFundsEI" is displayed
    And Close browser

  Scenario: TC09_Estimated Income_Verify Estimated Income, Principal return and Total Estimated Income for Account values are displaying at end of the records
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Check "EITableLowerHearders" is displayed
    And Close browser

  Scenario: TC10_Estimated Income_Verify current date is showing in "Report As Of" field
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "EIAccount"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Check "ReportAsMessage" is displayed
    And Close browser

  Scenario: TC11_Estimated Income_Verify "No information available for this account" is displayed if there are no records
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "5" seconds
    And Click on "EstimatedIncome"
    And Wait for "2" seconds
    Then Check "NoInformationMessage" is displayed
    And Close browser

#UGL - VSP
  Scenario: TC01_VSP_Select an VSP activated Equity symbol from UGL screen it should navigate to Trading screen by showing "Versus Purchase Feature Active". Verify user able to place Sell Equity Order
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "GsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "GsymbolTradeIcon2"
    And Wait for "10" seconds
    Then Check "VSPNoteCheck" is displayed
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
    And Click on "Kebabmenu"
    And Wait for "2" seconds
    And Click on "EquityCancelOrder"
    And Click on "CancelYesButton"
    And Wait for "5" seconds
    Then Check "CancelOrderMessage" is displayed
    And Close browser

  Scenario: TC02_VSP_VSP should activate only for Equity Symbols it should not display for Options,Mutual Funds and Bonds
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "GsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "GsymbolTradeIcon2"
    And Wait for "10" seconds
    Then Check "VSPNoteCheck" is displayed
    And Save data to "EquityScreen" from "EquityPage" with "XPATH" locator
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "CVTRXsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "CVTRXsymbolTradeIcon2"
    And Wait for "10" seconds
    And Save data to "MutualFundsScreen" from "MutualFundsPage" with "XPATH" locator
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "KOoptionsSymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "KOoptionsSymbolTradeIcon2"
    And Wait for "10" seconds
    And Save data to "OptionsScreen" from "OptionsPage" with "XPATH" locator
    Then Assert "EquityScreen" is not equal to "MutualFundsScreen"
    Then Assert "EquityScreen" is not equal to "OptionsScreen"
    And Close browser

  Scenario: TC03_VSP_VSP feature should only be active for sell types, and the buy option should not display the VSP.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Wait for "2" seconds
    And Click on "BuyOrderAcc"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "GsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "GsymbolTradeIcon2"
    And Wait for "10" seconds
    Then Check "VSPNoteCheck" is displayed
    Then Check "BUYnotApplicable" is displayed
    And Close browser

  Scenario: TC04_VSP_Select an Symbol and verify the symbol performance chart displaying properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "GsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "GsymbolTradeIcon2"
    And Wait for "10" seconds
    Then Check "VSPNoteCheck" is displayed
    Then Check "VSPperformanceGraphDetails" is displayed
    And Close browser

  Scenario: TC05_VSP_Select an VSP disabled Equity symbol from UGL screen it should navigate to Trading screen.Verify 'Versus Purchase Feature Active' NOTE should not display in Trading screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "GsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "GsymbolTradeIcon2"
    And Wait for "10" seconds
    Then Check "VSPNoteCheck" is displayed
    And Save data to "VSPenabledSymbolScreen" from "EquityPage" with "XPATH" locator
    And Click on "CostBasisMenu"
    And Wait for "10" seconds
    And Scroll down "AAsymbolPresizedIcon"
    And Wait for "5" seconds
    And Click on "AAsymbolTradeIcon2"
    And Wait for "10" seconds
    And Save data to "VSPdisabledSymbolScreen" from "EquityPage" with "XPATH" locator
    Then Assert "VSPenabledSymbolScreen" is not equal to "VSPdisabledSymbolScreen"
    And Close browser
    
    
    
    
    
    
  
  
  
