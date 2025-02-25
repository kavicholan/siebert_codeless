package stepDefinition;

import baseClass.APIUtility;
import baseClass.BaseClass;
import com.github.fge.jsonschema.core.exceptions.ProcessingException;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.json.simple.parser.ParseException;
import org.junit.Assert;
import org.openqa.selenium.WebElement;

import javax.mail.MessagingException;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import static baseClass.APIUtility.*;
import static baseClass.FileUtility.Excelvalueretrieve;
import static baseClass.FileUtility.readCSVData;
import static baseClass.GRPC.connectChannel;
import static baseClass.GRPC.downloadftp;
public class BaseStepDefinition extends BaseClass {
    @Given("Open website {string} in {string} browser")
    public void userLauncheApplication(String url, String browser) throws Throwable {
        loadProperty();
        browserlaunch(url, browser);
        System.out.println("  *****  Browser Launched  *****");
    }
    @Then("Enter {string} into {string}")
    public void enter_text_textfield(String value, String field) throws Throwable {
        enterText(locatorstowebelement(getProperty(field)), value);
        System.out.println("  *****  Value Entered  *****");
    }

    @Then("Enter credential {string} into {string}")
    public void enter_credential_textfield(String value, String field) throws Throwable {
        enterText(locatorstowebelement(getProperty(field)), getProperty(value));
        System.out.println("  *****  Credentials Entered  *****");
    }

    @Then("Click on {string}")
    public void click_field(String field) throws Throwable {
        click(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Clicked  *****");
    }

    @Then("user click the {string} field through js")
    public void js_click_field(String field) throws Throwable {
        jsClick(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Clicked through JS  *****");
    }

    @Then("Scroll down {string}")
    public void scroll_field_up(String field) throws Throwable {
        scrollToElement(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Scroll Down completed  *****");
    }

    @Then("Scroll up {string}")
    public void scroll_field_down(String field) throws Throwable {
        scrollToElementDown(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Scroll Up completed  *****");
    }

    @Then("Take {string} screenshot")
    public void screenshot_field(String name) throws Throwable {
        takeSnapShot(name + ".png");
        System.out.println("  *****  Screenshot taken  *****");
    }

    @Then("Upload {string} file in {string}")
    public void upload_field(String filepath, String field) throws Throwable {
        fileupload(locatorstowebelement(getProperty(field)), System.getProperty("user.dir") + File.separator + "Assets" + File.separator + filepath);
        System.out.println("  *****  File Upload completed  *****");
    }

    @Then("Hover and upload {string} file in {string}")
    public void hover_and_upload_file(String filepath, String field) {
        hoverAndUploadFile(locatorstowebelement(getProperty(field)), System.getProperty("user.dir") + File.separator + "Assets" + File.separator + filepath);
        System.out.println("  *****  Hover on element and click verified  *****");
    }

    @Then("select {string} into {string}")
    public void dropdown(String value, String field) throws Throwable {
        selectDropdownOption(locatorstowebelement(getProperty(field)), value);
        System.out.println("  *****  Dropdown value selected  *****");
    }

    @Then("Navigate backward")
    public void navigate_back() {
        navigateBack();
        System.out.println("  *****  Backward Navigation Completed  *****");
    }

    @Then("Navigate forward")
    public void navigate_forward() {
        navigateForward();
        System.out.println("  *****  Forward Navigation Completed  *****");
    }

    @Then("Reload")
    public void page_reload() {
        reload_page();
        System.out.println("  *****  Reload Completed  *****");
    }

    @Then("Maximize window")
    public void maximize_window() {
        maximizeWindow();
        System.out.println("  *****  Window Maximized  *****");
    }

    @Then("Fullscreen")
    public void fullscreen_window() {
        fullScreenWindow();
        System.out.println("  *****  Fullscreen Enabled  *****");
    }

    @Then("Navigate to {string} url")
    public void navigate_to_url(String url) {
        navigateTo(url);
        System.out.println("  *****  Navigation to URL Completed  *****");
    }

    @Then("Clear text from {string}")
    public void clear_the_text(String field) throws Throwable {
        clearText(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Text Cleared  *****");
    }

    @Then("Clear data from {string}")
    public void clear_the_text_from_custom_format(String field) throws Throwable {
        clearTextInCustomDropdown(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Text Cleared  *****");
    }

    @Then("Clear data using JS from {string}")
    public void clear_the_text_from_js(String field) throws Throwable {
        clearTextUsingJS(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Text Cleared  *****");
    }

    @Then("Set the Window Size {string}, {string}")
    public void set_window_size(String width, String height) {
        setWindowSize(width, height);
        System.out.println("  *****  Set Window Size Completed  *****");
    }

    @Then("Set the Window Position {string}, {string}")
    public void set_window_position(String xcoor, String ycoor) {
        setWindowPosition(xcoor, ycoor);
        System.out.println("  *****  Set Window Position Completed  *****");
    }

    @Then("Quit browser")
    public void quit_browser() {
        quitBrowser();
        System.out.println("  *****  Browser Quit Done  *****");
    }

    @Then("Switch to iframe with frame id {string}")
    public void switch_to_iframe_with_id(String field) {
        switchToIframeWithId(field);
        System.out.println("  *****  Switched to Frame with ID  *****");
    }

    @Then("Switch to iframe with frame index {string}")
    public void switch_to_iframe_with_index(String index) {
        switchToIframeWithIndex(index);
        System.out.println("  *****  Switched to Frame with Index  *****");
    }

    @Then("Switch to default content")
    public void switch_to_default() {
        switchToDefault();
        System.out.println("  *****  Switched to Default  *****");
    }

    @Then("Wait for 2 second")
    public void two_seonds_wait() throws Throwable {
        wait2Sec();
        System.out.println("  *****  Two Seconds Wait Completed  *****");
    }

    @Then("Wait for 3 second")
    public void three_seconds_wait() throws Throwable {
        wait3Sec();
        System.out.println("  *****  Three Seconds Wait Completed  *****");
    }

    @Then("Wait for 5 second")
    public void five_seconds_wait() throws Throwable {
        wait5Sec();
        System.out.println("  *****  Five Seconds Wait Completed  *****");
    }

    @Then("Wait for 10 second")
    public void ten_seconds_wait() throws Throwable {
        wait10Sec();
        System.out.println("  *****  Ten Seconds Wait Completed  *****");
    }

    @Then("Wait for 50 second")
    public void fifty_seconds_wait() throws Throwable {
        wait50Sec();
        System.out.println("  *****  Fifty Seconds Wait Completed  *****");
    }

    @Then("Assert {string} to actual title")
    public void assert_page_title(String expected_title) {
        assertPageTitle(expected_title);
        System.out.println("  *****  Page Title Verified  *****");
    }

    @Then("Print Page title in console")
    public void print_page_title() {
        printPageTitle();
        System.out.println("  *****  Page Title Printed in Console  *****");
    }

    @Then("Assert {string} is present at {string}")
    public void assert_element_text(String text, String field) throws Throwable {
        assertElementText(locatorstowebelement(getProperty(field)), text);
        System.out.println("  *****  Static Data Assertion Verified  *****");
    }

    @Then("Assert {string} is present at {string} with value {string}")
    public void assert_element_text_with_dynamic_data(String text, String field, String variable) throws Throwable {
        assertTextWithDynamicValue(locatorstowebelement(getProperty(field)), text,variable);
        System.out.println("  *****  Dynamic Data Assertion Verified  *****");
    }

    @Then("Assert {string} is present at {string} with value {string} on siebert")
    public void assert_element_text_with_dynamic_datasiebert(String text, String field, String variable) throws Throwable {
        assertTextWithDynamicValueSiebert(locatorstowebelement(getProperty(field)), text,variable);
        System.out.println("  *****  Dynamic Data Assertion Verified  *****");
    }

    @Then("Assert dynamic data {string} is present at {string}")
    public void assert_element_text_from_map(String variable, String field) throws Throwable {
        assertElementTextFromMap(locatorstowebelement(getProperty(field)), variable);
        System.out.println("  *****  String value present Verified  *****");
    }

    @Then("Assert {int} is present at {string}")
    public void assert_element_integer(int number, String field) throws Throwable {
        assertElementInteger(locatorstowebelement(getProperty(field)), number);
        System.out.println("  *****  Integer value present Verified  *****");
    }

    @Then("Check {string} is displayed")
    public void assert_element_is_displayed(String field) throws Throwable {
        assertElementDisplayed(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Displayed is Verified  *****");
    }

    @Then("Check {string} is enabled")
    public void assert_element_is_enabled(String field) throws Throwable {
        assertElementEnabled(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Enabled is verified  *****");
    }

    @Then("Check {string} is selected")
    public void assert_element_is_selected(String field) throws Throwable {
        assertElementSelected(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Selected is verified  *****");
    }

    @Then("Implicit Wait {int}")
    public void implicit_wait(int seconds) {
        implicitWait(seconds);
        System.out.println("  *****  Implicit Wait verified  *****");
    }

    @Then("Hover on {string}")
    public void hover_on_field(String field) {
        hoverOnElement(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Hover on element verified  *****");
    }

    @Then("Hover and click on {string}")
    public void hover_click_field(String field) throws InterruptedException {
        hoverAndClickElement(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Hover on element and click verified  *****");
    }

    @Then("Clear files in {string}")
    public void clear_files(String location) throws IOException {
        clearfiles(location);
        System.out.println("  *****  Clear files verified  *****");
    }

    @Then("Wait for invisible element {string}")
    public void wait_for_invisible_element(String locators) throws Throwable {
        waitForinvisibleElement(locators);
        System.out.println("  *****  Wait for invisible element verified  *****");
    }

    @Then("Wait for visible element {string}")
    public void wait_for_visible_element(String locators) throws Throwable {
        waitForvisibleElement(locators);
        System.out.println("  *****  Wait for visible element verified  *****");
    }

    @Then("Wait for element visibility {string}")
    public void wait_for_element_visibility(String field) throws Throwable {
        waitForElementVisibility(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Wait for element visibility verified  *****");
    }

    @Then("Fluent Wait seconds {int} for {string}")
    public void fluent_wait(int seconds, String field) {
        fluentWait(locatorstowebelement(getProperty(field)), seconds);
        System.out.println("  *****  Fluent Wait seconds verified  *****");
    }

    @Then("Element {string} is displayed")
    public void is_element_displayed(String field) throws Throwable {
        isElementDisplayed(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Display is verified  *****");
    }

    @Then("Element {string} is enabled")
    public void is_element_enabled(String field) throws Throwable {
        isElementEnabled(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Enabled is verified  *****");
    }

    @Then("Locate {string} with {string} locator")
    public void locate_the_element_with_locator(String field, String locatorType) {
        locateWebElementWithDifferentLocators(field, locatorType);
        System.out.println("  *****  Locate the element with locator is verified  *****");
    }

    @Then("Assert Alert text {string}")
    public void assert_alert_text(String text) {
        assertAlertText(text);
        System.out.println("  *****  Alert text is verified  *****");
    }

    @Then("Accept Alert")
    public void accept_alert() {
        acceptAlert();
        System.out.println("  *****  Alert Accepted  *****");
    }

    @Then("Dismiss Alert")
    public void dismiss_alert() {
        dismissAlert();
        System.out.println("  *****  Alert Dismissed  *****");
    }


    @Then("Check {string} is displayed with {string} locator")
    public void assert_element_is_displayed_with_locator(String field, String locatorType) throws Throwable {
        assertElementDisplayed(locateWebElementWithDifferentLocators(getProperty(field), locatorType));
        System.out.println("  *****  Element Displayed with Locator is verified  *****");
    }

    @Then("Check {string} is enabled with {string} locator")
    public void assert_element_is_enabled_with_locator(String field, String locatorType) throws Throwable {
        assertElementEnabled(locateWebElementWithDifferentLocators(getProperty(field), locatorType));
        System.out.println("  *****  Element Enabled with Locator is verified  *****");
    }

    @Then("Check {string} is selected with {string} locator")
    public void assert_element_is_selected_with_locator(String field, String locatorType) throws Throwable {
        assertElementSelected(locateWebElementWithDifferentLocators(getProperty(field), locatorType));
        System.out.println("  *****  Element Selected with Locator is verified  *****");
    }


    @Then("Click {string} with {string} locator")
    public void click_element_with_element_locator(String field, String locatorType) throws Throwable {
        click(locateWebElementWithDifferentLocators(getProperty(field), locatorType));
        System.out.println("  *****  Element Click with Locator is verified  *****");
    }


    @Then("Hover and Click {string} with {string} locator")
    public void hover_and_click_element_with_element_locator(String field, String locatorType) throws Throwable {
        hoverAndClickElement(locateWebElementWithDifferentLocators(getProperty(field), locatorType));
        System.out.println("  *****  Element Hover and Click with Locator is verified  *****");
    }

    @Then("Close browser")
    public void close_the_browser() {
        closeBrowser();
        System.out.println("  *****  Browser closed  *****");
    }

    @Then("Check {string} dropdown option count is {int}")
    public void assert_dropdown_option_list_count(String field, int size) throws Throwable {
        assertDropDownOptionListCount(locatorstowebelement(getProperty(field)), size);
        System.out.println("  *****  Dropdown option count is verified  *****");
    }

    @Then("Print dropdown option {string} size in console")
    public void print_dropdown_option_list_count(String field) throws Throwable {
        printDropDownOptionListCount(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Dropdown option size is printed in console  *****");
    }

    @Then("Print all dropdown options {string} in console")
    public void dropdown_list(String field) throws Throwable {
        listOfDropdown(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Dropdown option count is printed in console  *****");
    }

    @Then("Print window position in console")
    public void get_position() throws Throwable {
        getLocation();
        System.out.println("  *****  Window position is printed in console  *****");
    }

    @Then("Print dimension in console")
    public void get_size() throws Throwable {
        getSize();
        System.out.println("  *****  Window size is printed in console  *****");
    }

    @Then("Print tag name {string} in console")
    public void get_tagName(String field) throws Throwable {
        getTagName(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Tagname is printed in console  *****");
    }

    @Then("Drag {string} and drop {string}")
    public void dragAndDrop(String field1, String field2) throws Throwable {
        dragAndDrop(locatorstowebelement(getProperty(field1)), locatorstowebelement(getProperty(field2)));
        System.out.println("  *****  Drag and Drop is completed  *****");
    }

    @Then("Drag and drop in Frames {string}")
    public void dragAndDropInFrames(int index, String field1, String field2) throws Throwable {
        dragAndDropInFrames(index, locatorstowebelement(getProperty(field1)), locatorstowebelement(getProperty(field2)));
    }

    @Then("Right click on {string}")
    public void right_click(String field) throws Throwable {
        rightClick(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Right click on element is completed  *****");
    }

    @Then("Double click on {string}")
    public void double_click(String field) throws Throwable {
        doubleClick(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Double click on element is completed  *****");
    }

    @Then("Enter {string} value using action class {string}")
    public void enter_values(String text, String field) throws Throwable {
        enterValuesUsingActionClass(locatorstowebelement(getProperty(field)), text);
        System.out.println("  *****  Values Entered using action class  *****");}

    @Then("Convert text {string} to uppercase for {string} field")
    public void convert_to_uppercase(String text, String field) throws Throwable {
        convertTextToUpperCase(locatorstowebelement(getProperty(field)), text);
        System.out.println("  *****  Upper case converted  *****");
    }

    @Then("scroll page up with keyboard")
    public void scroll_up() throws Throwable {
        scrollPageUp();
        System.out.println("  *****  Page scroll up with keyboard completed  *****");
    }

    @Then("scroll page down with keyboard")
    public void scroll_down() throws Throwable {
        scrollPageDown();
        System.out.println("  *****  Page scroll down with keyboard completed  *****");
    }

    @Then("Check alert is present")
    public void alert_present_or_not() throws Throwable {
        isAlertPresent();
        System.out.println("  *****  Alert present is verified  *****");
    }

    @Then("Enter value in alert {string}")
    public void send_values_in_popup_alert(String text) throws Throwable
    {
        sendValuesInPopupAlert(text);
        System.out.println("  *****  Entered value in alert input box  *****");
    }

    @Then("Accept timer alert")
    public void accept_timer_alert() throws Throwable {
        timerAlertButton();
        System.out.println("  *****  Timer alert accepted  *****");
    }

    @Then("Get Window Handles")
    public void get_the_window_handles()
    {
        getWindowHandles();
    }

    @Then("Switch to the new window")
    public void switch_to_new_window() {
        switchToNewWindow();
        System.out.println("  *****  Switched to new window  *****");
    }

    @Then("Switch back to the original window")
    public void switch_back_to_original_window() {
        switchBackToOriginalWindow();
        System.out.println("  *****  Switched back to original window  *****");
    }

    @Then("select {string} type and option {string} from dropdown {string}")
    public void select_Dropdown_Value(String type, String value, String field) throws Throwable {
        selectDropdownValue(locatorstowebelement(getProperty(field)),type,value);
        System.out.println("  *****  Dropdown value is selected  *****");
    }

    @Then("Enter random email in {string}")
    public void enter_random_email(String field) throws Exception {
        enterText(locatorstowebelement(getProperty(field)),randommailgenerator(8));
        System.out.println("  *****  Random email entered  *****");
    }

    @Then("Enter random string in {string}")
    public void enter_random_string(String field) throws Exception {
        enterText(locatorstowebelement(getProperty(field)),randomstringgenerator(12));
        System.out.println("  *****  Random string entered  *****");
    }

    @Then("Enter random number in {string}")
    public void enter_random_number(String field) throws Exception {
      enterText(locatorstowebelement(getProperty(field)), randomnumbergenerator(10));
        System.out.println("  *****  Random number entered  *****");
    }

    @Then("Explicit wait for {string} in {string} seconds")
    public void explicit_wait(String field, String seconds) throws InterruptedException {
        waitForTheElement(locatorstowebelement(getProperty(field)),Integer.parseInt(seconds));
        System.out.println("  *****  Explicit wait verified  *****");
    }

    @Then("Check for multiple option selection for dropdown {string}")
    public void multiple_dropdown_option_selection_check(String field)
    {
        multipleOptionSelectionCheck(locatorstowebelement(field));
        System.out.println("  *****  Multiple option dropdown verified  *****");
    }

    @Then("Click and hold and element {string} with {string} locator")
    public void click_and_hold_on_element(String field, String locatorType)
    {
        clickAndHoldOnElement(locateWebElementWithDifferentLocators(getProperty(field),locatorType));
        System.out.println("  *****  Click and Hold Element verified  *****");
    }

    @Then ("Enter {string} into {string} using javascript and {string} locator")
    public static void enter_text_using_js(String value, String field, String locatorType) throws InterruptedException {
        jstypetext(locateWebElementWithDifferentLocators(getProperty(field),locatorType),value);
        System.out.println("  *****  Enter text using javascript verified  *****");
    }

    @Then("Convert text {string} to lowercase for {string} field")
    public void convert_to_lowercase(String text, String field) throws Throwable {
        convertTextToUpperCase(locatorstowebelement(getProperty(field)), text);
        System.out.println("  *****  Lower case conversion verified  *****");
    }

    @Then("Send the current date {string} in {string} format")
    public void send_current_date_with_format(String field, String format)
    {
        getcurrentdatewithformat(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Current date  *****");
    }

    @Then("Send previous working date {string} in {string} format")
    public void send_previous_working_date(String field, String format)
    {
        sendPreviousWorkingDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Previous working date  *****");
    }

    @Then("Send previous weekend date {string} in {string} format")
    public void send_previous_weekend_date(String field, String format)
    {
        sendPreviousWeekendDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Previous weekend date  *****");
    }

    @Then("Custom click {string} with {string} locator")
    public void custom_click(String field, String locatorType)
    {
        customClick(locateWebElementWithDifferentLocators(getProperty(field),locatorType));
        System.out.println("  *****  Custom Click Done  *****");
    }

    @Then("Highlight element {string} with {string} locator")
    public void highlight_element(String field, String locatorType)
    {
        highlightElement(locateWebElementWithDifferentLocators(getProperty(field),locatorType));
        System.out.println(" *****  Element Highlighted  *****");
    }

    @Then("Connect DB with {string}, {string}, {string}")
    public void connect_db(String host, String username, String password) throws IOException {
        connectDB(host,username,password);
        System.out.println(" *****  DB Connected  *****");
    }

    @Then("Execute Query {string}")
    public void execute_query(String query) throws SQLException {
        executequery(getProperty(query));
        System.out.println(getProperty(query));
        System.out.println(" *****  Query Executed  *****");
    }

//    @Then("Convert text {string} to lowercase for {string} field")
//    public void convert_to_lowercase(String text, String field) throws Throwable {
//        convertTextToLowerCase(locatorstowebelement(getProperty(field)), text);
//        System.out.println(" *****  Lower case converted  *****");
//    }

    @Then("Get number of links and images in the page")
    public void Get_number_of_links_images_in_the_page(){
        getAllLinks();
        getAllImageLinks();
        System.out.println(" *****  Links and Imaged Printed  *****");
    }

    @Then("Send Keys {string} using Actions into {string}")
    public void send_keys_using_actions(String value, String field) throws Throwable {
        actionsSendKeys(locatorstowebelement(getProperty(field)), value);
        System.out.println(" *****  Value Entered USing Actions class *****");
    }

    @Then("Click on {string} using Actions class")
    public void click_using_actions(String field) throws Throwable {
        actionsClick(locatorstowebelement(getProperty(field)));
        System.out.println(" *****  Element Clicked Using Actions class  *****");
    }

    @Then("Print all element texts from {string}")
    public void print_element_text(String value) throws Throwable {
        printElementText(getProperty(value));
        System.out.println(" *****  Element Text Printed  *****");
    }

    @Then("save all element texts from {string} as {string}")
    public void Save_element_text(String locator, String Variable) throws Throwable {
        saveElementText(getProperty(locator),Variable);
        System.out.println(" *****  Element Texts Saved  *****");
    }

    @Then("Get element count {string}")
    public void get_element_count(String value) throws Throwable {
        getElementCount(getProperty(value));
        System.out.println(" *****  Element Count retrieved  *****");
    }

    @Then("Get element {string} attribute list {string}")
    public void get_element_count(String value, String index) throws Throwable {
        getElementAttributeList(getProperty(value), index);
        System.out.println(" *****  Element Attribute retrieved  *****");
    }

    @Then("Press Enter using SendKeys for {string}")
    public void press_enter_using_sendkeys(String field) throws Throwable {
        pressEnterUsingSendKeys(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Enter key Pressed  *****");
    }

    @Then("Send Last Friday date {string} in {string} format")
    public void send_last_friday_date(String field, String format)
    {
        sendLastFridayDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Last Friday date  *****");
    }

    @Then("Send Previous Date Of Last Friday date {string} in {string} format")
    public void send_previous_date_of_last_friday_date(String field, String format)
    {
        sendPreviousDateOfLastFridayDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Previous Date Of Last Friday date  *****");
    }

    @Then("Send Last Saturday date {string} in {string} format")
    public void send_last_saturday_date(String field, String format)
    {
        sendLastSaturdayDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Last Saturday date  *****");
    }

    @Then("Send Last Sunday date {string} in {string} format")
    public void send_last_sunday_date(String field, String format)
    {
        sendLastSundayDate(locatorstowebelement(getProperty(field)),format);
        System.out.println("  *****  Entered Last Sunday date  *****");
    }

    @Then("Get OTP using {string}, {string}, {string}, {string}, {string} and {string}")
    public void search_email_for_otp(String username, String password, String subject, String sender_email, String otp_text, String otp_length) throws IOException, MessagingException {
        fetch_otp(getProperty(username),getProperty(password),getProperty(subject),getProperty(sender_email),getProperty(otp_text),getProperty(otp_length));
        System.out.println("  *****  OTP Fetch completed  *****");
    }

    @Then("Pass OTP to {string} with {string} locator")
    public void pass_otp_number(String field, String locatorType) throws InterruptedException {
        enterOtp(locateWebElementWithDifferentLocators(getProperty(field),locatorType));
        System.out.println("  *****  OTP Passed To Input Field  *****");
    }

    @Then("Print Page Title with JS Executor")
    public void print_page_title_with_js_executor()
    {
        printTitleByJS();
        System.out.println("  *****  Page Title printed with Javascript Executor  *****");
    }

//    @Then("Assert Page Title is present with JS Executor")
//    public void assert_page_title_is_present_with_js_executor()
//    {
//        System.out.println("  *****  Page Title presence verified with Javascript Executor  *****");
//    }

    @Then("Assert Page Title {string} with JS Executor")
    public void assert_page_title_is_present_with_js_executor(String expected_title)
    {
        assertTitleByJS(expected_title);
        System.out.println("  *****  Page Title verfied with Javascript Executor  *****");
    }

    @Then("Change page background color {string} using JS")
    public void change_page_background_color(String color)
    {
        changePageBackgroundColour(color);
        System.out.println("  *****  Page Background color changed with Javascript Executor  *****");
    }

    @Then("Change background color {string} for {string} with {string} locator using JS")
    public void change_background_color(String color, String field, String locatorType)
    {
        changeColour(locateWebElementWithDifferentLocators(getProperty(field),locatorType),color);
        System.out.println("  *****  Background color changed with Javascript Executor  *****");
    }

    @Then("Change random background color for {string} with {string} locator using JS")
    public void change_random_background_color(String field, String locatorType) throws Throwable {
        flash(locateWebElementWithDifferentLocators(getProperty(field),locatorType));
        System.out.println("  *****  Background color changed with Javascript Executor  *****");
    }

    @Then("Scroll Page down height with JS")
    public void scroll_page_down_with_height()
    {
        scrollPageDownWithScrollHeight();
        System.out.println("  *****  Scroll Down completed  *****");
    }

    @Then("Scroll Page down {string} height with JS")
    public void scroll_page_down_with_specific_height(String height)
    {
        scrollPageDownWithSpecificHeight(height);
        System.out.println("  *****  Scroll Down completed  *****");
    }

    @Then("Scroll Page Up height with JS")
    public void scroll_page_up_with_height()
    {
        scrollPageUpWithHeight();
        System.out.println("  *****  Scroll Up completed  *****");
    }

    @Then("Refresh browser through js")
    public void js_refresh_browser( ) throws Throwable {
        refreshBrowserByJS();
        System.out.println("  *****  Refresh the browser through JS  *****");
    }

    @Then("Navigate To {string} using JS")
    public void js_navigateTo(String url) throws Throwable {
        navigateToByJS(url);
        System.out.println("  *****  Navigated to the URL through JS  *****");
    }

    @Then("Print Webpage URL using JS")
    public void js_get_url( ) throws Throwable {
        getURLbyJS();
        System.out.println("  *****  URL Printed through JS  *****");
    }

    @Then("Generate alert message {string} using JS")
    public void generate_alert_message_js(String messageText) throws Throwable {
        generateAlertUsingJS(messageText);
        System.out.println("  *****  Generated alert message using JS  *****");
    }

    @Then("Print Inner text using JS")
    public void js_get_innerText( ) throws Throwable {
        getPageInnerText();
        System.out.println("  *****  Inner Text Printed Through JS  *****");
    }

    @Then("Get Title using JS")
    public void js_get_title( ) throws Throwable {
        getTitleByJS();
        System.out.println("  *****  Page Title Printed Through JS  *****");
    }

    @Then("Select {string} from dropdown {string}")
    public static void customDropdown(String option, String field) throws InterruptedException {
        selectCustomDropdownOption(locatorstowebelement(getProperty(field)),option);
    }

    @Then("Select {string} from dropdown {string} with delay")
    public static void customDropdownWithDealy(String option, String field) throws InterruptedException {
        selectCustomDropdownOptionWithDelay(locatorstowebelement(getProperty(field)),option);
    }

    @Then("Get text from element {string}")
    public static void getTextFromElement(String locator) throws InterruptedException {
        System.out.println("locator:"+locator);
        getTextMethod(getProperty(locator));
        System.out.println("***Dialog box text is printed*******");
    }

    @Then("Check {string} is disabled")
    public void assert_element_is_disabled(String field) throws Throwable {
        assertElementDisabled(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Element Disabled is verified  *****");
    }

    @Then("Search generated unique name in dropdown {string}")
    public void retrieve_static_name_with_dynamic_number(String field) throws Throwable {
        retrieveStaticNameWithDynamicNumber(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Unique User name searched in dropdown  *****");
    }

    @Then("Save data to {string} from {string} with {string} locator")
    public void save_the_data(String variable, String field, String locatorType)
    {
        saveData(variable,locateWebElementWithDifferentLocators(getProperty(field),locatorType).getText());
    }

    @Then("Retrieve data from {string} and enter into {string} with {string} locator")
    public void retrieve_data(String variable, String field, String locatorType) throws InterruptedException {
//        retrieveData(variable,locateWebElementWithDifferentLocators(getProperty(field),locatorType))
        enterText(locateWebElementWithDifferentLocators(getProperty(field),locatorType),retrieveData(variable));
    }

    @Then("Press ENTER key")
    public void pressEnter()
    {
        pressEnterKey();
        System.out.println("  *****  Enter Key Pressed  *****");
    }

    @Then("Press TAB key")
    public void pressTab()
    {
        pressTabKey();
        System.out.println("  *****  Tab Key Pressed  *****");
    }

    @Then("Press BACKSPACE key")
    public void pressBackspace() {
        pressBackspaceKey();
        System.out.println("  *****  Backspace Key Pressed  *****");
    }

    @Then("Press DOWN key")
    public void pressDown(){
        pressDownkey();
        System.out.println("  *****  Down Key Pressed  *****");
    }

    @Then("Press UP ARROW key")
    public void pressUpArrow(){
        pressUpArrowKey();
        System.out.println("  *****  Up Arrow Key Pressed  *****");
    }

    @Then("Press DOWN ARROW key")
    public void pressDownArrow() {
        pressDownArrowKey();
        System.out.println("  *****  Down Arrow Key Pressed  *****");
    }

    @Then("Press ENTER from {string}")
    public void pressEnter(String field) {
        pressEnterKeyWithInput(locatorstowebelement(getProperty(field)));
        System.out.println("  *****  Enter Key Pressed  *****");
    }

    @Then("Press BACKSPACE key for {string} times")
    public void pressBackspaceForNtimes(String count) {
        pressBackspaceKeyForNTimes(count);
        System.out.println("  *****  Backspace Key Pressed  *****");
    }

    @Then("Press ENTER key for {string} times")
    public void pressEnterForNtimes(String count) {
        pressEnterKeyForNTimes(count);
        System.out.println("  *****  Enter Key Pressed  *****");
    }

    @Then("Press TAB key for {string} times")
    public void pressTabForNtimes(String count) {
        pressTabKeyForNTimes(count);
        System.out.println("  *****  Tab Key Pressed  *****");
    }

    @Then("Press DOWN key for {string} times")
    public void pressDownForNtimes(String count) {
        pressDownkeyForNTimes(count);
        System.out.println("  *****  Down Key Pressed  *****");
    }

    @Then("Press UP ARROW key for {string} times")
    public void pressUpArrowForNtimes(String count){
        pressUpArrowKeyForNTimes(count);
        System.out.println("  *****  Up Arrow Key Pressed  *****");
    }

    @Then("Press DOWN ARROW key for {string} times")
    public void pressDownArrowForNtimes(String count) {
        pressDownArrowKeyForNTimes(count);
        System.out.println("  *****  Down Arrow Key Pressed  *****");
    }

    @Given("Launch mobile application")
    public void userLauncheApplication() throws Throwable {
        launchMobileApp();
    }

    @Then("Validate schema {string}")
    public void validateSchema(String schemaFilepath) throws IOException, ProcessingException {
        String jsonData = APIUtility.resp.asPrettyString();
        validateJsonSchema(jsonData,schemaFilepath);
        System.out.println("  *****  Schema Validated against Json Response *****");
    }

    @Then("Validate schema {string} against Json file {string}")
    public void validateSchemaFromJsonFile(String schemaFilepath, String responseFile) throws IOException, ProcessingException {
        String jsonData = new String(Files.readAllBytes(Paths.get(responseFile)));
        validateJsonSchema(jsonData,schemaFilepath);
        System.out.println("  *****  Schema Validated against Json Response from File  *****");
    }

    @Then("Enter {string} with coordinates {string},{string}")
    public void enterDataWithCoordinates(String text, String xcor,String ycor) throws InterruptedException {
        enter_data_with_coordinates(text,xcor,ycor);
        System.out.println("  *****  Value Entered  *****");
    }

    @Then("Press at {string},{string}")
    public void touchOnScreen(String xcor,String ycor) throws InterruptedException {
        locate_element_with_coordinates(xcor,ycor);
        System.out.println("  *****  Element Located with coordinates  *****");
    }

    @Then("Tap at {string},{string}")
    public void tapOnScreen(String xcor,String ycor) throws InterruptedException {
        tap_on_element(xcor,ycor);
        System.out.println("  *****  Tap on Element done  *****");
    }

    @Then("Long Press at {string},{string}")
    public void longPressOnScreen(String xcor,String ycor) throws InterruptedException {
        long_press_on_element(xcor,ycor);
        System.out.println("  *****  Long Press on Element done  *****");
    }

    @Then("Move To at {string},{string}")
    public void moveToOnScreen(String xcor,String ycor) throws InterruptedException {
        move_to_element(xcor,ycor);
        System.out.println("  *****  Move to on Element done  *****");
    }

    @Then("Hide keyboard")
    public void hideKeyboard() {
        hide_keyboard();
        System.out.println("  *****  Hide Keyboard done  *****");
    }

    @Then("Search header {string} and value {string} from table {string}")
    public void searchFilterData(String columnName, String variable, String field) throws InterruptedException {
        search_filter_data(columnName,variable,getProperty(field));
        System.out.println("  *****  Web table data with Filter applied validation completed  *****");
    }

    @Then("Save data {string} to {string}")
    public void saveDataToVariable(String text, String variable) {
        save_data_to_variable(variable,text);
        System.out.println("  *****  Value stored to a variable  *****");
    }

    @Then("Clear data from variable")
    public void clearDataFromVariable() {
        clear_data_from_variable();
        System.out.println("  *****  Value cleared from a variable  *****");
    }

    @Then("Scroll down with {string}")
    public void scroll(String point) throws InterruptedException {
        scrollScreen(point);
        System.out.println("  *****  Scroll down done  *****");
    }

    @Then("Save Runtime value to {string} from {string} with {string} locator")
    public void get_run_time_value(String variable, String field, String locatorType) {
        getRunTimeValue(locateWebElementWithDifferentLocators(getProperty(field),locatorType),variable);
        System.out.println("  *****  Runtime value stored to variable  *****");
    }

    @Then("Data Validation {string} with {string}")
    public void excelValidation(String field, String action) throws InterruptedException, AWTException {
//        excel_webtable_data_validation(getProperty(field),action);
        System.out.println("  *****  Web table data with Filter applied validation completed  *****");
    }

    @Then("Web table data Validation {string},{string},{string}, with {string} against downloaded file")
    public void excelValidation(String field1,String field2, String field3, String action) throws InterruptedException, AWTException {
        excel_webtable_data_validation(getProperty(field1),getProperty(field2),getProperty(field3),action);
        System.out.println("  *****  Web table data with Filter applied validation completed  *****");
    }

    @Then("Zoom out for {string}")
    public void zoomout(String percentage) {
        zoom_out(percentage);
    }

    @Then("Zoom in for {string}")
    public void zoomin(String percentage){
        zoom_in(percentage);
    }

    @Then("Web table sorting data Validation for {string} column with {string},{string},{string} and {string}")
    public void sortingValidation(String column,String field1,String field2, String field3, String action) throws InterruptedException, AWTException {
        table_row_data_order_validation(column,getProperty(field1),getProperty(field2),getProperty(field3),action);
        System.out.println("  *****  Web table data against downloaded file validation completed  *****");
    }

    @Then("Retrieve data from {string} and enter into dropdown {string} with {string} locator")
    public void retrieveDataAndEnterToDropdown(String variable, String field, String locatorType) throws InterruptedException {
        enter_dynamic_value_to_dropdown(variable,locateWebElementWithDifferentLocators(getProperty(field),locatorType));
    }

    @Then("Retrieve data from {string} and enter into dropdown {string} with {string} locator and delay")
    public void retrieveDataAndEnterToDropdownWithDelay(String variable, String field, String locatorType) throws InterruptedException {
        enter_dynamic_value_to_dropdown_with_delay(locateWebElementWithDifferentLocators(getProperty(field),locatorType), variable);
    }

    @Then("Store the table row count to {string} with {string},{string}")
    public void tableRowCount(String variable,String field1,String field2) throws InterruptedException {
        table_row_count(getProperty(field1),getProperty(field2),variable);
        System.out.println("  *****  Table row count stored  *****");
    }

    @Then("Compare the table row count from {string} with {string},{string}")
    public void compareTableRowCount(String variable,String field1,String field2) throws InterruptedException {
        compare_table_row_count(getProperty(field1),getProperty(field2),variable);
        System.out.println("  *****  Row count value compared  *****");
    }

    @Then("Validate {string} is present in dropdown {string}")
    public void validateDropdowonOption(String variable,String field1) throws InterruptedException {
        check_option_availale_in_dropdown(locatorstowebelement(getProperty(field1)),variable);
        System.out.println("  *****  Drop down option presence verified  *****");
    }

    @Then("Validate {string} is present in dropdown {string} with option {string}")
    public void validateDropdowonOption(String variable,String field1, String field2) throws InterruptedException {
        check_option_availale_in_custom_dropdown(locatorstowebelement(getProperty(field1)),getProperty(field2),variable);
        System.out.println("  *****  Custom Drop down option presence verified  *****");
    }

    @Then("Add the Request headers")
    public void updateHeaders(DataTable table) throws Throwable {
        header.clear();
        storeheaders(table);
        System.out.println("  *****  API Request Headers added   *****");
    }

    @Then("Update Request headers with {string} and {string}")
    public void updateRequestHeaders(String key, String value) throws Throwable {
        update_request_headers(key,value);
        System.out.println("  *****  API Request Headers Updated with value   *****");
    }

    @Then("Update Request headers with {string} as {string}")
    public void update_request_headersAs(String key, String value) throws Throwable {
        update_request_headersas(key,value);
        System.out.println("  *****  API Request Headers Updated with value   *****");
    }

    @Then("Print API Request headers")
    public void printAPIRequestHeaders() throws Throwable {
        print_headers();
        System.out.println("  *****  API Request Headers printed   *****");
    }

    @Then("Print API Response")
    public void printAPIResponse() throws Throwable {
        print_api_response();
        System.out.println("  *****  API Response printed   *****");
    }

    @Then("Save {string} attribute value from API response")
    public void saveAttributeValue(String response_attribute) throws Throwable {
        save_attribute_value_from_response(response_attribute);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("Execute {string} API")
    public void executeApi(String action) throws Throwable {
        api_request(action);
        System.out.println("  *****  API Executed   *****");
    }

    @Then("Add API Request body {string}")
    public void addRequestBody(String request) throws Exception {
        add_request_body(request);
        System.out.println("  *****  API Request Body added   *****");
    }

    @Then("Print API Request body")
    public void printRequestBody() throws IOException, ParseException {
        print_request_body();
        System.out.println("  *****  API Request Body Printed   *****");
    }

    @Then("Update API Request body with {string}")
    public void updateRequestBodyWithData(String variable) throws IOException, ParseException {
        update_request_body_with_data(variable);
        System.out.println("  *****  API Request Body Updated   *****");
    }

    @Then("Verify Status code {string}")
    public void statuscode(String statusCode) throws Throwable {
        verifystatus(statusCode);
        System.out.println("  *****  API Status Code verified   *****");
    }

    @Then("Assert {string} is present in {string} attribute")
    public void assertAttributeValue(String value, String attribute)
    {
        assert_attribute_value(value,attribute);
        System.out.println("  *****  API Response Attribute verified   *****");
    }

    @Then("Print API Response time")
    public void getResponseTime() {
        print_response_time();
        System.out.println("  *****  API Response Time printed   *****");
    }

    @Then("Maximum response time should be less than {string} millisecond")
    public void maximumResponseTime(String max_response_time) {
        check_max_response_time(max_response_time);
        System.out.println("  *****  API Maximum Response Time verified   *****");
    }

    @Then("Iterate all API Response attribute")
    public void attributeIteration() {
        response_validation();
        System.out.println("  *****  API Response Attributes verified   *****");
    }

    @Then("Print API Response headers")
    public void printResponseHeaders() {
        print_response_headers();
        System.out.println("  *****  API Response Headers printed   *****");
    }

    @Then("Save {string} attribute value from API response to {string}")
    public void saveAttributeValue(String response_attribute, String variable) throws Throwable {
        save_attribute_value_run_time_from_response(response_attribute,variable);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("Save {string} attribute value from API response to {string} on siebert")
    public void saveAttributeValuesiebert(String response_attribute, String variable) throws Throwable {
        save_attribute_value_run_time_from_response_Siebert(response_attribute,variable);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("Save {string} attribute value from API response header to {string}")
    public void saveAttributeheader(String response_attribute, String variable) throws Throwable {
        save_attribute_value_run_time_from_responseheader(response_attribute,variable);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("Add Endpoint {string}")
    public void addEndpoint(String url) throws Exception {
        add_endpoint_url(url);
        System.out.println("  *****  API Endpoint added   *****");
    }

    @Then("Add Endpoint {string} with {string}")
    public void updateEndpoint(String url, String variable) throws Exception {
        update_endpoint_url(url,variable);
        System.out.println("  *****  API Endpoint added with value   *****");
    }

    @Then("Print API Endpoint")
    public void printAPIEndpoint() {
        print_api_endpoint();
        System.out.println("  *****  API Endpoint printed   *****");
    }

    @Then("Execute query {string} using {string} and store ColumnValue {string} as {string}")
    public void Execute_query_with_saved_attribute(String query,String CondVal, String ColumnValue, String StoreKey) throws SQLException {
        Assert.assertTrue(ExecuteQueryWithSavedAttribute(query,CondVal,ColumnValue,StoreKey));
    }

    @Then("Execute query {string} using {string}")
    public void Execute_query_without_saved_attribute(String query,String CondVal) throws SQLException {
        Assert.assertTrue(ExecuteQueryWithoutSavedAttribute(query,CondVal));
    }

    @And("Assert {string} is equal to {string}")
    public void assertSavevalueIsMatching(String SavedValue, String ExpectedValue) {
        String ActualVal="";
        String ExpectedVal="";
        if(!(store_value.get(SavedValue) ==null)){
            ActualVal=store_value.get(SavedValue);}
        else ActualVal=SavedValue;
        if(!(store_value.get(ExpectedValue) ==null)){
            ExpectedVal=store_value.get(ExpectedValue);}
        else ExpectedVal=ExpectedValue;
        AssertString(ExpectedVal,ActualVal);
    }

    @And("Assert {string} is not equal to {string}")
    public void assertSavevalueIsnotMatching(String SavedValue, String ExpectedValue) {
        String ActualVal="";
        String ExpectedVal="";
        if(!(store_value.get(SavedValue) ==null)){
            ActualVal=store_value.get(SavedValue);}
        else ActualVal=SavedValue;
        if(!(store_value.get(ExpectedValue) ==null)){
            ExpectedVal=store_value.get(ExpectedValue);}
        else ExpectedVal=ExpectedValue;
        AssertStringNotEquals(ExpectedVal,ActualVal);
    }


    @And("Update API Request body with {string} contains {string} characters")
    public void updateAPIRequestBodyWithContainsCharacters(String Variable, String Value) throws Exception {
        String jsonString = jsondata.toString();
        switch (Variable) {
            case "RandomNumber":
                jsonString = jsonString.replace("${RandomNumber}", randomnumbergenerator(Integer.parseInt(Value)));
                break;
            case "RandomString":
                jsonString = jsonString.replace("${RandomString}", randomstringgenerator(Integer.parseInt(Value)));
                break;
            case "RandomEmail":
                jsonString = jsonString.replace("${RandomEmail}", randommailgenerator(Integer.parseInt(Value)));
                break;
        }
                jsondata = jsonParser.parse(jsonString);
                System.out.println(jsondata);
    }

    @Then("Push the {string} file from local destination into {string} mobile device")
    public void pushTheFileIntoMobileDevice(String srcfile, String desfile) throws IOException {
        pushFileInMobileDevice(srcfile, desfile);
        System.out.println("  *****  File pushed into mobile device   *****");
    }

    @Then("Pull the {string} file from mobile device into {string} local destination")
    public void pullTheFileFromMobileDevice(String srcfile, String desfile) throws IOException {
        pullFileFromMobileDevice(srcfile, desfile);
        System.out.println("  *****  File pulled from mobile device  *****");
    }

    @Given("Install mobile application")
    public void userInstallApplication() throws Throwable {
        instalMobileApp();
    }

    @Then("save the response value from JSON path {string} as {string}")
    public void saveAttributewithattribute(String response, String variable) throws Throwable {
        save_wholeattribute_fromAPI(response,variable);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("save the response value from JSON path {string} as {string} with same decimal")
    public void saveAttributewithattributeCB(String response, String variable) throws Throwable {
        save_wholeattribute_fromAPIwithsameDecimal(response,variable);
        System.out.println("  *****  API Response Attribute Value stored   *****");
    }

    @Then("Save the data from table {string} into {string}")
    public void webTable(String location, String variable) throws Throwable {
        webtablevalueretrieve(locatorstowebelement(getProperty(location)),variable);
    }

    @Then("Save the data from Linked Account table {string} into {string}")
    public void LnkAcctwebTable(String location, String variable) throws Throwable {
        accountLinkwebtablevalueretrieve(locatorstowebelement(getProperty(location)),variable);
    }

    @Then("Save the data from the Excel file {string} with sheet name {string} and from row {string} into {string}")
    public void excelrow(String excel, String sheet, String row,String variable) throws Throwable {
        Excelvalueretrieve(excel,sheet,Integer.parseInt(row),variable);
    }

    @And("Assert {string} contains {string}")
    public void assertcontains(String SavedValue, String ExpectedValue) {
        String ActualVal="";
        String ExpectedVal="";
        if(!(store_value.get(SavedValue) ==null)){
            ActualVal=store_value.get(SavedValue);}
        else ActualVal=SavedValue;
        if(!(store_value.get(ExpectedValue) ==null)){
            ExpectedVal=store_value.get(ExpectedValue);}
        else ExpectedVal=ExpectedValue;
        boolean present=ActualVal.contains(ExpectedVal);
        System.out.println(ActualVal);
        System.out.println(ExpectedVal);
        Assert.assertTrue(present);
    }

    @Then("Execute Query {string} and store list of Column values {string} as {string}")
    public void executeQueryAndStoreListOfColumnValuesAs(String query, String ColumnValues, String StoreKey) throws SQLException, IOException {
        ExecuteQueryAndSaveListOfValues(getProperty(query),ColumnValues,StoreKey);
    }

    @Then("Read row {string} from file {string} for the header {string}")
    public void readCSV(String row, String path, String Header) throws IOException {
        readCSVData(row,path,Header);
    }

    @Given("Connect the grpc with the host {string}")
    public void connectTheGrpcWithTheHost(String host) throws IOException {
        loadProperty();
        connectChannel(getProperty(host));
    }

    @Then("Trigger downloadftp api and verify status {string}")
    public void triggerDownloadftpApiAndVerifyStatus(String status) {
        String sts= downloadftp();
        Assert.assertEquals(sts,status);
    }

    @Then("Verify table {string} headers are present in same order {string}")
    public void verifyheader(String locator, String headerslist) {
        Assert.assertTrue(verifyTableHeaders(getProperty(locator),headerslist));
    }

    @Then("Verify filename contains {string} is download successfully")
    public void verifyfiledownload(String filename) {
        Assert.assertTrue(findAndRemoveFile(filename));
    }

    @And("Delete e-Delivery if exists")
    public void deleteEDeliveryIfExists() throws InterruptedException {
        deleteEDelivery();
    }

    @And("Comparing API response {string} with webtable {string}")
    public void comparingAPIResponseWithWebtable(String apiResponseVariable, String webTableVariable) {
       Assert.assertTrue(compareVariables(store_value.get(apiResponseVariable), store_value.get(webTableVariable)));
    }

    @And("Verify webtable {string} contains API response {string}")
    public void comparingAPIResponsehWebtable(String webTableVariable, String apiResponseVariable) {
        Assert.assertTrue(compareString(store_value.get(apiResponseVariable), store_value.get(webTableVariable)));
    }

    @And("Extract the data in columns {string} from table {string} and store as {string}")
    public void extractTheDataInColumnsFromTableAndStoreAs(String header, String location, String variable) throws IOException {
        webtablevalueretrievewithSpecificColumn(locatorstowebelement(getProperty(location)), variable, header);
    }

    @And("Reset the API")
    public void reset() throws IOException {
        APIUtility.resetAPI();
    }

    @Then("Extract substring from element text content {string} with start index {string} and end index {string} and store it in {string}")
    public void extractSubstring(String field, String startIndex, String endIndex, String variable) throws IOException{
        get_Substring(locatorstowebelement(getProperty(field)),startIndex, endIndex, variable);
        System.out.println("  *****  Extracted Substring  *****");
    }

    @Then("Asset {string} is present {string} number of times in the screen")
    public void assert_element_not_displayed(String field, String presentCount) throws Throwable {
        Assert.assertEquals( getElementCount(getProperty(field)),Integer.parseInt(presentCount));
        System.out.println("  *****  Element Displayed is Verified  *****");
    }

    @And("Modify API Request body with {string} where {string} exists")
    public void replaceJSONvalue(String Variable, String Value) throws Exception {
        String storevalue="";
        if(!(store_value.get(Variable) ==null)){
            storevalue=store_value.get(Variable);}
        else storevalue=Variable;
        String jsonString = jsondata.toString();
        jsonString = jsonString.replaceAll(Pattern.quote(Value), storevalue);
        jsondata = jsonParser.parse(jsonString);
        System.out.println(jsondata);
    }

    @And("Delete account if {string} exists")
    public void deleteIfExists(String locator) throws InterruptedException {
        deleteifexists(getProperty(locator));
    }

    @Then("verify sorted records in {string} for the {string} column {string}")
    public void sorting(String sortOder,String location,String Column) throws Throwable {
        columnsortorder(getProperty(location),Column, sortOder);
    }

    @Then("save {string} days ago from today to the variable {string} in the format {string}")
    public void today(String minus, String variable, String dateformat) throws Throwable {
       todayminusdate(minus,variable,dateformat);
    }

    @Then("save {string} date to the variable {string} in the format {string}")
    public void date(String requireddate, String variable, String dateformat) throws Throwable {
        getdate(requireddate,variable,dateformat);
    }

    @And("Delete if symbol {string} exists")
    public void deleteSymbolIfExists(String location) throws InterruptedException {
        deleteSymbol(location);
    }

    @Then("Get mail text using {string}, {string}, {string}, {string}, {string} and store email text into {string}")
    public void hubSpotMail(String username, String password, String subject, String sender_email, String content,String Variable) throws IOException, MessagingException {
        loadProperty();
        fetch_mail(getProperty(username),getProperty(password),getProperty(subject),getProperty(sender_email), getProperty(content),Variable);
        System.out.println("  *****  Email Text Fetch completed  *****");
    }

    @Then("Press {string} key for {string} times")
    public void pressKeyOperationNTimesWithountElement(String Key , String count) {
        pressKeyOnlyOperationNTimes(Key,count);
        System.out.println("  *****  Enter Key Pressed  *****");
    }

    @Then("Wait for {string} seconds")
    public void wait_for_seconds(String seconds) throws Throwable {
        waitForNSec(Integer.parseInt(seconds));
        System.out.println("  *****  "+seconds+ "Sec Wait Completed  *****");
    }

    @Given("Enter the value {string} from property file into {string}")
    public void enterValueFromPropertyFile(String value, String Locator) throws Throwable {
        enterValueFromPropertyValue(locatorstowebelement(getProperty(Locator)), value);
        System.out.println("  *****  Value Entered  *****");
    }

    @Then ("Select {string} in a calender")
    public void DatePickerInCalender(String location) throws InterruptedException {
        selectFromDateToDate(location);
        System.out.println("  *****  Current Date Selected  *****");
    }

    @Then("Select {string} in a screen")
    public void SelectLastRecordInActivityLog(String lastrecord) throws InterruptedException {
        selectLastPageLastRecord(getProperty(lastrecord));
    }

    @Then("Verify {string} UI value with Runtime value {string} by Executing the {string} Query and {string}")
    public void verifyUIValueByExecutingQueryWithTheSavedNumber(String UIvalue, String Variable, String DBvalue, String result) throws SQLException, java.text.ParseException {
        assertUIvalueUsingRuntimeSaveNumber(locatorstowebelement(getProperty(UIvalue)),Variable,getProperty(DBvalue),result);
    }

}