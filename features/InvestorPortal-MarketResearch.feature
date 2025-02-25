@InvestorPortal-MarketResearch @UIAutomation
Feature: Market Research

#Overview
  Scenario: TC01_MarketResearch_In get quote search valid symbol or company, applied filters and verify searched symbol or company displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    And Enter "AAPL" into "getquotesearchbox"
    And Wait for "5" seconds
    And Check "getquotesymbolfirstoption" is displayed
    And Save data to "symbolcheck" from "getquotesymbolfirstoption" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "symbolcheck" contains "AAPL"
    And Close browser

  Scenario: TC02_MarketResearch_Verify searched symbol redirects to next page and check searched symbol contains symbol,profile,chart,news,analyst,earning analysis,financials,fillings,insiders,historical,events
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    And Enter "AAPL" into "getquotesearchbox"
    And Wait for "5" seconds
    And Click on "getquotesymbolfirstoption"
    And Wait for "5" seconds
    And Save data to "Symbolsummarypage" from "Symbolsummary" with "XPATH" locator
    Then Assert "Symbolsummarypage" contains "Profile"
    Then Assert "Symbolsummarypage" contains "Chart"
    Then Assert "Symbolsummarypage" contains "News"
    Then Assert "Symbolsummarypage" contains "Analyst"
    Then Assert "Symbolsummarypage" contains "Earning Analysis"
    Then Assert "Symbolsummarypage" contains "Financials"
    Then Assert "Symbolsummarypage" contains "Filings"
    Then Assert "Symbolsummarypage" contains "Insiders"
    Then Assert "Symbolsummarypage" contains "Historical"
    Then Assert "Symbolsummarypage" contains "Events"
    Then Close browser

  Scenario: TC03_MarketResearch_Verify current news are displaying by datewise and verify by clicking on any news it opens as new pop-up
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Firstnews"
    And Wait for "2" seconds
    Then Check "Newspopup" is displayed
    Then Close browser

  Scenario: TC04_MarketResearch_Verify the pagination for Current news is working properly or not by tapping on first,prev,next and last button
    Given Open website "SiebertURL" in "chrome" browser
    When Enter "admin" into "SiebertUsername"
    And Enter "Siebert@123" into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "8" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "10" seconds
    And Save data to "1stPage" from "Newspage1" with "XPATH" locator
    And Click on "newsnext"
    And Wait for "8" seconds
    And Save data to "2ndPage" from "Newspage2" with "XPATH" locator
    Then Assert "1stPage" is not equal to "Newspage2"
    And Wait for "20" seconds
    And Hover and click on "newsprevious"
    And Wait for "10" seconds
    Then Assert "2ndPage" is not equal to "1stPage"
    And Wait for "5" seconds
    And Hover and click on "newslast"
    And Wait for "8" seconds
    And Save data to "LastPage" from "Newspagelast" with "XPATH" locator
    And Wait for "8" seconds
    And Click on "FirtPagenewsButton"
    And Wait for "8" seconds
    And Save data to "1stPage" from "Newspage1" with "XPATH" locator
    Then Assert "LastPage" is not equal to "1stPage"
    And Close browser

  Scenario: TC05_MarketResearch_Verify bar chart is displaying with the symbol name under Key Info section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "25" seconds
    And Click on "Keyinfo"
    Then Wait for "2" seconds
    Then Check "Keyinfobarchart" is displayed
    And Close browser

  Scenario: TC06_MarketResearch_Verify pie-chart is displaying for all sectors under Sector Performance section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Check "Piechart" is displayed
    And Save data to "Sectors" from "Allsectors" with "XPATH" locator
    Then Assert "Sectors" contains "Industrials"
    Then Assert "Sectors" contains "Materials"
    Then Assert "Sectors" contains "Consumer Discretionary"
    Then Assert "Sectors" contains "Healthcare"
    Then Assert "Sectors" contains "Financial Services"
    Then Assert "Sectors" contains "Consumer Staples"
    Then Assert "Sectors" contains "Real Estate"
    Then Assert "Sectors" contains "Utilities"
    Then Assert "Sectors" contains "Energy"
    Then Assert "Sectors" contains "Telecom Services"
    Then Assert "Sectors" contains "Technology"
    Then Close browser

#Markets
  Scenario: TC07_MarketResearch_Verify Earnings and Dividends Calendar is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Marketstab"
    And Wait for "5" seconds
    Then Check "Earningcalendar" is displayed
    Then Check "DividendsCalendar" is displayed
    Then Close browser

  Scenario: TC08_MarketResearch_Verify sector performance with pie chart and % Price Change percentage is displayed correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Marketstab"
    And Wait for "8" seconds
    Then Check "Sectorpreformancepiechart" is displayed
    Then Close browser

    #News
  Scenario: TC9_MarketResearch_Verify latest news are showing on the top with date under Recent news section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Newstab"
    And Wait for "8" seconds
    Then Check "latestnews" is displayed
    Then Close browser

  Scenario: TC10_MarketResearch_Verify News by selecting any type under topics section and check applied news is getting displayed correctly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Newstab"
    And Wait for "5" seconds
    Then Check "latestnews" is displayed
    And Wait for "5" seconds
    And Save data to "Economynews" from "latestnews" with "XPATH" locator
    And Wait for "8" seconds
    Then Click on "Finance"
    And Wait for "15" seconds
    And Save data to "Financenews" from "Financenewspage" with "XPATH" locator
    And Wait for "15" seconds
    Then Assert "Economynews" is not equal to "Financenews"
    Then Close browser

  Scenario: TC11_Search with specific date and verify the corresponding news is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Newstab"
    And Wait for "5" seconds
    And Enter "2024-09-05" into "Fromdate"
    And Wait for "5" seconds
    And Enter "2024-09-06" into "Todate"
    And Wait for "5" seconds
    Then Click on "ShowResult2"
    And Wait for "5" seconds
    Then Check "SpecificdateNews" is displayed
    Then Close browser

  Scenario: TC12_MarketResearch_Click on Show Latest and verify the latest news is showing
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Newstab"
    And Wait for "5" seconds
    Then Click on "ShowResult"
    And Wait for "5" seconds
    Then Check "Showlatestnews" is displayed
    Then Close browser

  Scenario: TC13_MarketResearch_Verify the pagination is working fine for Recent news
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Newstab"
    And Wait for "10" seconds
    And Save data to "1stPage" from "newspage1" with "XPATH" locator
    And Wait for "10" seconds
    And Hover and click on "NewsNext"
    And Wait for "8" seconds
    And Save data to "2ndPage" from "newspage2" with "XPATH" locator
    Then Assert "1stPage" is not equal to "newspage2"
    And Wait for "15" seconds
    And Click on "Newsprevious"
    And Wait for "10" seconds
    Then Assert "2ndPage" is not equal to "1stPage"
    And Wait for "5" seconds
    And Click on "Newslast"
    And Wait for "8" seconds
    And Save data to "LastPage" from "newspagelast" with "XPATH" locator
    And Wait for "10" seconds
    And Click on "firtPagenewsButton"
    And Wait for "8" seconds
    And Save data to "1stPage" from "newspage1" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "LastPage" is not equal to "1stPage"
    Then Close browser

#Trends
  Scenario: TC14_MarketResearch_Verify the corresponding details are showing under Trending stocks
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Trendstab"
    And Wait for "2" seconds
    Then Check "Trendingstocks" is displayed
    Then Close browser

  Scenario: TC15_MarketResearch_Verify Sorting working properly or not for each field under Trending stocks and  Active stocks
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Trendstab"
    And Wait for "5" seconds
    Then Click on "TrendingstocksortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "descending order" for the "Trendingstocksort" column "Symbol"
    And Wait for "2" seconds
    And Click on "TrendingstocksortIcon"
    Then verify sorted records in "ascending order" for the "Trendingstocksort" column "Symbol"
    And Wait for "5" seconds
    Then Click on "ActivestocksortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "Activestocksort" column "Symbol"
    And Wait for "2" seconds
    And Click on "ActivestocksortIcon"
    Then verify sorted records in "descending order" for the "Activestocksort" column "Symbol"
    And Close browser

  Scenario: TC16_MarketResearch_Verify the corresponding details are showing under Active stocks
    Given Open website "SiebertURL" in "chrome" browser
    When Enter "admin" into "SiebertUsername"
    And Enter "Siebert@123" into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Trendstab"
    And Wait for "10" seconds
    Then Check "Activestocks" is displayed
    Then Close browser

  Scenario: TC17_MarketResearch_Verify the corresponding details are showing under Market momentum for NYSE (NYE) symbol,NYSE AMERICAN (AMX) symbol and NASDAQ (NSD) symbol
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Trendstab"
    And Wait for "2" seconds
    Then Check "NYSE" is displayed
    And Wait for "2" seconds
    Then Check "AMX" is displayed
    And Wait for "2" seconds
    Then Check "NSD" is displayed
    And Close browser

  Scenario: TC18_MarketResearch_Verify current news are displaying by datewise and verify by clicking on any news it opens as new pop-up
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Trendstab"
    And Wait for "5" seconds
    Then Check "Morenews" is displayed
    And Wait for "3" seconds
    Then Hover and click on "Newsarticle"
    And Wait for "2" seconds
    Then Close browser

  #Equities
  Scenario: TC19_MarketResearch_Verify the functionality of search by searching any symbol or company and check applied filter is showing properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Equities"
    And Wait for "5" seconds
    And Enter "SAP" into "searchbox"
    And Wait for "5" seconds
    And Check "symbolfirstoption" is displayed
    And Save data to "symbolcheck" from "symbolfirstoption" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "symbolcheck" contains "SAP"
    And Close browser

  Scenario: TC20_MarketResearch_Verify searched symbol redirects to next page and check searched symbol contains symbol,profile,chart,news,analyst,earning analysis,financials,fillings,insiders,historical,events
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Equities"
    And Wait for "2" seconds
    And Enter "SAP" into "searchbox"
    And Wait for "5" seconds
    And Click on "symbolfirstoption"
    And Wait for "5" seconds
    And Save data to "Symbolsummarypage" from "summary2" with "XPATH" locator
    Then Assert "Symbolsummarypage" contains "Profile"
    Then Assert "Symbolsummarypage" contains "Chart"
    Then Assert "Symbolsummarypage" contains "News"
    Then Assert "Symbolsummarypage" contains "Analyst"
    Then Assert "Symbolsummarypage" contains "Earning Analysis"
    Then Assert "Symbolsummarypage" contains "Financials"
    Then Assert "Symbolsummarypage" contains "Filings"
    Then Assert "Symbolsummarypage" contains "Insiders"
    Then Assert "Symbolsummarypage" contains "Historical"
    Then Assert "Symbolsummarypage" contains "Events"
    Then Close browser

  Scenario: TC21_MarketResearch_Verify Top performers for Top and Bottom type graph chart is showing correctly for the selected time period
    Given Open website "SiebertURL" in "chrome" browser
    When Enter "admin" into "SiebertUsername"
    And Enter "Siebert@123" into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Equities"
    And Wait for "5" seconds
    And Click on "Marketdropdown"
    Then Check "Dropdownmenu" is displayed
    And Wait for "2" seconds
    And Click on "Dropdownmenu2"
    And Wait for "2" seconds
    And Click on "Dropdownmenu2"
    Then Check "Dropdownoptions" is displayed
    And Wait for "2" seconds
    And Click on "Afterhours"
    And Wait for "5" seconds
    Then Check "Topgraph" is displayed
    And Click on "Bottomtab"
    And Wait for "2" seconds
    Then Check "Bottomgraph" is displayed
    Then Close browser

  Scenario: TC22_MarketResearch_Verify the NASDAQ,NYSE,NYSE American,CSE pure,ALPHA options are displaying in dropdown for Markets section and verify the corresponding details are showing if select any of the options
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Equities"
    And Wait for "5" seconds
    And Click on "Marketdropdown"
    And Wait for "2" seconds
    Then Check "Dropdownmenu" is displayed
    And Wait for "2" seconds
    And Save data to "Top1" from "NASDAQTOP" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "Dropdownoption2"
    And Wait for "2" seconds
    And Save data to "Top2" from "NYSETOP" with "XPATH" locator
    Then Assert "Top1" is not equal to "Top2"
    Then Close browser

  Scenario: TC23_MarketResearch_Verify the graph is displaying correctly by selecting $ and % symbol
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Equities"
    And Wait for "5" seconds
    Then Click on "Dollars"
    Then Check "Topgraph" is displayed
    Then Click on "Percentage"
    And Click on "Bottomtab"
    And Wait for "2" seconds
    Then Check "Bottomgraph" is displayed
    Then Close browser

  Scenario: TC24_MarketResearch_Verify all the fundamentals are properly displayed under Top performers graph or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Equities"
    And Wait for "5" seconds
    And Check "Fundamentals" is displayed
    Then Close browser

  Scenario: TC25_MarketResearch_Verify Sorting working properly or not for each field under Fundamentals table and Price info table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "10" seconds
    Then Click on "Equities"
    And Wait for "8" seconds
    And Press "PageDown" key for "0" times
    Then Click on "FundamentalsortIcon"
    And Wait for "2" seconds
    Then Click on "FundamentalsortIcon"
    And Wait for "5" seconds
    Then verify sorted records in "descending order" for the "FundamentalsTable" column "Symbol"
    And Wait for "2" seconds
    And Click on "FundamentalsortIcon"
    Then verify sorted records in "ascending order" for the "FundamentalsTable" column "Symbol"
    And Wait for "5" seconds
    Then Hover and click on "PriceinfoEquity"
    And Wait for "5" seconds
    Then Check "Priceinfodata" is displayed
    Then Click on "PriceinfosortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "Priceinfosort" column "Symbol"
    And Wait for "2" seconds
    And Click on "PriceinfosortIcon"
    Then verify sorted records in "descending order" for the "Priceinfosort" column "Symbol"
    And Close browser

  Scenario: TC26_MarketResearch_Verify all the Price info are properly displayed under Top performers graph or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Equities"
    And Wait for "10" seconds
    Then Hover and click on "Priceinfo"
    And Wait for "5" seconds
    Then Check "Priceinfodata" is displayed
    Then Close browser

  Scenario: TC27_MarketResearch_Verify Earnings Calendar is displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "Equities"
    And Wait for "2" seconds
    Then Check "Equityearningcalender" is displayed
    Then Close browser

#ETF's
  Scenario: TC28_MarketResearch_Verify the functionality of search by searching any symbol or company and check applied filter is showing properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "ETFs"
    And Wait for "8" seconds
    And Enter "AAPL" into "EtfSearchbox"
    And Wait for "5" seconds
    And Check "firstsymbol" is displayed
    And Save data to "symbolcheck" from "getquotesymbolfirstoption" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "symbolcheck" contains "AAPL"
    And Close browser

  Scenario: TC29_MarketResearch_Verify searched symbol redirects to next page and check searched symbol contains symbol,profile,chart,news,analyst,earning analysis,financials,fillings,insiders,historical,events
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "ETFs"
    And Wait for "8" seconds
    And Enter "AAPL" into "EtfSearchbox"
    And Wait for "5" seconds
    And Click on "symbolfirstoption1"
    And Wait for "5" seconds
    And Save data to "Symbolsummarypage" from "summary3" with "XPATH" locator
    Then Assert "Symbolsummarypage" contains "Profile"
    Then Assert "Symbolsummarypage" contains "Chart"
    Then Assert "Symbolsummarypage" contains "News"
    Then Assert "Symbolsummarypage" contains "Analyst"
    Then Assert "Symbolsummarypage" contains "Earning Analysis"
    Then Assert "Symbolsummarypage" contains "Financials"
    Then Assert "Symbolsummarypage" contains "Filings"
    Then Assert "Symbolsummarypage" contains "Insiders"
    Then Assert "Symbolsummarypage" contains "Historical"
    Then Assert "Symbolsummarypage" contains "Events"
    Then Close browser

  Scenario: TC30_MarketResearch_Verify Top performers for Top and Bottom type graph chart is showing correctly for the selected time period
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    And Click on "Marketdropdown2"
    Then Check "Dropdownmenu" is displayed
    And Wait for "2" seconds
    And Click on "Dropdownmenu2"
    And Wait for "2" seconds
    And Click on "Dropdownmenu2"
    Then Check "Dropdownoptions" is displayed
    And Wait for "2" seconds
    And Click on "Afterhours"
    Then Check "Topgraph" is displayed
    And Click on "Bottomtab"
    And Wait for "2" seconds
    Then Check "Bottomgraph" is displayed
    Then Close browser

  Scenario: TC31_MarketResearch_Verify the NASDAQ,NYSE,NYSE American,CSE pure,ALPHA options are displaying in dropdown for Markets section and verify the corresponding details are showing if select any of the options
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    And Click on "Marketdropdown"
    And Wait for "2" seconds
    Then Check "Dropdownmenu" is displayed
    And Wait for "2" seconds
    And Save data to "Top1" from "NASDAQTOP" with "XPATH" locator
    And Wait for "2" seconds
    And Click on "Dropdownoption2"
    And Wait for "2" seconds
    And Save data to "Top2" from "NYSETOP" with "XPATH" locator
    Then Assert "Top1" is not equal to "Top2"
    Then Close browser

  Scenario: TC32_MarketResearch_Verify the graph is displaying correctly by selecting $ and % symbol
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "MarketResearchMenu"
    And Wait for "8" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    Then Click on "Dollars"
    Then Check "Topgraph" is displayed
    Then Click on "Percentage"
    And Click on "Bottomtab"
    And Wait for "2" seconds
    Then Check "Bottomgraph" is displayed
    Then Close browser

  Scenario: TC33_MarketResearch_Verify all the fundamentals are properly displayed under Top performers graph or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "2" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    And Check "Fundamentals2" is displayed
    Then Close browser

  Scenario: TC34_Verify Sorting working properly or not for each field under Fundamentals table , ETF performer table , Price info table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    And Hover and click on "FundamentalsortIcon"
    Then verify sorted records in "ascending order" for the "FundamentalsTable" column "Symbol"
    And Wait for "5" seconds
    Then Hover and click on "PriceinfoEquity"
    And Wait for "5" seconds
    Then Check "Priceinfodata" is displayed
    Then Click on "PriceinfosortIcon"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "Priceinfosort" column "Symbol"
    And Wait for "2" seconds
    And Click on "PriceinfosortIcon"
    Then verify sorted records in "descending order" for the "Priceinfosort" column "Symbol"
    Then Click on "ETFPerformersorticon"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "ETFbestperformertable" column "Symbol"
    And Wait for "2" seconds
    And Click on "ETFPerformersorticon"
    Then verify sorted records in "descending order" for the "ETFbestperformertable" column "Symbol"
    Then Hover and click on "ETFPerformersorticon2"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "ETFWorstperformertable" column "Symbol"
    And Wait for "2" seconds
    And Click on "ETFPerformersorticon2"
    Then verify sorted records in "descending order" for the "ETFWorstperformertable" column "Symbol"
    And Close browser

  Scenario: TC35_MarketResearch_Verify all the Price info are properly displayed under Top performers graph or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "10" seconds
    And Press "PageDown" key for "0" times
    Then Click on "PriceInfoETF"
    And Wait for "5" seconds
    Then Check "PriceinfodataETF" is displayed
    Then Close browser

  Scenario: TC36_MarketResearch_Verify ETF performers table is properly displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "2" seconds
    And Check "ETFperformerstable" is displayed
    Then Close browser

  Scenario: TC37_Verify ETF table by choosing country type as US flag and Canada flag
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "ETFs"
    And Wait for "5" seconds
    And Hover and click on "Canadaflag"
    And Wait for "5" seconds
    And Save data to "Canada" from "CanadaETFPerformance" with "XPATH" locator
    And Wait for "5" seconds
    And Hover and click on "USflag"
    And Wait for "5" seconds
    And Save data to "US" from "USETFPerformance" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "US" is not equal to "Canada"
    Then Close browser
#Funds
  Scenario: TC38_Verify the functionality of search by searching any symbol or company and check applied filter is showing properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Funds"
    And Wait for "2" seconds
    And Enter "AAPL" into "getquotesearchbox"
    And Wait for "5" seconds
    And Check "getquotesymbolfirstoption" is displayed
    And Save data to "symbolcheck" from "getquotesymbolfirstoption" with "XPATH" locator
    And Wait for "2" seconds
    Then Assert "symbolcheck" contains "AAPL"
    And Close browser

  Scenario: TC39_Verify searched symbol redirects to next page and check searched symbol contains symbol,profile,chart,news,analyst,earning analysis,financials,fillings,insiders,historical,events
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Funds"
    And Wait for "2" seconds
    And Enter "AAPL" into "getquotesearchbox"
    And Wait for "5" seconds
    And Click on "getquotesymbolfirstoption"
    And Wait for "5" seconds
    And Save data to "Symbolsummarypage" from "Symbolsummary" with "XPATH" locator
    Then Assert "Symbolsummarypage" contains "Profile"
    Then Assert "Symbolsummarypage" contains "Chart"
    Then Assert "Symbolsummarypage" contains "News"
    Then Assert "Symbolsummarypage" contains "Analyst"
    Then Assert "Symbolsummarypage" contains "Earning Analysis"
    Then Assert "Symbolsummarypage" contains "Financials"
    Then Assert "Symbolsummarypage" contains "Filings"
    Then Assert "Symbolsummarypage" contains "Insiders"
    Then Assert "Symbolsummarypage" contains "Historical"
    Then Assert "Symbolsummarypage" contains "Events"
    Then Close browser

  Scenario: TC40_Verify Mutual funds performer table is properly displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Funds"
    And Wait for "5" seconds
    And Check "MutualFundsperformerstable" is displayed
    Then Close browser

  Scenario: TC41_Verify Mutual fund performer table by choosing country type as US flag and Canada flag
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Funds"
    And Wait for "5" seconds
    And Hover and click on "Canadaflag"
    And Wait for "5" seconds
    And Save data to "Canada" from "CanadaETFPerformance" with "XPATH" locator
    And Wait for "5" seconds
    And Hover and click on "USflag"
    And Wait for "5" seconds
    And Save data to "US" from "USETFPerformance" with "XPATH" locator
    And Wait for "5" seconds
    Then Assert "US" is not equal to "Canada"
    Then Close browser

  Scenario: TC42_Verify Sorting working properly or not for each field under Mutual fund Best performer table and Mutual fund Worst performer table
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Wait for "5" seconds
    And Click on "MarketResearchMenu"
    And Wait for "5" seconds
    Then Click on "Funds"
    And Wait for "5" seconds
    Then Click on "ETFPerformersorticonFunds"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "ETFbestperformertable" column "Symbol"
    And Wait for "2" seconds
    And Click on "ETFPerformersorticonFunds"
    Then verify sorted records in "descending order" for the "ETFbestperformertable" column "Symbol"
    Then Hover and click on "ETFPerformersorticonFunds2"
    And Wait for "2" seconds
    Then verify sorted records in "ascending order" for the "ETFWorstperformertable" column "Symbol"
    And Wait for "2" seconds
    And Click on "ETFPerformersorticonFunds2"
    Then verify sorted records in "descending order" for the "ETFWorstperformertable" column "Symbol"
    And Close browser