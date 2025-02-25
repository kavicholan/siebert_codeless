@InvestorPortal-Portfolio @UIAutomation
Feature: Portfolio

#Account Balance
  Scenario: Fetch data from BroadRidge API
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    And Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header        | value       |
      | Authorization | bearerToken |
    And Update Request headers with "Authorization" as "bearerToken"
    And Print API Request headers
    And Add Endpoint "BalanceAPIurl"
    Then Print API Endpoint
    When Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    #    Account Summary
    And Save "responseObject.marketValueMoney" attribute value from API response to "AccSummMarketvalue" on siebert
    And Save "responseObject.balanceMoney" attribute value from API response to "AccSummbalance" on siebert
    And Save "responseObject.equityMoney" attribute value from API response to "AccSummequityMoney" on siebert
    And Save "responseObject.liquidatingEquityMoney" attribute value from API response to "AccSummLiqEquitymoney" on siebert
    And Save "responseObject.marginEquityPercent" attribute value from API response to "AccSummMarginpercent" on siebert
    And Save "responseObject.creditInterest" attribute value from API response to "AccSummCreditinterest" on siebert
    #    cash Available
    And Save "responseObject.type1availableMoney" attribute value from API response to "CashAvailabletype1" on siebert
    And Save "responseObject.type2availableMoney" attribute value from API response to "CashAvailabletype2" on siebert
    And Save "responseObject.maxCashMoney" attribute value from API response to "CashAvailableMaxCashmoney" on siebert
    And Save "responseObject.mmfcloseMoney" attribute value from API response to "CashAvailableMMClosemoney" on siebert
    And Save "responseObject.mmfIntraDay" attribute value from API response to "CashAvailableMMFIntraday" on siebert
    #    Buy Power
    And Save "responseObject.smaMoney" attribute value from API response to "BuyPowerSMa" on siebert
    And Save "responseObject.bpsBuyingPowerMoney" attribute value from API response to "BuyPowerStockmarginable" on siebert
    And Save "responseObject.optionsNonMarginableMoney" attribute value from API response to "BuyPowerOptionsnon-Marginable" on siebert
    And Save "responseObject.treasuriesMoney" attribute value from API response to "BuyPowertreasuries" on siebert
    And Save "responseObject.corporatesMoney" attribute value from API response to "BuyPowercorporates" on siebert
    And Save "responseObject.municipalsMoney" attribute value from API response to "BuyPowermunicipals" on siebert
    And Save "responseObject.dayTraderBuyingPowerMoney" attribute value from API response to "BuyPowerDayTradeBuyingpower" on siebert
    #   Requirements
    And Save "responseObject.fedCallTotalMoney" attribute value from API response to "RequireFedcall" on siebert
    And Save "responseObject.fedCallTotalMoney" attribute value from API response to "RequireCashcall" on siebert
    And Save "responseObject.houseExcessCallMoney" attribute value from API response to "RequireHouseExcesscall" on siebert
    And Save "responseObject.newHouseCallMoney" attribute value from API response to "RequireNewHouscall" on siebert
    And Save "responseObject.nyseCallMoney" attribute value from API response to "RequireNYSEcall" on siebert
    And Save "responseObject.optionMaintenanceMoney" attribute value from API response to "RequireOptMntancecall" on siebert
    And Save "responseObject.dayTradingCall" attribute value from API response to "RequireDayTradingcall" on siebert
    #    Header values
    And Save "responseObject.totalMoney" attribute value from API response to "HeaderTotalCash" on siebert
    And Save "responseObject.bpsBuyingPower" attribute value from API response to "HeaderBuyingpower" on siebert
    And Save "responseObject.dailyChange" attribute value from API response to "HeaderdailyChange" on siebert
    #    Account Balance Table
    And save the response value from JSON path "$.responseObject.balanceSessionModels.*.balances.USD.backOfficeBalanceDetail.*.['typeCheck','marketValueMoney','settlementDateBalance','tradeDateBalance','settlementDateBalanceMoney','tradeDateBalanceMoney','equityMoney','currency','accountId']" as "AccountBalanceTableAPI"

  Scenario: TC01_Account Balance_Data comparsion on Portfolio-AccountBalances-headervalues
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "10" seconds
    And Print all element texts from "HeaderTotalEquity"
    And Print all element texts from "HeaderBuyingPower"
    And Print all element texts from "HeaderMarketValue"
    And Print all element texts from "HeaderDailyChange"
    Then Assert "[dynamic_value]" is present at "HeaderTotalEquity" with value "AccSummequityMoney" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderBuyingPower" with value "HeaderBuyingpower" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderMarketValue" with value "AccSummMarketvalue" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderDailyChange" with value "HeaderdailyChange" on siebert
    Then Close browser

  Scenario: TC02_Account Balance_Fetch data from BroadRidge API
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "AccSummaryMarketValue" with value "AccSummMarketvalue" on siebert
    Then Assert "[dynamic_value]" is present at "AccSummaryBalance" with value "AccSummbalance" on siebert
    Then Assert "[dynamic_value]" is present at "AccSummaryTotalEquity" with value "AccSummequityMoney" on siebert
    Then Assert "[dynamic_value]" is present at "AccSummaryMarginEquity" with value "AccSummMarginpercent" on siebert
    Then Assert "[dynamic_value]" is present at "AccSummaryCreditInterest" with value "AccSummCreditinterest" on siebert
    Then Assert "[dynamic_value]" is present at "AccSummaryLiquidatingEquity" with value "AccSummLiqEquitymoney" on siebert
    And Close browser

  Scenario: TC03_Account Balance_Data comparsion on Portfolio-AccountBalances-CashAvailable
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "CashAvailType1" with value "CashAvailabletype1" on siebert
    Then Assert "[dynamic_value]" is present at "CashAvailType2" with value "CashAvailabletype2" on siebert
    Then Assert "[dynamic_value]" is present at "CashAvailMaxCash" with value "CashAvailableMaxCashmoney" on siebert
    Then Assert "[dynamic_value]" is present at "CashAvailMMFClose" with value "CashAvailableMMClosemoney" on siebert
    Then Assert "[dynamic_value]" is present at "CashAvailMMFIntraday" with value "CashAvailableMMFIntraday" on siebert
    Then Close browser

  Scenario: TC04_Account Balance_Data comparsion on Portfolio-AccountBalances-BuyPower
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "BuyPwrSMA" with value "BuyPowerSMa" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrStockMarginable" with value "BuyPowerStockmarginable" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrOptionsNonMarginable" with value "BuyPowerOptionsnon-Marginable" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrTreasuries" with value "BuyPowertreasuries" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrCorporates" with value "BuyPowercorporates" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrMunicipals" with value "BuyPowermunicipals" on siebert
    Then Assert "[dynamic_value]" is present at "BuyPwrDayTradeBuyingPower" with value "BuyPowerDayTradeBuyingpower" on siebert
    Then Close browser

  Scenario: TC05_Account Balance_Data comparsion on Portfolio-AccountBalances-Requirements
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "ReqFedCall" with value "RequireFedcall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqCashCall" with value "RequireCashcall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqHouseExcessCall" with value "RequireHouseExcesscall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqNewHouseCall" with value "RequireNewHouscall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqNYSEExcess" with value "RequireNYSEcall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqOptionMaintenance" with value "RequireOptMntancecall" on siebert
    Then Assert "[dynamic_value]" is present at "ReqDayTradingCall" with value "RequireDayTradingcall" on siebert
    And Close browser

  Scenario: TC06_Account Balance_Verify Account balance table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "5" seconds
    And Print all element texts from "AccountBalanceTableHeaders"
    Then Verify table "AccountBalanceTableHeaders" headers are present in same order "Type  ,T-C  ,Market Value  ,Closing TD Balance  ,Intraday TD Balance  ,SD Balance  ,Intraday SD Balance  ,Total Equity  ,Currency  ,Account  "
    And Close browser

  Scenario: TC07_Account Balance_Verify Portfolio page headers
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "5" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Wait for "2" seconds
    Then Check "PortfolioHeaders" is displayed
    And Close browser

  Scenario: TC08_Account Balance_Fetch API and compare account balance table
    Given Add API Request body "Login.json"
    When Add Endpoint "LoginAPIurl"
    And Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Print API Response headers
    And Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header        | value       |
      | Authorization | bearerToken |
    And Update Request headers with "Authorization" as "bearerToken"
    And Print API Request headers
    And Add Endpoint "BalanceAPIurl"
    Then Print API Endpoint
    When Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.balanceSessionModels.*.balances.USD.backOfficeBalanceDetail.*.['typeCheck','marketValueMoney','tradeDateBalance','tradeDateBalanceMoney','settlementDateBalance','settlementDateBalanceMoney','equityMoney','currency']" as "AccountBalanceTableAPI"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "2" seconds
    And Extract the data in columns "T-C,Market Value,Closing TD Balance,Intraday TD Balance,SD Balance,Intraday SD Balance,Total Equity,Currency" from table "LinkedAccountsTable" and store as "AcountSummaryTable"
    Then Assert "AccountBalanceTableAPI" contains "AcountSummaryTable"
    And Close browser

  Scenario: TC09_Account Balance_Account Balance table should display records for specific account type only
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    And Wait for "2" seconds
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "2" seconds
    And Save data to "AccType" from "LinkedAccountsTable" with "XPATH" locator
    Then Assert "AccType" contains "Cash"
    And Close browser

  Scenario: TC10_Account Balance_Account Balance table should not display records for other account types
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "2" seconds
    And Save data to "AccType" from "LinkedAccountsTable" with "XPATH" locator
    Then Assert "AccType" contains "Margin"
    And Close browser

  Scenario: TC11_Account Balance_Verify Account Balance tab headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "2" seconds
    And Print all element texts from "AccountBalanceTabHeaders"
    Then Check "AccountBalanceTabHeaders" is displayed
    And Close browser

  Scenario: TC12_Account Balance_Verify Account Balance table account number hyperlink should navigate to respective screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "AccountBalanceTab"
    And Wait for "10" seconds
    And Press "PageDown" key for "1" times
    Then Hover and click on "AccountNumber"
    And Wait for "5" seconds
    And Save data to "MenuList" from "AccountMenuList" with "XPATH" locator
    Then Assert "MenuList" contains "Portfolio"
    Then Assert "MenuList" contains "Holdings"
    Then Assert "MenuList" contains "Positions"
    Then Assert "MenuList" contains "Transaction History"
    Then Assert "MenuList" contains "Account Profile"
    Then Assert "MenuList" contains "Equity Order"
    Then Assert "MenuList" contains "Options Order"
    Then Assert "MenuList" contains "Mutual Funds Order"
    Then Assert "MenuList" contains "Account Funding"
    Then Assert "MenuList" contains "Unrealized G&L"
    Then Assert "MenuList" contains "Realized G/L"
    And Wait for "2" seconds
    And Click on "AccountMenu1"
    Then Check "TransactionHistoryTab" is displayed
    And Close browser

    # Balance Summary
  Scenario: TC01_BalanceSummary_Verify Balance summary table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    When Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    When Click on "BalanceSummaryTab"
    And Wait for "2" seconds
    Then Check "BalanceSummaryTableHeaders" is displayed
    And Print all element texts from "BalanceSummaryTableHeaders"
    And Wait for "2" seconds
    Then Verify table "BalanceSummaryTableHeaders" headers are present in same order "Funds  ,Account Type  ,T/D Bal  ,S/D Bal  ,Current Market Value  ,Total Equity  ,Free Cash  ,Buying Power  ,SMA  "
    And Close browser

  Scenario: TC02_BalanceSummary_Verify Balance summary table Market Money Funds value should display
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "BalanceAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.moneyMarketIA.formatted" attribute value from API response to "MoneyMarketValue" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "BalanceSummaryTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "BalanceSummary_MoneyMarketFund" with value "MoneyMarketValue" on siebert
    And Close browser

  Scenario: TC03_BalanceSummary_Verify Balance summary table of Total value should display
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "BalanceAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.netTradeDateBalanceMoney" attribute value from API response to "ACCSummaryTotalTDBalance" on siebert
    And Save "responseObject.netSettlementDateBalanceMoney" attribute value from API response to "ACCSummaryTotalSDBalance" on siebert
    And Save "responseObject.netMarketValueMoney" attribute value from API response to "ACCSummaryTotalCurrentMKValue" on siebert
    And Save "responseObject.netEquityMoney" attribute value from API response to "ACCSummaryTotalEquity" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "BalanceSummaryTab"
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "BalanceSummary_TotalTDBal" with value "ACCSummaryTotalTDBalance" on siebert
    Then Assert "[dynamic_value]" is present at "BalanceSummary_TotalSDBal" with value "ACCSummaryTotalSDBalance" on siebert
    Then Assert "[dynamic_value]" is present at "BalanceSummary_TotalCurrMV" with value "ACCSummaryTotalCurrentMKValue" on siebert
    Then Assert "[dynamic_value]" is present at "BalanceSummary_TotalEquity" with value "ACCSummaryTotalEquity" on siebert
    Then Close browser

  Scenario: TC04_BalanceSummary_Fetch API and compare with Balance summary table
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "BalanceAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.balanceSessionModels.*.balances.USD.balanceDetails.*.['tradeDateBalance','settlementDateBalance','marketValueMoney','equityMoney']" as "BalanceSummaryAPI"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Wait for "2" seconds
    And Click on "BalanceSummaryTab"
    And Wait for "5" seconds
    And Extract the data in columns "T/D Bal,S/D Bal,Current Market Value,Total Equity" from table "LinkedAccountsTable" and store as "BalanceSummaryTable"
    Then Assert "BalanceSummaryAPI" contains "BalanceSummaryTable"
    Then Close browser


#Transaction_History
  Scenario: TC01_Transactions History_Select one account Filter transaction history with Current week and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "thisweekstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "ThisWeek"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Verify webtable "TransactionHistoryWebTable" contains API response "TransactionHistory"
    And Close browser

  Scenario: TC02_Transactions History_Select one account Filter transaction history with Previous week and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "lastweekstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "lastweekenddate" date to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "LastWeek"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Verify webtable "TransactionHistoryWebTable" contains API response "TransactionHistory"
    And Close browser

  Scenario: TC03_Transactions History_Select one account Filter transaction history with Last 30 Days and verify Account Value chart value matches with transaction history
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
      | Authorization | bearerToken      |
    And Update Request headers with "Authorization" as "bearerToken"
    And Add API Request body "ActivityTC.json"
    And save "30" days ago from today to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "Last30Days"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC04_Transactions History_Select one account Filter transaction history with Last 60 Days and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "60" days ago from today to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "Last60Days"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC05_Transactions History_Select one account Filter transaction history with Last 90 Days and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "90" days ago from today to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "Last90Days"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC06_Transactions History_Select one account Filter transaction history with MTD and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "mtdstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "MTD"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Verify webtable "TransactionHistoryWebTable" contains API response "TransactionHistory"
    And Close browser

  Scenario: TC07_Transactions History_Select one account Filter transaction history with Current Quarter and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "currentquarterstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "CurrentQuarter"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC08_Transactions History_Select one account Filter transaction history with Current Tax Year and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "currenttaxyearstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "CurrentTaxYear"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC09_Transactions History_Select one account Filter transaction history with Prior Tax Year and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "priortaxstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "priortaxenddate" date to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "PriorTaxYear"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC10_Transactions History_Select one account Filter transaction history with All Activity and verify Account Value chart value matches with transaction history
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
    And Add API Request body "ActivityTC.json"
    And save "3yearsback" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "5" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Assert "TransactionHistory" contains "TransactionHistoryWebTable"
    And Close browser

  Scenario: TC11_Transactions History_Apply Valid Filters then verify respective filters applied and applied filters gets displayed
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
    And Add API Request body "ActivityTC.json"
    And save "mtdstartdate" date to the variable "FromDate" in the format "yyyy-MM-dd"
    And save "0" days ago from today to the variable "Todate" in the format "yyyy-MM-dd"
    And Modify API Request body with "FromDate" where "${FromDate}" exists
    And Modify API Request body with "Todate" where "${ToDate}" exists
    And Print API Request headers
    And Add Endpoint "postActivityAPIURL"
    Then Print API Endpoint
    Then Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.report.pagedReportData.*['symbol','transactionDate','action','quantity','price','amount','commission','currency','grossAmount','settleDate']" as "TransactionHistory"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Click on "MTD"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Extract the data in columns "Symbol,Date,Action,Quantity,Price/Entry,Amount,Commission,Currency,Gross Amount,Settle Date" from table "TransactionHistoryTable" and store as "TransactionHistoryWebTable"
    Then Verify webtable "TransactionHistoryWebTable" contains API response "TransactionHistory"
    And Close browser

  Scenario: TC12_Transactions History_In pagination section by clicking next,previous,First, Last button verify it working as expected
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Save data to "1stPage1stRow" from "TransHistory1stRow" with "XPATH" locator
    And Click on "NextPageButton"
    And Save data to "2ndPage1stRow" from "TransHistory1stRow" with "XPATH" locator
    Then Assert "1stPage1stRow" is not equal to "2ndPage1stRow"
    And Wait for "5" seconds
    And Click on "PreviousPageButton"
    Then Assert "2ndPage1stRow" is not equal to "1stPage1stRow"
    And Wait for "2" seconds
    And Click on "LastPageButton"
    And Save data to "LastPage1stRow" from "TransHistory1stRow" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "FirtPageButton"
    And Save data to "1stPage1stRow" from "TransHistory1stRow" with "XPATH" locator
    Then Assert "LastPage1stRow" is not equal to "1stPage1stRow"
    And Close browser

  Scenario: TC13_Transactions History_Click on the "Download" button in the Transaction History section and ensure that the transaction history is displayed in a report format, available both as a CSV file and a PDF document.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Click on "DownloadIcon"
    And Click on "CSV"
    And Wait for "5" seconds
    Then Verify filename contains "Transaction History.xlsx" is download successfully
    And Click on "DownloadIcon"
    And Click on "PDF"
    And Wait for "5" seconds
    Then Verify filename contains "Transaction History.pdf" is download successfully
    And Close browser

  Scenario: TC14_Transactions History_Click Reset button and verify the applied filter gets resetted
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    And Save data to "BeforeFilter" from "TransactionHistoryTable" with "XPATH" locator
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Hover and click on "Reset"
    And Wait for "5" seconds
    And Save data to "AfterFilter" from "TransactionHistoryTable" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "BeforeFilter" is equal to "AfterFilter"
    And Close browser

  Scenario: TC15_Transactions History_Apply Invalid Filters then verify error message should gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Enter "AFTQWS" into "Symbol1"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    Then Assert "No results for specified criteria" is present at "NoData"
    And Close browser

  Scenario: TC16_Transactions History_Apply Mutiple Filters then verify applied Mutiple filters details should get displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "ActivityType"
    And Click on "Other"
    And Enter "AAPL" into "Symbol1"
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "MTD"
    And Click on "ApplyButton"
    And Wait for "2" seconds
    Then Assert "No results for specified criteria" is present at "NoData"
    And Close browser

  Scenario: TC17_Transactions History_Apply all Filters then verify applied all filters details should get displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "ActivityType"
    And Click on "Other"
    And Enter "AAPL" into "Symbol1"
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "MTD"
    And Wait for "2" seconds
    And Click on "OptionBySearch"
    And Wait for "5" seconds
    And Click on "SelectCallPut"
    And Click on "Call"
    And Click on "OptionsCalender"
    And Click on "OptionsDate"
    And Wait for "2" seconds
    And Enter "1000" into "StrikePrice"
    And Click on "ApplyButton"
    And Wait for "2" seconds
    Then Assert "No results for specified criteria" is present at "NoData"
    And Close browser

  Scenario: TC18_Transactions History_Enter datas in filter section and click cancel then verify filter not applied
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    And Save data to "BeforeFilter" from "TransactionHistoryTable" with "XPATH" locator
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "Cancel"
    And Wait for "5" seconds
    And Save data to "AfterFilter" from "TransactionHistoryTable" with "XPATH" locator
    Then Assert "BeforeFilter" is equal to "AfterFilter"
    And Close browser

  Scenario: TC19_Transactions History_Enter datas in filter section and click close icon then verify filter not applied  and filter section closed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    And Save data to "BeforeFilter" from "TransactionHistoryTable" with "XPATH" locator
    When Click on "Filteroption"
    And Wait for "5" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "Close"
    And Wait for "5" seconds
    And Save data to "AfterFilter" from "TransactionHistoryTable" with "XPATH" locator
    Then Assert "BeforeFilter" is equal to "AfterFilter"
    And Close browser

  Scenario: TC20_Transactions History_Click on the ascending sort icon in the transaction history section and ensure that all fields are sorted in ascending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    And Click on "TransHistorySortIcon"
    Then verify sorted records in "ascending order" for the "TransactionHistoryTable" column "SYMBOL"
    And Close browser

  Scenario: TC21_Transactions History_Click on the descending sort icon in the transaction history section and ensure that all fields are sorted in descending order.
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "5" seconds
    And Double click on "TransHistorySortIcon"
    Then verify sorted records in "descending order" for the "TransactionHistoryTable" column "SYMBOL"
    And Close browser

  Scenario: TC22_Transactions History_Click Trade icon in Trade column on Transaction history screen and verify Trade Icon navigates to Trading screen properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "5" seconds
    And Click on "SelectOption"
    And Click on "AllActivity"
    And Wait for "2" seconds
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Hover and click on "TradeIcon"
    And Wait for "2" seconds
    Then Check "TradingPage" is displayed
    Then Close browser

  Scenario: TC23_Transactions History_Click View icon in transaction history and verify the specific transaction history details should gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "5" seconds
    And Click on "SelectOption"
    And Wait for "2" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Click on "View"
    Then Assert "Transaction Details" is present at "TransactionDetails"
    And Close browser

  Scenario: TC24_Transactions History_In view section for Transacction history click close icon and verify the transaction history details should get closed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "5" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    And Click on "View"
    Then Assert "Transaction Details" is present at "TransactionDetails"
    And Click on "TransactionClose"
    And Close browser

  Scenario: TC25_Transactions History_Verify From ,To and Activity type should display default values
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    Then Assert "All Activity" is present at "ActivityType"
    And Close browser

  Scenario: TC26_Transactions History_Verify Transaction History table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    And Wait for "2" seconds
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    Then Print all element texts from "TransactionHistoryHeaders"
    Then Assert "Symbol   Date   T-C   Action   Description   Quantity   Price/Entry   Amount   Commission   Currency   Account #   Gross Amount   Settle Date   Trade    " is present at "TransactionHistoryHeaders"
    And Close browser

  Scenario: TC27_Transaction History_In Transaction history verify trade icon displays only for Stock symbols
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "TransactionHistoryTab"
    And Wait for "2" seconds
    When Click on "Filteroption"
    And Wait for "2" seconds
    And Click on "SelectOption"
    And Wait for "5" seconds
    And Click on "AllActivity"
    And Click on "ApplyButton"
    And Wait for "5" seconds
    Then Check "TransactionHistoryTable" is displayed
    And Wait for "2" seconds
    Then Check "TradeIcon" is displayed
    And Close browser

  #Positions
  Scenario: TC01_Positions_Fetch data from BroadRidge API vs UI for Positions screen in Portfolio
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "GetPositionsAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.USD.*.*.['symbol','priceMoney','marketValueMoney','percentOfTotal','closePriceMoney','closingMarketValueMoney','currency','percentOfClass','lastPriceMoney','differenceMoney','marginHouseReqAmtMoney','marginHouseReqPcnt']" as "PositionsAPI"
    And Save "responseObject.grandTotalMarketValueMoney" attribute value from API response to "TotalCurrentMrktValue" on siebert
    And Save "responseObject.grandTotalRow.closingMarketValue" attribute value from API response to "TotalCloseMrktValue" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Extract the data in columns "Symbol,Current Price,Current Mkt Value,Percent of Total,Close Price,Close Mkt Value,Currency,% of Type,Last Price,Difference,Margin Req,Margin Req Percent" from table "PositionsTable" and store as "PositionsWebTable"
    Then Assert "[dynamic_value]" is present at "TotalCurrentMarketValue" with value "TotalCurrentMrktValue" on siebert
    Then Assert "[dynamic_value]" is present at "TotalCloseMarketValue" with value "TotalCloseMrktValue" on siebert
    Then Verify webtable "PositionsWebTable" contains API response "PositionsAPI"
    And Close browser

  Scenario: TC02_Positions_Verify that the displayed Position status corresponds to the associated account number in the Investor portal
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Save data to "Accountvalue" from "PositionsTable" with "XPATH" locator
    Then Assert "Accountvalue" contains "10999912"
    And Close browser

  Scenario: TC03_Positions_Verify Search by entering valid symbol and check respective symbol gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Enter "AAPL" into "PositionsSearchBox"
    And Save data to "PostionTableValue" from "PositonsTablebody" with "XPATH" locator
    Then Assert "PostionTableValue" contains "AAPL"
    And Close browser

  Scenario: TC04_Positions_Verify Search by entering invalid symbol and check error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Enter "3rt" into "PositionsSearchBox"
    And Save data to "PostionTableValue" from "PositonsTablebody" with "XPATH" locator
    Then Assert "PostionTableValue" contains "No data found"
    And Close browser

  Scenario: TC05_Positions_Verify that the ascending sort icon displays the valid datas in Position table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "PositionsSortIcon"
    Then verify sorted records in "ascending order" for the "PositionsTable" column "Symbol"
    And Close browser

  Scenario: TC06_Positions_Verify that the Descending sort icon displays the valid datas in Position table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Double click on "PositionsSortIcon"
    Then verify sorted records in "descending order" for the "PositionsTable" column "Symbol"
    And Close browser

  #Positions - Foreign/Domestic
  Scenario: TC01_Positions-Foreign/Domestic_Fetch data from BroadRidge API vs UI for Foriegn/Domestic screen in Portfolio
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "GetPositionsAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.USD.*.*.['symbol','priceMoney','marketValueMoney','percentOfTotal','closePriceMoney','closingMarketValueMoney','currency','percentOfClass','lastPriceMoney','differenceMoney','marginHouseReqAmtMoney','marginHouseReqPcnt','foreignDomestic']" as "FdAPI"
    And Save "responseObject.grandTotalMarketValueMoney" attribute value from API response to "TotalCurrentMrktValue" on siebert
    And Save "responseObject.grandTotalRow.closingMarketValue" attribute value from API response to "TotalCloseMrktValue" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Extract the data in columns "Symbol,Current Price,Current Mkt Value,Percent of Total,Close Price,Close Mkt Value,Currency,% of Type,Last Price,Difference,Margin Req,Margin Req Percent,Foreign/Domestic" from table "FDTable" and store as "FDWebTable"
    Then Assert "[dynamic_value]" is present at "TotalCurrentMarketValue2" with value "TotalCurrentMrktValue" on siebert
    Then Assert "[dynamic_value]" is present at "TotalCloseMarketValue2" with value "TotalCloseMrktValue" on siebert
    Then Verify webtable "FDWebTable" contains API response "FdAPI"
    And Close browser

  Scenario: TC02_Positions-Foreign/Domestic_Verify the Foreign/Domestic table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Print all element texts from "ForeignDomesticTableHeaders"
    Then Verify table "ForeignDomesticTableHeaders" headers are present in same order "Symbol  ,Description  ,Foreign/Domestic  ,T-C  ,Quantity  ,Close Price  ,Close Mkt Value  ,Currency  ,Current Price  ,Current Mkt Value  ,Percent of Total  ,Account  ,Account Type  ,Mat Date  ,% of Type  ,Last Price  ,Int Rate  ,Difference  ,Margin Req  ,Margin Req Percent  ,Held In Currency  ,Class  ,Sec  ,Daily Change  "
    And Close browser

  Scenario: TC03_Positions-Foreign/Domestic_Verify Search by entering valid symbol and check respective symbol gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    Then Click on "SelectAccount"
    And Wait for "2" seconds
    And Hover and click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Wait for "5" seconds
    And Enter "AAPL" into "ForeignDomesticSearch"
    And Wait for "3" seconds
    Then Check "FirstSymbol" is displayed
    And Close browser

  Scenario: TC04_Positions-Foreign/Domestic_Verify Search by entering invalid symbol and check error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Enter "ACTHX11" into "ForeignDomesticSearch"
    And Wait for "3" seconds
    Then Check "Nodatafound" is displayed
    And Close browser

  Scenario: TC05_Positions-Foreign/Domestic_Verify that the ascending sort icon displays the valid datas in Foriegn/Domestic table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Click on "PositionsSortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "PositionsTable" column "Symbol"
    And Close browser

  Scenario: TC06_Positions-Foreign/Domestic_Verify that the Descending sort icon displays the valid datas in Foriegn/Domestic table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account6"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Wait for "5" seconds
    And Double click on "PositionsSortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "descending order" for the "PositionsTable" column "Symbol"
    And Close browser

  Scenario: TC07_Positions-Foreign/Domestic_Verify that the pie chart gets hided when clicking on the hide chart button in Foriegn/Domestic screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Wait for "2" seconds
    And Click on "HideChartButton"
    And Wait for "5" seconds
    Then Asset "PieChartforPosition" is present "0" number of times in the screen
    And Close browser

  Scenario: TC08_Positions-Foreign/Domestic_Verify that the pie chart gets displayed when clicking on the show chart button in Foriegn/Domestic screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "Foreign/Domestic"
    And Wait for "2" seconds
    And Click on "HideChartButton"
    And Wait for "5" seconds
    And Click on "ShowChartButton"
    And Wait for "5" seconds
    Then Asset "PieChartforPosition" is present "1" number of times in the screen
    And Close browser

#  Positions-AssetView
  Scenario: TC01_Positions-AssetView_Verify Pie-Chart is visible or not in Assert view
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "2" seconds
    Then Asset "PieChartforPosition" is present "1" number of times in the screen
    And Close browser

  Scenario: TC02_Positions-AssetView_Verify when tapping on Hide chart and check the pie-chart gets hidden
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "2" seconds
    And Click on "HideChartButton"
    And Wait for "5" seconds
    Then Asset "PieChartforPosition" is present "0" number of times in the screen
    And Close browser

  Scenario: TC03_Positions-AssetView_Verify when tapping on Show chart and check the pie-chart gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "2" seconds
    And Click on "HideChartButton"
    And Wait for "5" seconds
    And Click on "ShowChartButton"
    And Wait for "5" seconds
    Then Asset "PieChartforPosition" is present "1" number of times in the screen
    And Close browser

  Scenario: TC04_Positions-AssetView_Verify Asset view table should display Cash & Cash Equivalent details separately
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.K.marketValueMoney" attribute value from API response to "TotalForCash&CashEquivalent" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    Then Check "TotalCashHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalCashEquivalentValue" with value "TotalForCash&CashEquivalent" on siebert
    And Close browser

  Scenario: TC05_Positions-AssetView_Verify Asset view table should display Equity Symbol details separately
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.E.marketValueMoney" attribute value from API response to "TotalForEquity" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Click on "PortfolioMenu"
    And Wait for "2" seconds
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "5" seconds
    Then Check "TotalEquityAssetView" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalEquityValue" with value "TotalForEquity" on siebert
    And Close browser

  Scenario: TC06_Positions-AssetView_Verify Asset view table should display Options Symbol details separately
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.O.marketValueMoney" attribute value from API response to "TotalOptions" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    And Click on "selectUser"
    And Press DOWN ARROW key
    And Press ENTER key
    And Wait for "2" seconds
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "5" seconds
    Then Check "TotalOptionsHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalOptionsValue" with value "TotalOptions" on siebert
    And Close browser

  Scenario: TC07_Positions-AssetView_Verify Asset view table should display Mutual Funds Symbol details separately in Postion table
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.M.marketValueMoney" attribute value from API response to "TotalMutualFunds" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter "superuser1" into "SiebertUsername"
    And Enter "Welcome2" into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    Then Check "TotalMutualHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalMutualValue" with value "TotalMutualFunds" on siebert
    And Close browser

  Scenario: TC8_Positions-AssetView_Verify Asset view table account number hyperlink should navigate to respective screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Wait for "5" seconds
    And Hover and click on "AccountHyperlink"
    And Click on "AccountProfileOption"
    And Wait for "2" seconds
    Then Check "ACCProfAccountInformation" is displayed
    Then Check "ACCProfSuitabilityInformations" is displayed
    Then Check "ACCProfEmailAddress" is displayed
    Then Check "ACCProfYTDStatistics" is displayed
    Then Check "ACCProfCurrentYear" is displayed
    Then Check "ACCProfPreviousYear" is displayed
    And Close browser

  Scenario: TC09_Positions-AssetView_In Asset view verify Search by entering valid symbol and check respective symbol gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Enter "AAPL" into "AssetViewSearch"
    And Wait for 3 second
    Then Check "FirstSymbol" is displayed
    And Close browser

  Scenario: TC10_Positions-AssetView_In Asset view verify Search by entering invalid symbol and no records displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "5" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "PositionsTab"
    And Wait for "10" seconds
    And Click on "AssetViewTab"
    And Enter "ACTHX11" into "AssetViewSearch"
    And Wait for 3 second
    Then Check "Nodatafound" is displayed
    And Close browser

#   Portfolio- Holding
  Scenario: TC01_Holdings_Verify Holding table headers are displaying correctly as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Verify table "HoldingsHeader" headers are present in same order "Asset  ,Description  ,Quantity  ,Current Price  ,Current Mkt Value  ,Percent of Total  ,Currency  ,Account Type  ,Mat Date  ,Int Rate  ,Daily Change  ,Trade  "
    And Close browser

  Scenario: TC02_Holdings_Verify Search by entering valid symbol and check respective symbol gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    And Enter "AAPL" into "Search"
    And Wait for "3" seconds
    Then Check "Symbol2" is displayed
    And Close browser

  Scenario: TC03_Holdings_Verify Search by entering invalid symbol and check error message gets displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    And Enter "ACTHX11" into "Search"
    And Wait for "3" seconds
    Then Check "Nodatafound" is displayed
    And Close browser

  Scenario: TC04_Holdings_Verify Assets sub-headers are displayed as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "AssetsinUSD" is displayed
    Then Check "CashHeader" is displayed
    Then Check "TotalCashHeader" is displayed
    Then Check "MoneyMarketHeader" is displayed
    Then Check "TotalCashEquivalentHeader" is displayed
    And Close browser

  Scenario: TC05_Holdings_Verify the current market value of all Equity holdings is correctly totaled, including the header.
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.E.marketValueMoney" attribute value from API response to "TotalForEquity" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "TotalEquity" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalEquityValue" with value "TotalForEquity" on siebert
    And Close browser

  Scenario: TC06_Holdings_Verify the current market value of all Mutual funds holdings is correctly totaled, including the header.
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.M.marketValueMoney" attribute value from API response to "TotalMutualFunds" on siebert
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
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "TotalMutualHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalMutualValue" with value "TotalMutualFunds" on siebert
    And Close browser

  Scenario: TC07_Holdings_Verify the current market value of the Options holdings is correctly totaled, including the header.
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.assetTotals.O.marketValueMoney" attribute value from API response to "TotalOptions" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "TotalOptionsHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalOptionsValue" with value "TotalOptions" on siebert
    And Close browser

  Scenario: TC08_Holdings_Verify the current market value of all Total for USD holdings is correctly totaled, including the header.
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.grandTotalMarketValueIA.formatted" attribute value from API response to "TotalUSDCurrentValue" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "TotalUSDHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalUSDCurrentValue" with value "TotalUSDCurrentValue" on siebert
    And Close browser

  Scenario: TC09_Holdings_Verify the current market value of all Total for Account holdings is correctly totaled, including the header.
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.grandTotalMarketValueMoney" attribute value from API response to "TotalAccountValue" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    Then Check "TotalAccountHeader" is displayed
    And Wait for "5" seconds
    Then Assert "[dynamic_value]" is present at "TotalAccountValue" with value "TotalAccountValue" on siebert
    And Close browser

  Scenario: TC10_Holdings_Fetch API and compare with Holdings table
    Given Add API Request body "Login.json"
    Then Add Endpoint "LoginAPIurl"
    Then Execute "POST" API
    Then Print API Response
    Then Verify Status code "200"
    Then Print API Response headers
    Then Save "Authorization" attribute value from API response header to "bearerToken"
    Given Add the Request headers
      | header  | value |
      | Content-Type | application/json |
      | Authorization | token |
    And Update Request headers with "Authorization" as "bearerToken"
    Then Add Endpoint "PositionAPIurl"
    Then Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And save the response value from JSON path "$.responseObject.pagedData.USD.*.*.['symbol','securityDescLine1','priceMoney','marketValueMoney','currency']" as "HoldingsAPI"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    And Extract the data in columns "Asset,Description,Current Price,Current Mkt Value,Currency" from table "HoldingsTable" and store as "HoldingsWebTable"
    Then Verify webtable "HoldingsWebTable" contains API response "HoldingsAPI"
    And Close browser

  Scenario: TC11_Holdings_Click Trade icon in Trade column on Holding screen and verify Trade Icon navigates to Trading screen properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account2"
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "PortfolioMenu"
    Then Check "PortfolioPage" is displayed
    And Click on "HoldingsTab"
    And Wait for "10" seconds
    And Scroll down "EquityPresizedIcon"
    And Wait for "10" seconds
    And Hover and click on "EquityTradeIcon"
    And Wait for "10" seconds
    Then Check "EquityOrderTab" is displayed
    And Close browser