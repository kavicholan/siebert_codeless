@InvestorPortal-AccountProfile @UIAutomation
Feature: Account Profile

  Scenario: TC01_Account Profile_Verify all Subtabs are present and it is in same order as per figma
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountProfileMenu"
    And Wait for "2" seconds
    Then Check "AccountProfileMenuOrder" is displayed
    And Close browser

  Scenario: TC02_Account Profile_Fetch data from BroadRidge API and verify field level validation on Account Information
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
    Given Add API Request body "AcountProfile.json"
    And Print API Request headers
    And Add Endpoint "AccountProfile"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Save "responseObject.profileQueryModel.shortName" attribute value from API response to "ShortName"
    And Save "responseObject.profileQueryModel.mailingAddress" attribute value from API response to "mailingAddress"
    And Save "responseObject.profileQueryModel.homePhone" attribute value from API response to "homePhone"
    And Save "responseObject.profileQueryModel.investmentObjective" attribute value from API response to "investmentObjective"
    And Save "responseObject.profileQueryModel.investmentExperience" attribute value from API response to "investmentExperience"
    And Save "responseObject.profileQueryModel.riskToleranceHigh" attribute value from API response to "riskToleranceHigh"
    And Save "responseObject.profileQueryModel.riskToleranceMed" attribute value from API response to "riskToleranceMed"
    And Save "responseObject.profileQueryModel.riskToleranceLow" attribute value from API response to "riskToleranceLow"
    And Save "responseObject.profileQueryModel.incomePct" attribute value from API response to "incomePct"
    And Save "responseObject.profileQueryModel.capitalApprecialPct" attribute value from API response to "capitalApprecialPct"
    And Save "responseObject.profileQueryModel.speculativeTradingPct" attribute value from API response to "speculativeTradingPct"
    And Save "responseObject.userEmailAddress" attribute value from API response to "userEmailAddress"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountProfileMenu"
    And Wait for "20" seconds
    And Save Runtime value to "AccProfShortName" from "AccProfShortName" with "XPATH" locator
    And Save Runtime value to "AccProfName" from "AccProfName" with "XPATH" locator
    And Save Runtime value to "AccProfhomePhone" from "AccProfhomePhone" with "XPATH" locator
    And Save Runtime value to "AccProfinvestmentObjective" from "AccProfinvestmentObjective" with "XPATH" locator
    And Save Runtime value to "AccProfinvestmentExperience" from "AccProfinvestmentExperience" with "XPATH" locator
    And Save Runtime value to "AccProfriskToleranceHigh" from "AccProfriskToleranceHigh" with "XPATH" locator
    And Save Runtime value to "AccProfriskToleranceMed" from "AccProfriskToleranceMed" with "XPATH" locator
    And Save Runtime value to "AccProfriskToleranceLow" from "AccProfriskToleranceLow" with "XPATH" locator
    And Save Runtime value to "AccProfincomePct" from "AccProfincomePct" with "XPATH" locator
    And Save Runtime value to "AccProfcapitalApprecialPct" from "AccProfcapitalApprecialPct" with "XPATH" locator
    And Save Runtime value to "AccProfspeculativeTradingPct" from "AccProfspeculativeTradingPct" with "XPATH" locator
    And Save Runtime value to "AccProfuserEmailAddress" from "AccProfuserEmailAddress" with "XPATH" locator
    Then Assert "ShortName" is equal to "AccProfShortName"
    Then Assert "mailingAddress" is equal to "AccProfName"
    Then Assert "homePhone" is equal to "AccProfhomePhone"
    Then Assert "investmentObjective" is equal to "AccProfinvestmentObjective"
#    Then Assert "investmentExperience" is equal to "AccProfinvestmentExperience"
    Then Assert "riskToleranceHigh" is equal to "AccProfriskToleranceHigh"
    Then Assert "riskToleranceMed" is equal to "AccProfriskToleranceMed"
    Then Assert "riskToleranceLow" is equal to "AccProfriskToleranceLow"
#    Then Assert "incomePct" is equal to "AccProfincomePct"
#    Then Assert "capitalApprecialPct" is equal to "AccProfcapitalApprecialPct"
#    Then Assert "speculativeTradingPct" is equal to "AccProfcapitalApprecialPct"
    Then Assert "userEmailAddress" is equal to "AccProfuserEmailAddress"
    And Close browser

  Scenario: TC03_Account Profile_Fetch data from BroadRidge API and verify field level validation on AgreementInformation
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
    Given Add API Request body "AcountProfile.json"
    And Print API Request headers
    And Add Endpoint "AccountProfile"
    And Print API Endpoint
    And Print API Request body
    When Execute "POST" API
    And Print API Response
    Then Verify Status code "200"
    And Save "responseObject.profileQueryModel.loanAgreementFlag" attribute value from API response to "loanAgreementFlag"
    And Save "responseObject.profileQueryModel.corpResolutionLoanFlag" attribute value from API response to "corpResolutionLoanFlag"
    And Save "responseObject.profileQueryModel.knowYourCustomerFlag" attribute value from API response to "knowYourCustomerFlag"
    And Save "responseObject.profileQueryModel.trustAgreementFlag" attribute value from API response to "trustAgreementFlag"
    And Save "responseObject.profileQueryModel.jointAgreementFlag" attribute value from API response to "jointAgreementFlag"
    And Save "responseObject.profileQueryModel.optionTradingFlag" attribute value from API response to "optionTradingFlag"
    And Save "responseObject.profileQueryModel.discretionaryAccountFlag" attribute value from API response to "discretionaryAccountFlag"
    And Save "responseObject.profileQueryModel.cashAgreementOnFileFlag" attribute value from API response to "cashAgreementOnFileFlag"
    And Save "responseObject.profileQueryModel.marginAgreementOnFileFlag" attribute value from API response to "marginAgreementOnFileFlag"
    And Save "responseObject.profileQueryModel.attorneyPaperFlag" attribute value from API response to "attorneyPaperFlag"
    And Save "responseObject.profileQueryModel.newAccountFlag" attribute value from API response to "newAccountFlag"
    And Save "responseObject.profileQueryModel.optionPurchaseFlag" attribute value from API response to "optionPurchaseFlag"
    And Save "responseObject.profileQueryModel.optionCoveredWritingFlag" attribute value from API response to "optionCoveredWritingFlag"
    And Save "responseObject.profileQueryModel.optionNakedWritingFlag" attribute value from API response to "optionNakedWritingFlag"
    And Save "responseObject.profileQueryModel.optionNakedPutsFlag" attribute value from API response to "optionNakedPutsFlag"
    And Save "responseObject.profileQueryModel.optionSpreadingFlag" attribute value from API response to "optionSpreadingFlag"
    And Save "responseObject.profileQueryModel.dividendInstructions" attribute value from API response to "dividendInstructions"
    And Save "responseObject.profileQueryModel.buyInstructions" attribute value from API response to "buyInstructions"
    And Save "responseObject.profileQueryModel.sellInstructions" attribute value from API response to "sellInstructions"
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountProfileMenu"
    And Wait for "10" seconds
    And Click on "AgreementInformation"
    And Wait for "2" seconds
    Then Assert "[dynamic_value]" is present at "AccProfLoan" with value "loanAgreementFlag"
    Then Assert "[dynamic_value]" is present at "AccProfCorpResLoan" with value "corpResolutionLoanFlag"
    Then Assert "[dynamic_value]" is present at "AccProfKnowYourCustomer" with value "knowYourCustomerFlag"
    Then Assert "[dynamic_value]" is present at "AccProfTrust" with value "trustAgreementFlag"
    Then Assert "[dynamic_value]" is present at "AccProfJoint" with value "jointAgreementFlag"
    Then Assert "[dynamic_value]" is present at "AccProfOptionTrading" with value "optionTradingFlag"
    Then Assert "[dynamic_value]" is present at "AccProfDiscretionaryAccount" with value "discretionaryAccountFlag"
    Then Assert "[dynamic_value]" is present at "AccProfCash" with value "cashAgreementOnFileFlag"
    Then Assert "[dynamic_value]" is present at "AccProfMargin" with value "marginAgreementOnFileFlag"
    Then Assert "[dynamic_value]" is present at "AccProfAttorneyPaper" with value "attorneyPaperFlag"
    Then Assert "[dynamic_value]" is present at "AccProfNewAccount" with value "newAccountFlag"
    Then Assert "[dynamic_value]" is present at "AccProfPurchase" with value "optionPurchaseFlag"
    Then Assert "[dynamic_value]" is present at "AccProfCoveredWriting" with value "optionCoveredWritingFlag"
    Then Assert "[dynamic_value]" is present at "AccProfNakedWriting" with value "optionNakedWritingFlag"
    Then Assert "[dynamic_value]" is present at "AccProfSpreads" with value "optionNakedPutsFlag"
    Then Assert "[dynamic_value]" is present at "AccProfProspectusMailed" with value "optionSpreadingFlag"
    Then Assert "[dynamic_value]" is present at "AccProfApproved" with value "dividendInstructions"
    Then Assert "[dynamic_value]" is present at "AccProfDividendInterestPay" with value "sellInstructions"
    Then Assert "[dynamic_value]" is present at "AccProfNOOptionTrading" with value "buyInstructions"
    And Close browser

  Scenario: TC04_Account Profile_Verify SubHeaders on account Profile
    Given Open website "SiebertURL" in "chrome" browser
    When Enter the value "QAUsername" from property file into "SiebertUsername"
    And Enter the value "QAPassword" from property file into "SiebertPassword"
    And Click on "loginbutton"
    And Wait for "10" seconds
    Then Check "HomePage" is displayed
    And Click on "SelectAccount"
    And Click on "Account1"
    And Wait for "2" seconds
    Then Check "HomePage" is displayed
    And Wait for "2" seconds
    Then Check "InvestorPortalPage" is displayed
    And Click on "AccountProfileMenu"
    And Wait for "5" seconds
    Then Check "ACCProfAccountInformation" is displayed
    Then Check "ACCProfSuitabilityInformations" is displayed
    Then Check "ACCProfEmailAddress" is displayed
    Then Check "ACCProfYTDStatistics" is displayed
    Then Check "ACCProfCurrentYear" is displayed
    Then Check "ACCProfPreviousYear" is displayed
    And Click on "AgreementInformation"
    And Wait for "2" seconds
    Then Check "ACCProfAccountAgreements" is displayed
    Then Check "ACCProfSettlementInstructions" is displayed
    Then Check "ACCProfOtherAgreements" is displayed
    And Close browser


