@InvestorPortal-Overview @UIAutomation
Feature: Overview

  # Assets
  Scenario: TC01_Assets_Verify Asset chart header gets displayed in Overview section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    Then Wait for 5 second
    Then Check "AssetsHeader" is displayed
    And Close browser

  # Account Chart Value
  Scenario: TC01_AccountChart_Verify Account chart header is displaying properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "5" seconds
    Then Check "barChartHeader1" is displayed
    Then Print all element texts from "barChartHeader1"
    Then Check "barChartHeader2" is displayed
    Then Print all element texts from "barChartHeader2"
    And Close browser

  Scenario: TC02_AccountChart_Verify the time period is clickable in Account value Pie-Chart
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    When Click on "OverviewMenu"
    And Wait for "2" seconds
    When Click on "oneMonth"
    And Wait for "2" seconds
    Then Check "AccountValueChart" is displayed
    When Click on "oneQuarter"
    And Wait for "2" seconds
    Then Check "AccountValueChart" is displayed
    When Click on "oneYear"
    And Wait for "2" seconds
    Then Check "AccountValueChart" is displayed
    When Click on "TwoYear"
    And Wait for "2" seconds
    Then Check "AccountValueChart" is displayed
    When Click on "oneWeek"
    And Wait for "2" seconds
    Then Check "AccountValueChart" is displayed
    And Close browser

#    Latest News
  Scenario: TC01_Latest News_Verify Latest News header gets displayed in Overview section
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Close browser

  Scenario: TC02_Latest News_Verify the Current day news is properly displayed under Latest news in Overview screen or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Wait for "10" seconds
    And Wait for "10" seconds
    Then Check "FirstNews" is displayed
    And Close browser

  Scenario: TC03_Latest News_Verify the functionality of view all button and check it redirects to next page and check the news are properly visibled or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "5" seconds
    Then Check "AllNews" is displayed
    And Close browser

  Scenario: TC04_Latest News_Verify by tapping on Show Latest button and check Current day news is properly visibled or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "10" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Click on "ShowLatest"
    And Wait for "10" seconds
    And Save data to "Showlatestnews" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is equal to "Showlatestnews"
    And Close browser

  Scenario: TC05_Latest News_Verify when tapping on Overview breadcrumb in view all screen and check it redirects to previous screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "5" seconds
    And Click on "OverviewButton"
    And Check "LatestNews" is displayed
    And Close browser

  Scenario: TC06_Latest News_Verify the pagination by tapping on second page and check while tapping on First page it redirects to first page or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "10" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Click on "FirstButton"
    And Wait for "10" seconds
    And Save data to "FirstpageNews" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is equal to "FirstpageNews"
    And Close browser

  Scenario: TC07_Latest News_Verify the pagination by tapping on second page and check while tapping on Previous page it redirects to previous page or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "5" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Click on "PreviousButton"
    And Wait for "5" seconds
    And Save data to "Showlatestnews" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is equal to "Showlatestnews"
    And Close browser

  Scenario: TC08_Latest News_Verify the pagination by tapping on second page and check while tapping on Next page it redirects to next page or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "10" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Click on "NextButton"
    And Wait for "10" seconds
    And Save data to "ThirdpageNews" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "ThirdpageNews"
    And Close browser

  Scenario: TC09_Latest News_Verify the pagination by tapping on second page and check while tapping on Last page it redirects to Last page or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Wait for "10" seconds
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "5" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Click on "LastButton"
    And Wait for "5" seconds
    And Save data to "LastpageNews" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "LastpageNews"
    And Close browser

  Scenario: TC10_Latest News_Verify the pagination by tapping on second page and check page landed on second page or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Wait for "10" seconds
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "CurrentDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    And Click on "SecondPage"
    And Wait for "10" seconds
    And Save data to "NextDayFirstColumn" from "FirstcolumnNews" with "XPATH" locator
    Then Assert "CurrentDayFirstColumn" is not equal to "NextDayFirstColumn"
    And Close browser

  Scenario: TC11_Latest News_Verify First and Prev button is disabled when the user is on first page
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    Then Check "FirstDisabled" is displayed
    Then Check "PrevDisabled" is displayed
    And Close browser

  Scenario: TC12_Latest News_Verify Next and Last button is disabled when the user is on last page
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Click on "LastButton"
    Then Check "NextDisabled" is displayed
    Then Check "LastDisabled" is displayed
    And Close browser

  Scenario: TC13_Latest News_Click on any news and verify the news article is showing like Preview screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    Then Click on "FirstNews"
    And Wait for "5" seconds
    Then Check "PreviewBody" is displayed
    And Close browser

  Scenario: TC14_Latest News_Verify Read full article hyperlink is showing in news article screen and verify the full article is showing if click on it
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Wait for "10" seconds
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    Then Click on "FirstNews"
    And Wait for "5" seconds
    Then Check "ReadFullArticle" is displayed
    And Click on "ReadFullArticle"
    And Close browser

  Scenario: TC15_Latest News_Verify social media icons are showing in preview article screen and verify it navigates to corresponding social media/email if clicked on it
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    Then Click on "FirstNews"
    And Wait for "10" seconds
    Then Check "SocialMedia" is displayed
    Then Click on "Facebook"
    And Close browser

  Scenario: TC16_Latest News_Verify the full article hyperlink is showing under For further details see in preview article screen and verify it navigates to its corresponding screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    Then Click on "FirstNews"
    And Wait for "10" seconds
    Then Check "ForFurtherDeatils" is displayed
    And Click on "FullArticleHyperlink"
    And Close browser

  Scenario: TC17_Latest News_Verify close icon is showing in preview article screen and verify the screen is closed if clicked on it
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "List1" from "NewsList" with "XPATH" locator
    Then Click on "FirstNews"
    And Wait for "5" seconds
    Then Click on "NewsClose"
    And Save data to "List2" from "NewsList" with "XPATH" locator
    Then Assert "List1" is equal to "List2"
    And Close browser

  Scenario: TC18_Latest News_Verify Latest News for current day is showing correctly in overview screen
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "LatestNews" is displayed
    And Wait for "10" seconds
    And Save data to "List1" from "LatestNewsHomepage" with "XPATH" locator
    And Click on "ViewAllButton"
    And Wait for "10" seconds
    And Save data to "List2" from "LatestNewsHomepage2" with "XPATH" locator
    Then Assert "List1" is equal to "List2"
    And Close browser

  Scenario: TC19_Latest News_Verify latest news gets displayed on other accounts
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    And Wait for "2" seconds
    And Click on "Accountdropdown"
    And Wait for "2" seconds
    And Click on "SelectAnotherAccount"
    And Wait for "2" seconds
    Then Check "LatestNews" is displayed
    Then Check "LatestNewsHomepage" is displayed
    And Close browser

# Account Lists
#  Scenario: TC01_Account Lists_Verify logging into the application, ensure that the following text appears by default on the home screen: Please select an account to access this feature.
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "10" seconds
#    Then Check "HomePage" is displayed
#    Then Check "SelectAccountMsg" is displayed
#    And Close browser

#  Scenario: TC02_Account Lists_Select an specific account from dropdown and verify the selected account number , name and type gets displayed in screen
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "10" seconds
#    Then Check "HomePage" is displayed
#    Then Check "SelectAccountMsg" is displayed
#    And Wait for "2" seconds
#    And Click on "SelectAccount"
#    And Click on "Account1"
#    And Wait for "2" seconds
#    Then Check "AccountConfirmationInHomepage" is displayed
#    And Close browser

#  Scenario: TC03_Account Lists_Verify when logging into the application, ensure that if no account is selected, the application should restrict navigation to other screens.
#    Given Open website "SiebertURL" in "chrome" browser
#    When Enter the value "QAUsername" from property file into "SiebertUsername"
#    And Enter the value "QAPassword" from property file into "SiebertPassword"
#    And Click on "loginbutton"
#    And Wait for "10" seconds
#    Then Check "HomePage" is displayed
#    Then Check "SelectAccountText" is displayed
#    Then Check "SelectAccountMsg" is displayed
#    And Wait for "2" seconds
#    And Click on "PortfolioMenu"
#    Then Check "SelectAccountMsg" is displayed
#    And Close browser

#    Watchlists
  Scenario: TC01_Watchlists_Verify by selecting an Watchlist from dropdown and check applied Watchlist symbols are displaying properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Wait for "5" seconds
#    And Click on "TestWatchlist"
    And Hover and click on "TestWatchlist"
    Then Check "TestWatchlistCheck" is displayed
    And Close browser

  Scenario: TC02_Watchlists_Verify by tapping on Add symbol user can able to search an valid symbol and can able to add it
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    Then Hover and click on "AddSymbol"
    And Enter "MSFT" into "WatchlistSearchBox"
    And Wait for "5" seconds
    Then Hover and click on "Search1stOption"
    And Wait for "10" seconds
    And Print all element texts from "WatchlistsTable"
    Then save all element texts from "WatchlistsTable" as "Watchlist"
    And Wait for "2" seconds
    Then Assert "Watchlist" contains "MSFT"
    And Close browser

  Scenario: TC03_Watchlists_Verify by tapping on Add symbol user can able to search an invalid symbol and check it throws No result found message
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Hover and click on "WatchlistSelectOption"
    And Hover and click on "WELCOMEWatchlist"
    Then lick on "AddSymbol"
    And Enter "AAAAA" into "WatchlistSearchBox"
    And Wait for "2" seconds
    Then Check "NoResultsFound" is displayed
    And Close browser

  Scenario: TC04_Watchlists_Verify the functionality of cancel button in search field box and check it redirects to watchlist screen or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "WELCOMEWatchlist"
    Then Click on "AddSymbol"
    And Enter "AAAAA" into "WatchlistSearchBox"
    And Wait for "10" seconds
    Then Click on "WatchlistCancel"
    Then Check "Watchlists" is displayed
    And Close browser

  Scenario: TC05_Watchlists_Verify the functionality of Refresh button and check it updates properly
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And save all element texts from "WatchlistRefreshButton" as "BeforeRefresh"
    And Wait for "10" seconds
    Then Click on "WatchlistRefreshButton"
    And Wait for "5" seconds
    And save all element texts from "WatchlistRefreshButton" as "AfterRefresh"
    Then Assert "BeforeRefresh" is not equal to "AfterRefresh"
    And Close browser

  Scenario: TC06_Watchlists_Verify by tapping on Edit watchlist page redirects to Remove or Reorder symbols
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    Then Click on "EditWatchlists"
    Then Check "RemoveOrReorder" is displayed
    And Close browser

  Scenario: TC07_Watchlists_Verify by tapping on remove icon and check pop-up asks for yes delete and close button
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "5" seconds
    And Click on "EditWatchlists"
    And Click on "RemoveSymbol"
    Then Check "RemoveMessageOptions" is displayed
    And Close browser

  Scenario: TC08_Watchlists_Verfiy by tapping on Reorder symbol and check symbols gets Reordered
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Wait for "5" seconds
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    And save all element texts from "WatchlistsTable" as "BeforeReorder"
    And Click on "EditWatchlists"
    And Click on "ReorderSymbol"
    Then Click on "BackToWatchlist"
    And Wait for "2" seconds
    And save all element texts from "WatchlistsTable" as "AfterReorder"
    Then Assert "BeforeRefresh" is not equal to "AfterRefresh"
    And Close browser

  Scenario: TC09_Watchlists_Verfiy the functionality by tapping on Yes delete symbol
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    Then Hover and click on "AddSymbol"
    And Enter "CBL" into "WatchlistSearchBox"
    And Wait for "5" seconds
    Then Hover and click on "Search1stOption"
    And save all element texts from "WatchlistsTable" as "BeforeDelete"
    And Wait for "2" seconds
    And Click on "EditWatchlists"
    And Wait for "2" seconds
    And Click on "RemoveCBLsymbol"
    Then Click on "DeleteSymbol"
    And Wait for "2" seconds
    Then Click on "BackToWatchlist"
    And save all element texts from "WatchlistsTable" as "AfterDelete"
    Then Assert "BeforeRefresh" is not equal to "AfterRefresh"
    And Close browser

  Scenario: TC10_Watchlists_Verfiy the functionality by tapping on Close button
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    And Click on "EditWatchlists"
    And Click on "RemoveSymbol"
    And Click on "CloseSymbol"
    And Wait for "2" seconds
    Then Click on "BackToWatchlist"
    And Check "Watchlists" is displayed
    And Close browser

  Scenario: TC11_Watchlists_Verify Settings by tapping on 3 dots and check settings is properly displayed
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    And Click on "3Dot"
    Then Check "WatchlistSettings2" is displayed
    And Close browser

  Scenario: TC12_Watchlists_Verify Settings by tapping on Rename watchlist and check user can able to change to watchlist name or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Wait for "5" seconds
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "5" seconds
    And Click on "3Dot"
    Then Hover and click on "RenameWatchlists"
    And Enter "Watchlist 4" into "RenameTextBox"
    Then Click on "SaveChanges"
    And Wait for "5" seconds
    Then Check "Watchlist4" is displayed
    And Click on "3Dot"
    And Wait for "2" seconds
    Then Click on "RenameWatchlists"
    And Enter "WELCOME" into "RenameTextBox"
    And Wait for "2" seconds
    Then Click on "SaveChanges"
    And Wait for "5" seconds
    #Then Check "WELCOMEWatchlistCheck" is displayed
    And Close browser

  Scenario: TC13_Watchlists_Verify Settings by tapping on Create new watchlist and check user can able to create new watchlist name or not
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "3Dot"
    And Wait for "2" seconds
    Then Hover and click on "CreateWatchlist"
    And Enter "Automation" into "WatchlistTextBox"
    And Wait for "5" seconds
    Then Click on "CreateWatchlistsButton"
    And Check "AutomationWatchlist" is displayed
    And Click on "3Dot"
    And Hover and click on "ManageAllWatchlist"
    And Wait for "2" seconds
    And Click on "AutomationWatchlistRemoveIcon"
    And Wait for "2" seconds
    Then Hover and click on "DeleteWatchlist"
    And Wait for "5" seconds
    And Click on "YesDeleteButton"
    And Close browser

  Scenario: TC14_Watchlists_Verify Created watchlist is displaying on Trading -watchlist
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Hover and click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    Then Check "TestWatchlistCheck" is displayed
    And Click on "TradingMenu"
    And Click on "EquityWatchlist"
    And Wait for "10" seconds
    And Click on "EquityWatchlistDropdown"
    And Click on "TestWatchlist"
    Then Check "TestWatchlistCheck" is displayed
    And Close browser

  Scenario: TC15_Watchlists_Verify that the watchlist screen allows to select only 25 symbols
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "5" seconds
    Then Click on "AddSymbol"
    Then Check "Allows25symbolsOnly" is displayed
    And Close browser

  Scenario: TC16_Watchlists_Verify that the watchlist screen should not allows to select more than 25 symbols
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Hover and click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    Then Check "TestWatchlistCheck" is displayed
    Then Click on "AddSymbol"
    And Enter "HOOD" into "WatchlistSearchBox"
    And Wait for "2" seconds
    Then Hover and click on "Search1stOption"
    And Wait for "5" seconds
    Then Check "WatchlistLimitErrorMessage" is displayed
    And Close browser

  Scenario: TC17_Watchlists_Verify the existing symbol message while adding existing symbols in watchlists
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Click on "WatchlistSelectOption"
    And Hover and click on "TestWatchlist"
    And Wait for "2" seconds
    Then Check "TestWatchlistCheck" is displayed
    Then Hover and click on "AddSymbol"
    And Enter "AAPL" into "WatchlistSearchBox"
    And Wait for "2" seconds
    Then Hover and click on "Search1stOption"
    And Wait for "5" seconds
    Then Check "WatchlistExistingMessage" is displayed
    And Close browser

  Scenario: TC18_Watchlists_Verify that the system shows error message when user create the new watchlists with existing watchlits name
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "10" seconds
    Then Check "Watchlists" is displayed
    And Wait for "2" seconds
    And Click on "3Dot"
    Then Hover and click on "CreateWatchlist"
    And Enter "Test" into "WatchlistTextBox"
    And Wait for "5" seconds
    Then Click on "CreateWatchlistsButton"
    And Wait for "2" seconds
    And Check "ExistingWatchlistName" is displayed
    And Close browser

#Snapshot
  Scenario: TC01_Snapshot_Verify and compare the Snapshot API values with Siebert UI
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
    And Add Endpoint "SnapshotAPIurl"
    Then Print API Endpoint
    When Execute "GET" API
    Then Print API Response
    Then Verify Status code "200"
    And Save "responseObject.cashBalance" attribute value from API response to "AccCashBalance" on siebert
    And Save "responseObject.netEquity" attribute value from API response to "AccTotalEquity" on siebert
    And Save "responseObject.buyingPower" attribute value from API response to "AccBuyingPower" on siebert
    And Save "responseObject.totalMarketValue" attribute value from API response to "AccMarketValue" on siebert
    And Save "responseObject.dailyChange" attribute value from API response to "AccDailyChange" on siebert
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Assert "[dynamic_value]" is present at "HeaderCashBalance" with value "AccCashBalance" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderTotalEquity" with value "AccTotalEquity" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderBuyingPower" with value "AccBuyingPower" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderMarketValue" with value "AccMarketValue" on siebert
    Then Assert "[dynamic_value]" is present at "HeaderDailyChange" with value "AccDailyChange" on siebert
    And Close browser

  Scenario: TC02_Snapshot_Verify that the MarQ lines displaying Show list of all Accounts icon
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "OverviewMenu"
    And Wait for "2" seconds
    Then Check "QmodMarqLines" is displayed
    And Close browser











