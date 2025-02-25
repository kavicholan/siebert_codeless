package baseClass;

import io.appium.java_client.PerformsTouchActions;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.clipboard.HasClipboard;
import io.appium.java_client.remote.MobileCapabilityType;
import io.github.bonigarcia.wdm.WebDriverManager;
import io.github.bonigarcia.wdm.config.OperatingSystem;
import org.apache.commons.io.FileUtils;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.security.Key;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjusters;

import org.bouncycastle.oer.Switch;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.junit.Assert;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.Point;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.*;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.search.FlagTerm;
import javax.mail.search.OrTerm;
import javax.mail.search.SearchTerm;
import java.awt.*;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoField;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofSeconds;
import static org.apache.commons.io.FileUtils.writeByteArrayToFile;
import static org.jsoup.internal.StringUtil.isNumeric;

public class BaseClass  extends APIUtility {
	public static RemoteWebDriver driver = null;
	public static Properties properties;
	public static String parentHandle = "";
	public static boolean browser = false;
	public static String testcasename = null;
	public static Object OutputValue;
	public static Map drivermanager = new HashMap();
	public static AndroidDriver androiddriver;
	public static Map<String, String> store_value = new HashMap<>();
	public static synchronized WebDriver getdriver() {
		return (WebDriver) drivermanager.get((int) (long) (Thread.currentThread().getId()));
	}
	public static synchronized void setdriver(WebDriver id) {
		drivermanager.put((int) (long) (Thread.currentThread().getId()), id);
	}
	public static void clearfiles(String Location) throws IOException {
		try {
			Files.walk(Paths.get(Location)).filter(Files::isRegularFile).map(Path::toFile).forEach(File::delete);
		} catch (IOException e) {
			File creation = new File(Location);
			creation.mkdir();
		}
	}

//	public static void browserlaunch(String url, String browsername) throws Exception {
//		String os;
//		os = System.getProperty("os.name");
//		System.out.println(os);
//		if (os.startsWith("Linux")) {
//			if (browsername.equalsIgnoreCase("chrome")) {
//				WebDriverManager.chromedriver().operatingSystem(OperatingSystem.LINUX).setup();
//				String downloadFilepath = System.getProperty("user.dir") + File.separator + "Assets";
//				HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
//				chromePrefs.put("profile.default_content_settings.popups", 0);
//				chromePrefs.put("profile.default_content_setting_values.notifications", 2);
//				chromePrefs.put("download.default_directory", downloadFilepath);
//				ChromeOptions options = new ChromeOptions();
//				options.setExperimentalOption("prefs", chromePrefs);
//				DesiredCapabilities cap = DesiredCapabilities.chrome();
//				cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
//				cap.setCapability(ChromeOptions.CAPABILITY, options);
//				driver = new ChromeDriver(cap);
//			} else if (browsername.equalsIgnoreCase("firefox")) {
//				driver = new FirefoxDriver();
//			} else if (browsername.equalsIgnoreCase("Edge")) {
//				driver = new EdgeDriver();
//			}
//		} else if (os.startsWith("MAC")) {
//
//		} else if (os.startsWith("Windows")) {
//			if (browsername.equalsIgnoreCase("chrome")) {
//				WebDriverManager.chromedriver().operatingSystem(OperatingSystem.LINUX).setup();
//				String downloadFilepath = System.getProperty("user.dir") + File.separator + "Downloads";
//				HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
//				chromePrefs.put("profile.default_content_settings.popups", 0);
//				chromePrefs.put("profile.default_content_setting_values.notifications", 2);
//				chromePrefs.put("download.default_directory", downloadFilepath);
//				ChromeOptions options = new ChromeOptions();
//				options.setExperimentalOption("prefs", chromePrefs);
//				DesiredCapabilities cap = DesiredCapabilities.chrome();
//				cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
//				cap.setCapability(ChromeOptions.CAPABILITY, options);
//				driver = new ChromeDriver(cap);
//			} else if (browsername.equalsIgnoreCase("firefox")) {
//				driver = new FirefoxDriver();
//			} else if (browsername.equalsIgnoreCase("Edge")) {
//				driver = new EdgeDriver();
//			}
//		}
//		setdriver(driver);
//		getdriver().manage().window().maximize();
//		loadURL(properties.getProperty(url));
//
//	}
	public static void browserlaunch(String url, String browsername) throws Exception {
		String os;
		os = System.getProperty("os.name");
		System.out.println(os);
		if (os.startsWith("Linux")) {
			if (browsername.equalsIgnoreCase("chrome")) {
				WebDriverManager.chromedriver().operatingSystem(OperatingSystem.LINUX).setup();
				String downloadFilepath = System.getProperty("user.dir") + File.separator + "Assets";
				HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
				chromePrefs.put("profile.default_content_settings.popups", 0);
				chromePrefs.put("profile.default_content_setting_values.notifications", 2);
				chromePrefs.put("download.default_directory", downloadFilepath);
				ChromeOptions options = new ChromeOptions();
				options.addArguments("--remote-allow-origins=*");
				options.addArguments("--no-sandbox");
				options.addArguments("--disable-gpu");
				options.addArguments("--disable-dev-shm-usage");
				options.addArguments("--allow-running-insecure-content");
				options.addArguments("--ignore-certificate-errors");
				options.setExperimentalOption("prefs", chromePrefs);
				options.addArguments("--start-maximized");
//				DesiredCapabilities cap = DesiredCapabilities.chrome();
//				options.merge(cap);
//				cap.setAcceptInsecureCerts(true);
//				cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
//				cap.setCapability(ChromeOptions.CAPABILITY, options);
//				driver = new ChromeDriver(cap);
				driver = new ChromeDriver(options);
			} else if (browsername.equalsIgnoreCase("firefox")) {
				driver = new FirefoxDriver();
			} else if (browsername.equalsIgnoreCase("Edge")) {
				driver = new EdgeDriver();
			}
		} else if (os.startsWith("MAC")) {
		} else if (os.startsWith("Windows")) {
			if (browsername.equalsIgnoreCase("chrome")) {
				WebDriverManager.chromedriver().operatingSystem(OperatingSystem.WIN).setup();
				String downloadFilepath = System.getProperty("user.dir") + File.separator + "Assets";
				HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
				chromePrefs.put("profile.default_content_settings.popups", 0);
				chromePrefs.put("profile.default_content_setting_values.notifications", 2);
				chromePrefs.put("download.default_directory", downloadFilepath);
				ChromeOptions options = new ChromeOptions();
				options.addArguments("--remote-allow-origins=*");
				options.addArguments("--no-sandbox");
				options.addArguments("--disable-gpu");
				options.addArguments("--disable-dev-shm-usage");
				options.addArguments("--allow-running-insecure-content");
				options.addArguments("--ignore-certificate-errors");
				options.setExperimentalOption("prefs", chromePrefs);
				options.addArguments("--start-maximized");
//				DesiredCapabilities cap = DesiredCapabilities.chrome();
//				options.merge(cap);
//				cap.setAcceptInsecureCerts(true);
//				cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
//				cap.setCapability(ChromeOptions.CAPABILITY, options);
//				driver = new ChromeDriver(cap);
				driver = new ChromeDriver(options);
			} else if (browsername.equalsIgnoreCase("firefox")) {
				driver = new FirefoxDriver();
			} else if (browsername.equalsIgnoreCase("Edge")) {
				driver = new EdgeDriver();
			}
		}
		setdriver(driver);
		getdriver().manage().window().maximize();
		loadURL(properties.getProperty(url));

	}
	public static void loadProperty() throws IOException {
		String fileName = null;
		fileName = System.getProperty("user.dir") + File.separator + "features" + File.separator + "config.properties";
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(fileName);
			properties = new Properties();
			properties.load(fis);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			fis.close();
		}
	}
	public static void loadURL(String URL) {
		try {
			getdriver().manage().window().maximize();
			getdriver().get(URL);
		} catch (Exception e) {
			System.out.println("Error in Load URL :" + e.getMessage());
		}
	}
	public static void closeBrowser() {
//		getdriver().manage().deleteAllCookies();
		getdriver().close();
//		getdriver().quit();
//		driver = null;
	}
	public static WebDriver getDriver() {
		return driver;
	}
	public static String getProperty(String propertyKey) {
		return properties.getProperty(propertyKey);
	}
	public static void refresh() {
		getDriver().navigate().refresh();
	}
	public static void back() {
		getDriver().navigate().back();
	}
	public static void waitAndClickElementUsingDynamic(String dynString) throws Exception {
		WebElement element = getdriver().findElement(By.xpath("//td[contains(text(),'" + dynString + "')]"));
		boolean clicked = false;
		int attempts = 0;
		while (!clicked && attempts < 10) {
			try {
				if (element.isDisplayed()) {
					element.click();
					fluentWait(element, 60);
				}
				System.out.println("Successfully clicked on the WebElement: " + "<" + element.toString() + ">");
				clicked = true;
			} catch (Exception e) {
				Assert.fail(
						"Unable to wait and click on the WebElement, using locator: " + "<" + element.toString() + ">");
			}
			attempts++;
		}
	}
	public static void click(WebElement element) throws InterruptedException {
		waitForElement(element);
		element.click();
	}
	public static void loca(WebElement element) throws InterruptedException {
		waitForElement(element);
		element.click();
	}
	public static String name_field = null;
	public static void enterText(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		element.clear();
		Thread.sleep(2000);
		element.sendKeys(text);
		name_field = text;
	}
	public void retrieveStaticNameWithDynamicNumber(WebElement element) throws InterruptedException {
		name_field = name_field + saltStr;
		System.out.println("Unique name:" + name_field);
		enterText(element, name_field);
		element.sendKeys(Keys.DOWN);
		element.sendKeys(Keys.ENTER);
	}
//	public static void jstypetext(WebElement element, String value) {
//		JavascriptExecutor js = (JavascriptExecutor) getdriver();
//		js.executeScript("arguments[0].value='" + value + "';", element);
//	}
	public static void jstypetext(WebElement element, String value) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) getdriver();
		js.executeScript("arguments[0].value = arguments[1];", element, value);
		Thread.sleep(500);
	}

	public static void fileupload(WebElement element, String text) throws InterruptedException {
//		waitForElement(element);
//		System.out.println("element:"+element);
//		System.out.println("text:"+text);
		element.sendKeys(text);
	}
	public static String getText(WebElement element) throws InterruptedException {
		return element.getText();
	}
	public static void enterTextWithoutClearText(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		element.sendKeys(text);
	}
	public static void waitForElement(WebElement element) throws InterruptedException {
		WebDriverWait wait = new WebDriverWait(getdriver(), ofSeconds(60));
		wait.until(ExpectedConditions.elementToBeClickable(element));
	}
	public static void waitForTheElement(WebElement element, int seconds) throws InterruptedException {
		WebDriverWait wait = new WebDriverWait(getdriver(), ofSeconds(seconds));
		wait.until(ExpectedConditions.elementToBeClickable(element));
	}
	public static boolean waitForinvisibleElement(String locators) throws InterruptedException {
		try {
			getdriver().findElement(By.xpath(locators));
			return false;
		} catch (Exception e) {
			return true;
		}
	}
	public static boolean waitForvisibleElement(String locators) throws InterruptedException {
		try {
			getdriver().findElement(By.xpath(locators));
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	public static void waitForElementVisibility(WebElement element) throws InterruptedException {
		WebDriverWait wait = new WebDriverWait(driver, ofSeconds(30));
		wait.until(ExpectedConditions.visibilityOf(element));
	}
	public static void waitForElementVisibility(List<WebElement> element) throws InterruptedException {
		WebDriverWait wait = new WebDriverWait(driver, ofSeconds(120));
		wait.until(ExpectedConditions.visibilityOf(element.get(0)));
	}
	public static boolean fluentWait(final WebElement awaitedElement, int waitTimeInSeconds) {
		waitTimeInSeconds = 30;
		Wait<WebDriver> wait = new FluentWait<WebDriver>(driver)
				.withTimeout(ofSeconds(waitTimeInSeconds))
				.pollingEvery(ofSeconds(1)).ignoring(NoSuchElementException.class)
				.ignoring(TimeoutException.class).ignoring(IndexOutOfBoundsException.class);
		return wait.until(new Function<WebDriver, Boolean>() {
			@Override
			public Boolean apply(WebDriver driver) {
				return awaitedElement.isDisplayed() && awaitedElement.isEnabled();
			}
		});
	}
	public static boolean fluentWait(final List<WebElement> awaitedElement, int waitTimeInSeconds) {
		Wait<WebDriver> wait = new FluentWait<WebDriver>(driver)
				.withTimeout(ofSeconds(waitTimeInSeconds))
				.pollingEvery(ofSeconds(2)).ignoring(NoSuchElementException.class)
				.ignoring(TimeoutException.class).ignoring(IndexOutOfBoundsException.class);
		return wait.until(new Function<WebDriver, Boolean>() {
			@Override
			public Boolean apply(WebDriver driver) {
				return awaitedElement.get(0).isDisplayed() && awaitedElement.get(0).isEnabled();
			}
		});
	}
	public static boolean isElementDisplayed(WebElement element) throws InterruptedException {
		boolean isElementDisplayed = true;
		waitForElementVisibility(element);
		try {
			isElementDisplayed = element.isDisplayed();
		} catch (Exception e) {
			isElementDisplayed = false;
		}
		return isElementDisplayed;
	}
	public static boolean isElementEnabled(WebElement element) throws InterruptedException {
		boolean isElementEnabled = true;
		waitForElementVisibility(element);
		try {
			isElementEnabled = element.isEnabled();
		} catch (Exception e) {
			isElementEnabled = false;
		}
		return isElementEnabled;
	}
	public static void selectDropdownOption(WebElement element, String option) throws InterruptedException {
		waitForElement(element);
		Select sc = new Select(element);
		sc.selectByValue(option);
	}
	public static void selectCustomDropdownOption(WebElement element, String option) throws InterruptedException {
//		waitForElement(element);
//		waitForElementVisibility(element);
//		element.clear();
		enterText(element, option);
//		wait2Sec();
		element.sendKeys(Keys.DOWN);
//		wait2Sec();
		element.sendKeys(Keys.ENTER);
	}
	public static void selectCustomDropdownOptionWithDelay(WebElement element, String option) throws InterruptedException {
		waitForElement(element);
//		waitForElementVisibility(element);
//		element.clear();
		enterText(element, option);
		wait2Sec();
		element.sendKeys(Keys.DOWN);
		wait2Sec();
		element.sendKeys(Keys.ENTER);
	}
	public static void selectdatewithjs(WebElement element, String text) throws InterruptedException {
		jstypetext(element, text);
	}
	public static void clearText(WebElement element) throws InterruptedException {
//		Actions actions = new Actions(getdriver());
//		actions.keyDown(Keys.CONTROL).sendKeys("a").keyUp(Keys.CONTROL).build().perform();
		Thread.sleep(2000);
		element.clear();
		element.clear();
	}
	public static void clearTextInCustomDropdown(WebElement element) throws InterruptedException {
//		Actions actions = new Actions(driver);
//		actions.sendKeys(element, "\b").perform();
		element.sendKeys(Keys.chord(Keys.CONTROL, "a"), Keys.BACK_SPACE);
	}
	public static void clearTextUsingJS(WebElement element) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].value = '';", element);
	}
	public static void uploadFileWithRobotClass(String filePath) {
		try {
			Robot robot = new Robot();

			if (!System.getProperty("os.name").equals("Windows")) {

				robot.delay(1000);
				robot.keyPress(KeyEvent.VK_CONTROL);
				robot.keyPress(KeyEvent.VK_L);
				robot.keyRelease(KeyEvent.VK_L);
				robot.keyRelease(KeyEvent.VK_CONTROL);
			}

			StringSelection stringSelection = new StringSelection(filePath);
			Toolkit.getDefaultToolkit().getSystemClipboard().setContents(stringSelection, stringSelection);
			robot.delay(1000);
			robot.keyPress(KeyEvent.VK_CONTROL);
			robot.keyPress(KeyEvent.VK_V);
			robot.keyRelease(KeyEvent.VK_V);
			robot.keyRelease(KeyEvent.VK_CONTROL);
			robot.delay(1000);
			robot.keyPress(KeyEvent.VK_ENTER);
			robot.keyRelease(KeyEvent.VK_ENTER);
		} catch (Exception e) {
			Assert.fail("Unable to attach the file.... ");
		}
	}
	public static void fileDownload(String path) throws AWTException {
		Robot robot = new Robot();
		robot.keyPress(KeyEvent.VK_TAB);
		robot.keyRelease(KeyEvent.VK_TAB);
		robot.keyPress(KeyEvent.VK_ENTER);
		robot.keyRelease(KeyEvent.VK_ENTER);
	}
	public static void moveToElement(WebElement element) {
		new Actions(driver).moveToElement(element).perform();
	}
	public static void wait2Sec() throws InterruptedException {
		Thread.sleep(2000);
	}
	public static void wait3Sec() throws InterruptedException {
		Thread.sleep(3000);
	}
	public static void wait5Sec() throws InterruptedException {
		Thread.sleep(5000);
	}
	
	public static void wait10Sec() throws InterruptedException {
		Thread.sleep(10000);
	}
	public static void wait50Sec() throws InterruptedException {
		Thread.sleep(50000);
	}
	public static void waitForSec(int second) throws InterruptedException {
		Thread.sleep(second * 1000);
	}
	public static String changeDateFormat(String myDate) throws ParseException {
		SimpleDateFormat sm = new SimpleDateFormat("mm-dd-yyyy");
		String strDate = sm.format(myDate);
		Date dt = sm.parse(strDate);
		return dt.toString();
	}
	public static void scrollTopToBottom() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,1000)", "(//div[@class='scrollbar-container ps'])[2]");
	}
	public static void jsClick(WebElement ele) {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click()", ele);
	}
	public static String getAttribute(WebElement element, String attibuteName) {
		String attibuteValue = null;
		fluentWait(element, 30);
		attibuteValue = element.getAttribute(attibuteName);
		return attibuteValue;
	}
	public static String takeSnapShot(String file) throws Exception {
		String fileWithPath = System.getProperty("user.dir") + File.separator + "Assets" + File.separator + file;
		try {
			TakesScreenshot scrShot = ((TakesScreenshot) getdriver());
			File SrcFile = scrShot.getScreenshotAs(OutputType.FILE);
			File DestFile = new File(fileWithPath);
			FileUtils.copyFile(SrcFile, DestFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(fileWithPath);
		return fileWithPath;
	}
	public static String convertscrtobase(String FilePath) throws Exception {
		String Base64StringofScreenshot = null;
		try {
			File src = new File(FilePath);
			byte[] fileContent = FileUtils.readFileToByteArray(src);
			Base64StringofScreenshot = "data:image/png;base64," + Base64.getEncoder().encodeToString(fileContent);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Base64StringofScreenshot;
	}
	public static String getPreviousWorkingDate(String format) {
		DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern(format);
		LocalDate date = LocalDate.now();
		DayOfWeek dayOfWeek = DayOfWeek.of(date.get(ChronoField.DAY_OF_WEEK));
		switch (dayOfWeek) {
			case MONDAY:
				return date.minus(3, ChronoUnit.DAYS).format(customFormatter);
			case SUNDAY:
				return date.minus(2, ChronoUnit.DAYS).format(customFormatter);
			default:
				return date.minus(1, ChronoUnit.DAYS).format(customFormatter);
		}
	}
	public static void sendPreviousWorkingDate(WebElement element, String format) {
		DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern(format);
		LocalDate date = LocalDate.now();
		DayOfWeek dayOfWeek = DayOfWeek.of(date.get(ChronoField.DAY_OF_WEEK));
		switch (dayOfWeek) {
			case MONDAY:
				element.sendKeys(date.minus(3, ChronoUnit.DAYS).format(customFormatter));
			case SUNDAY:
				element.sendKeys(date.minus(2, ChronoUnit.DAYS).format(customFormatter));
			default:
				element.sendKeys(date.minus(1, ChronoUnit.DAYS).format(customFormatter));
		}
	}
	public static String getPreviousWeekendDate(String format) {
		DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern(format);
		LocalDate date = LocalDate.now();
		DayOfWeek dayOfWeek = DayOfWeek.of(date.get(ChronoField.DAY_OF_WEEK));
		switch (dayOfWeek) {
			case MONDAY:
				return date.minus(1, ChronoUnit.DAYS).format(customFormatter);
			case TUESDAY:
				return date.minus(2, ChronoUnit.DAYS).format(customFormatter);
			case WEDNESDAY:
				return date.minus(3, ChronoUnit.DAYS).format(customFormatter);
			case THURSDAY:
				return date.minus(4, ChronoUnit.DAYS).format(customFormatter);
			case FRIDAY:
				return date.minus(5, ChronoUnit.DAYS).format(customFormatter);
			case SATURDAY:
				return date.minus(6, ChronoUnit.DAYS).format(customFormatter);
			default:
				return date.minus(1, ChronoUnit.DAYS).format(customFormatter);
		}
	}
	public static void sendPreviousWeekendDate(WebElement element, String format) {
		DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern(format);
		LocalDate date = LocalDate.now();
		DayOfWeek dayOfWeek = DayOfWeek.of(date.get(ChronoField.DAY_OF_WEEK));
		switch (dayOfWeek) {
			case MONDAY:
				element.sendKeys(date.minus(1, ChronoUnit.DAYS).format(customFormatter));
				break;
			case TUESDAY:
				element.sendKeys(date.minus(2, ChronoUnit.DAYS).format(customFormatter));
				break;
			case WEDNESDAY:
				element.sendKeys(date.minus(3, ChronoUnit.DAYS).format(customFormatter));
				break;
			case THURSDAY:
				element.sendKeys(date.minus(4, ChronoUnit.DAYS).format(customFormatter));
				break;
			case FRIDAY:
				element.sendKeys(date.minus(5, ChronoUnit.DAYS).format(customFormatter));
				break;
			case SATURDAY:
				element.sendKeys(date.minus(6, ChronoUnit.DAYS).format(customFormatter));
				break;
			default:
				element.sendKeys(date.minus(1, ChronoUnit.DAYS).format(customFormatter));
				break;
		}
	}
	public static void scrollToElement(WebElement element) throws Exception {
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		Thread.sleep(500);
	}
	public static void scrollToElementDown(WebElement element) throws Exception {
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		Thread.sleep(500);
	}
	public static WebElement locatorstowebelement(String locators) {
		return getdriver().findElement(By.xpath(locators));
	}
	public static WebElement locateWebElementWithDifferentLocators(String locators, String type) {
		WebElement element = null;
		switch (type) {
			case "XPATH":
				element = getdriver().findElement(By.xpath(locators));
				break;
			case "ID":
				element = getdriver().findElement(By.id(locators));
				break;
			case "NAME":
				element = getdriver().findElement(By.name(locators));
				break;
			case "CLASSNAME":
				element = getdriver().findElement(By.className(locators));
				break;
			case "TAGNAME":
				element = getdriver().findElement(By.tagName(locators));
				break;
			case "CSS_SELECTOR":
				element = getdriver().findElement(By.cssSelector(locators));
				break;
			case "LINK_TEXT":
				element = getdriver().findElement(By.linkText(locators));
				break;
			case "PARTIAL_LINK_TEXT":
				element = getdriver().findElement(By.partialLinkText(locators));
				break;
			default:
				System.out.println("Please do pass the valid locator type");
				break;
		}
		return element;
	}
	public static void acceptAlert() {
		getdriver().switchTo().alert().accept();
	}
	public static void dismissAlert() {
		getdriver().switchTo().alert().dismiss();
	}
	public static void assertAlertText(String expectedAlertText) {
		Assert.assertEquals(getDriver().switchTo().alert().getText(), expectedAlertText);
	}
//	public static WebElement findElementAboveByXpath(String aboveLocator, String locator) {
//		return driver.findElement(RelativeLocator.with(By.tagName(aboveLocator)).above(By.xpath(locator)));
//	}
	public static boolean isElementPresent(WebElement element) throws InterruptedException {
		boolean isElementEnabled = true;
		try {
			isElementEnabled = element.isEnabled();
		} catch (Exception e) {
			isElementEnabled = false;
		}
		return isElementEnabled;
	}
	public static void navigateBack() {
		getdriver().navigate().back();
	}
	public static void navigateForward() {
		getdriver().navigate().forward();
	}
	public static void reload_page() {
		getdriver().navigate().refresh();
	}
	public static void maximizeWindow() {
		getdriver().manage().window().maximize();
	}
	public static void fullScreenWindow() {
		getdriver().manage().window().fullscreen();
	}
	public static void navigateTo(String url) {
//		getdriver().navigate().to(url);
		loadURL(properties.getProperty(url));
	}
	public static void getTile() {
		getdriver().getTitle();
	}
	public static void getCurrentURL() {
		getdriver().getCurrentUrl();
	}
	public static void getPageSource() {
		getdriver().getPageSource();
	}
	public static void submit(String locators) {
		getdriver().findElement(By.xpath(locators)).submit();
	}
	public static void setWindowSize(String width, String height) {
		getdriver().manage().window().setSize(new Dimension(Integer.parseInt(width), Integer.parseInt(height)));
	}
	public static void setWindowPosition(String xcoor, String ycoor) {
		getdriver().manage().window().setPosition(new Point(Integer.parseInt(xcoor), Integer.parseInt(ycoor)));
	}
	public static void quitBrowser() {
		getdriver().manage().deleteAllCookies();
		getdriver().quit();
	}
	public static WebElement locatorstowebelementWithId(String locators) {
		return getdriver().findElement(By.id(locators));
	}
	public static void switchToIframeWithId(String loc) {
		getdriver().switchTo().frame(loc);
	}
	public static void switchToIframeWithIndex(String index) {
		getdriver().switchTo().frame(Integer.parseInt(index));
	}
	public static void assertPageTitle(String title) {
		Assert.assertEquals(getdriver().getTitle(), title);
	}
	public static void printPageTitle() {
		System.out.println("Page Title:" + getdriver().getTitle());
	}
	public static void assertElementText(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " "), text);
	}
	public static void assertTextWithDynamicValue(WebElement element, String text, String variable) throws InterruptedException {
		waitForElement(element);
		if (text.contains("[dynamic_value]"))
			Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " "), text.replace("[dynamic_value]", store_value.get(variable)));
		else
			Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " "), text);
	}

	public static void assertTextWithDynamicValueSiebert(WebElement element, String text, String variable) throws InterruptedException {
		waitForElement(element);
		if (text.contains("[dynamic_value]"))
			Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " ")
					.replaceAll(Pattern.quote("("), "")
					.replaceAll(Pattern.quote(")"), "")
					.replaceAll(Pattern.quote("$"), "")
					.replaceAll(Pattern.quote("%"), "")
					.replaceAll(Pattern.quote(","), "")
					.replaceAll(Pattern.quote("-"), ""), text.replace("[dynamic_value]", store_value.get(variable)));
		else
			Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " ").replaceAll(Pattern.quote("("), "")
					.replaceAll(Pattern.quote(")"), "")
					.replaceAll(Pattern.quote("$"), "")
					.replaceAll(Pattern.quote("%"), "")
					.replaceAll(Pattern.quote(","), "")
					.replaceAll(Pattern.quote("-"), ""), text);
	}

	public static void assertElementTextFromMap(WebElement element, String variable) throws InterruptedException {
		waitForElement(element);
		Assert.assertEquals(element.getText().replaceAll("\\r?\\n", " "), store_value.get(variable));
	}
	public static void assertElementInteger(WebElement element, int num) throws InterruptedException {
		waitForElement(element);
		Assert.assertEquals(Integer.parseInt(element.getText()), num);
	}
	public static void assertElementLong(WebElement element, long num) throws InterruptedException {
		waitForElement(element);
		Assert.assertEquals(Long.parseLong(element.getText()), num);
	}
	public static void assertElementDisplayed(WebElement element) throws InterruptedException {
		waitForElement(element);
		Assert.assertTrue(element.isDisplayed());
		System.out.println("element displayed is:" + element.getText());
	}

	public static void assertElementNotDisplayed(WebElement element) throws InterruptedException {
		waitForElement(element);
		Assert.assertFalse(element.isDisplayed());
		System.out.println("element displayed is:" + element.getText());
	}

	public static void assertElementEnabled(WebElement element) throws InterruptedException {
//		waitForElement(element);
		Assert.assertTrue(element.isEnabled());
	}

	public static void assertElementDisabled(WebElement element) throws InterruptedException {
//		waitForElement(element);
		Assert.assertTrue(!element.isEnabled());
	}


	public static void assertElementSelected(WebElement element) throws InterruptedException {
		waitForElement(element);
		Assert.assertTrue(element.isSelected());
	}

	public static void switchToDefault() {
		getdriver().switchTo().defaultContent();
	}

	public static void implicitWait(int seconds) {
		getdriver().manage().timeouts().implicitlyWait(seconds, TimeUnit.SECONDS);
	}

	public void hoverOnElement(WebElement element) {
		Actions actions = new Actions(getdriver());
		actions.moveToElement(element).perform();
	}

	public void hoverAndClickElement(WebElement element) throws InterruptedException {
		waitForElement(element);
		Actions actions = new Actions(getdriver());
		actions.moveToElement(element).click().perform();
	}

	public void hoverAndUploadFile(WebElement element, String text) {
		Actions actions = new Actions(getdriver());
		actions.moveToElement(element).perform();
		element.clear();
		element.sendKeys(text);
	}

	public void assertTableRowCount(WebElement element, String row_size) {
		WebElement table = element;
		List<WebElement> rows = table.findElements(By.tagName("tbody/tr"));
		Assert.assertEquals(rows.size(), Integer.parseInt(row_size));
	}

	static String saltStr = null;

	public static String randomnumbergenerator(int Length) throws Exception {
		int value = Length;

		try {
			String SALTCHARS = "1234567899";
			StringBuilder salt = new StringBuilder();
			Random rnd = new Random();
			while (salt.length() < value) {
				int index = (int) (rnd.nextFloat() * SALTCHARS.length());
				salt.append(SALTCHARS.charAt(index));
			}
			saltStr = salt.toString();
			System.out.println("random number: " + saltStr);
			return saltStr;
		} catch (Exception e) {
			e.getMessage();
			return saltStr;
		}
	}
	public static String randomstringgenerator(int LenValue) throws Exception {
		String saltStr = null;
		int length = LenValue;
		try {
			String SALTCHARS = "abcdefghijklmnopqrstuvwxyz";
			StringBuilder salt = new StringBuilder();
			Random rnd = new Random();
			while (salt.length() < length) {
				int index = (int) (rnd.nextFloat() * SALTCHARS.length());
				salt.append(SALTCHARS.charAt(index));
			}
			saltStr = salt.toString();
			System.out.println("random string: " + saltStr);
			return saltStr;
		} catch (Exception e) {
			e.getMessage();
			return saltStr;
		}
	}
	public static String randommailgenerator(int LenValue) throws Exception {
		int length = LenValue;
		String saltStr = null;
		try {
			String SALTCHARS = "abcdefghijklmnopqrstuvwxyz";
			StringBuilder salt = new StringBuilder();
			Random rnd = new Random();
			while (salt.length() < length) {
				int index = (int) (rnd.nextFloat() * SALTCHARS.length());
				salt.append(SALTCHARS.charAt(index));
			}
			saltStr = salt.toString() + "@ionixx.com";
			System.out.println("random email: " + saltStr);
			return saltStr;
		} catch (Exception e) {
			e.getMessage();
			return saltStr;
		}
	}
	static Set<String> windowHandles = null;
	static String originalWindowHandle = null;
	public static void getWindowHandles() {
		originalWindowHandle = getdriver().getWindowHandle();
		windowHandles = getdriver().getWindowHandles();
	}
	public void switchToNewWindow() {
		for (String windowHandle : windowHandles) {
			if (!windowHandle.equals(originalWindowHandle)) {
				getdriver().switchTo().window(windowHandle);
				break;
			}
		}
	}
	public void switchBackToOriginalWindow() {
//		getdriver().switchTo().window(windowHandles.iterator().next());
		getdriver().switchTo().window(originalWindowHandle);
	}
	public static void assertDropDownOptionListCount(WebElement element, int size) throws InterruptedException {
		waitForElement(element);
		Select sel = new Select(element);
		List<WebElement> listOfDropdown = sel.getOptions();
		Assert.assertEquals(listOfDropdown.size(), size);
	}
	public static void printDropDownOptionListCount(WebElement element) throws InterruptedException {
		waitForElement(element);
		Select sel = new Select(element);
		List<WebElement> listOfDropdown = sel.getOptions();
		System.out.println(listOfDropdown.size());
	}
	public static WebElement listOfDropdown(WebElement element) throws InterruptedException {
		waitForElement(element);
		Select sel = new Select(element);
		List<WebElement> listOfDropdown = sel.getOptions();
		for (int i = 0; i < listOfDropdown.size(); i++) {
			String list = listOfDropdown.get(i).getText();
			System.out.println("list of Dropdown is " + list);
		}
		return element;
	}
	public static void getLocation() throws InterruptedException {
		Point location = getdriver().manage().window().getPosition();
		System.out.println("x co-ordinate= " + location.getX());
		System.out.println("y co-ordinate= " + location.getY());
	}
	public static void getSize() throws InterruptedException {
		Dimension size = getdriver().manage().window().getSize();
		System.out.println("height= " + size.getHeight());
		System.out.println("Width= " + size.getWidth());
	}
	public static String getTagName(WebElement element) throws InterruptedException {
		waitForElement(element);
		String tagName = element.getTagName();
		System.out.println(tagName);
		return tagName;
	}
	public static String getTitleOfPage(WebElement element) throws InterruptedException {
		waitForElement(element);
		String getPageTitle = getdriver().getTitle();
		System.out.println(getPageTitle);
		return getPageTitle;
	}
	public static void mouseHoverAndClickInsideElement(WebElement element1, WebElement element2) throws InterruptedException {
		Actions action = new Actions(getdriver());
		action.moveToElement(element1).build().perform();
		Thread.sleep(3000);
		element2.click();
	}
	public static void dragAndDrop(WebElement sourceElement, WebElement targetElement) throws InterruptedException {
		Actions action = new Actions(getdriver());
		action.clickAndHold(sourceElement).moveToElement(targetElement).release().build().perform();
	}
	public static void dragAndDropInFrames(int index, WebElement sourceElement, WebElement targetElement) throws InterruptedException {
		getdriver().switchTo().frame(index);
		wait2Sec();
		Actions action = new Actions(getdriver());
		action.clickAndHold(sourceElement).moveToElement(targetElement).release().build().perform();
	}
	public static void rightClick(WebElement element) throws InterruptedException {
		waitForElement(element);
		Actions action = new Actions(getdriver());
		action.contextClick(element).build().perform();
	}
	public static void doubleClick(WebElement element) throws InterruptedException {
		waitForElement(element);
		Actions action = new Actions(getdriver());
		action.doubleClick(element).perform();
	}
	public static void enterValuesUsingActionClass(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		Actions action = new Actions(getdriver());
		action.moveToElement(element).doubleClick().sendKeys(text).build().perform();
//		action.sendKeys(element, text).build().perform();
	}
	public static void convertTextToUpperCase(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		Actions action = new Actions(getdriver());
		action.moveToElement(element).click().keyDown(element, Keys.SHIFT).sendKeys(text).build().perform();
//		action.keyDown(element,Keys.SHIFT).sendKeys(text).build().perform();
	}
	public static void scrollPageUp() throws InterruptedException {
		wait2Sec();
		Actions action = new Actions(getdriver());
		action.keyDown(Keys.CONTROL).sendKeys(Keys.HOME).perform();
		try {
			wait5Sec();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void scrollPageDown() throws InterruptedException {
		wait2Sec();
		Actions action = new Actions(getdriver());
		action.keyDown(Keys.CONTROL).sendKeys(Keys.END).perform();
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static String getPopupAlertMessage() {
		String popupMessage = null;
		try {
			Alert alert = getDriver().switchTo().alert();
			popupMessage = alert.getText();
			alert.accept();
		} catch (Exception e) {
			popupMessage = null;
		}
		System.out.println("Popup message is " + popupMessage);
		return popupMessage;
	}
	public static String cancelPopupAlert() {
		String message = null;
		try {
			Alert alert = getdriver().switchTo().alert();
			message = alert.getText();
			alert.dismiss();
		} catch (Exception e) {
			message = null;
		}
		return message;
	}
	public boolean isAlertPresent() throws InterruptedException {
//		getdriver().manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		try {
			getdriver().switchTo().alert();
			return true;
		} catch (Exception e) {
			return false;
		} finally {
//			getdriver().manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		}
	}
	public static void sendValuesInPopupAlert(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		Alert alert = getdriver().switchTo().alert();
		getdriver().switchTo().alert().sendKeys(text);
		alert.accept();
	}
	public static void sendValuesInPopupAlert(String text) throws InterruptedException {
//		wait5Sec();
		getdriver().switchTo().alert().sendKeys(text);
//		alert.sendKeys(text);
	}
	public static void timerAlertButton() throws InterruptedException {
		wait5Sec();
		getdriver().switchTo().alert().accept();
	}
	public static void selectDropdownValue(WebElement element, String type, String value) throws InterruptedException {
		waitForElement(element);
		Select sel = new Select(element);
		switch (type) {
			case "index":
				sel.selectByIndex(Integer.parseInt(value));
				break;
			case "value":
				sel.selectByValue(value);
				break;
			case "visibletext":
				sel.selectByVisibleText(value);
				break;
			default:
				System.out.println("Please pass the correct selection criteria");
				break;
		}
	}
	public static boolean multipleOptionSelectionCheck(WebElement element) {
		try {
			Select select = new Select(element);
			select.isMultiple();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	public static void clickAndHoldOnElement(WebElement element) {
		Actions action = new Actions(getdriver());
		action.moveToElement(element);
		action.clickAndHold().perform();
	}
	public static void getcurrentdatewithformat(WebElement element, String format) {
		SimpleDateFormat formatter = new SimpleDateFormat(format);
		Date date = new Date();
		element.sendKeys(formatter.format(date));
	}
	public static void customClick(WebElement element) {
		Actions act = new Actions(getdriver());
		act.doubleClick(element).perform();
	}
	public static void highlightElement(WebElement element) {
		JavascriptExecutor jsExecutor = (JavascriptExecutor) getdriver();
		jsExecutor.executeScript("arguments[0].style.border='2px solid red'", element);
	}
	public static Connection DBconnection = null;
	public static void connectDB(String host, String username, String password) throws IOException {
		loadProperty();
		try {
			DBconnection = DriverManager.getConnection(properties.getProperty(host), properties.getProperty(username), properties.getProperty(password));
			System.out.println("Opened database successfully");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public static boolean executequery(String Query) throws SQLException {
		try {
//			ExtentCucumberAdapter.addTestStepLog("Query :" + MarkupHelper.createCodeBlock(Query).getMarkup());
//			String result = null;
			Statement stmt = DBconnection.createStatement();
			ResultSet rs = stmt.executeQuery(Query);
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	public static void convertTextToLowerCase(WebElement element, String text) throws InterruptedException {
		waitForElement(element);
		element.sendKeys(text.toLowerCase());
	}
	public void getAllLinks() {
		List<WebElement> linksList = getdriver().findElements(By.tagName("a"));
		//linksList.addAll(getdriver().findElements(By.tagName("img")));
		List<WebElement> activeLinks = new ArrayList<WebElement>();
		for (int i = 0; i < linksList.size(); i++) {
			if (linksList.get(i).getAttribute("href") != null) {
				activeLinks.add(linksList.get(i));
			}
		}
		System.out.println("size of active links in a page: " + activeLinks.size());
	}
	public void getAllImageLinks() {
		List<WebElement> linksList = getdriver().findElements(By.tagName("img"));
		System.out.println("size of active image links: " + linksList.size());
	}
	public void actionsSendKeys(WebElement element, String text) {
		Actions act = new Actions(getdriver());
		act.sendKeys(element, text).perform();
	}
	public static void actionsClick(WebElement element) throws InterruptedException {
		waitForElement(element);
		Actions action = new Actions(getdriver());
		action.click(element).perform();
	}
	public static void printElementText(String locator) {
		List<WebElement> eleList = getdriver().findElements(By.xpath(locator));
		for (WebElement e : eleList) {
			System.out.println(e.getText());
		}
	}

	public static void saveElementText(String locator, String Variable) {
		List<WebElement> eleList = getdriver().findElements(By.xpath(locator));
		StringBuilder concatenatedText = new StringBuilder();
		for (WebElement e : eleList) {
			concatenatedText.append(e.getText()).append(" ");
		}
		store_value.put(Variable,concatenatedText.toString());
	}

//	public static void getElementsTextList(String locator){
//		List<WebElement> eleList = getdriver().findElements(By.xpath(locator));
//		List<String> eleTextList = new ArrayList<String>();
//		for (WebElement e : eleList) {
//			String text = e.getText();
//			eleTextList.add(text);
//		}
//	}
	public static int getElementCount(String locator) {
		List<WebElement> elementCount = getdriver().findElements(By.xpath(locator));
		int count = elementCount.size();
		System.out.println(count);
		return count;
	}
	public static void getElementAttributeList(String locator, String attrName) {
		List<WebElement> attrList = getdriver().findElements(By.xpath(locator));
		List<String> attrTextList = new ArrayList<String>();
		for (WebElement e : attrList) {
			String attrtext = e.getAttribute(attrName);
			attrTextList.add(attrtext);
		}
		System.out.println(attrTextList.toString());
	}
	public static void pressEnterUsingSendKeys(WebElement element) throws InterruptedException {
		Thread.sleep(2000);
		element.sendKeys(Keys.ENTER);
	}
	public static WebElement locatorstowebelementList(String locators) {
		List<WebElement> elements = getdriver().findElements(By.xpath(locators));
		return (WebElement) elements;
	}
	public static void sendLastFridayDate(WebElement element, String format) {
		LocalDate today = LocalDate.now();
		LocalDate lastFriday = today.with(DayOfWeek.FRIDAY);
		if (lastFriday.isAfter(today) | lastFriday.isEqual(today)) {
			lastFriday = lastFriday.minusWeeks(1);
		}
		DateTimeFormatter dateformat = DateTimeFormatter.ofPattern(format);
//		return dateformat.format(lastFriday);
		element.sendKeys(dateformat.format(lastFriday));
	}
	public static void sendPreviousDateOfLastFridayDate(WebElement element, String format) {
		LocalDate today = LocalDate.now();
		LocalDate lastThrusday = today.with(DayOfWeek.THURSDAY);
		LocalDate lastFriday = today.with(DayOfWeek.FRIDAY);
		if (lastThrusday.isAfter(today) | lastThrusday.isEqual(today) | lastFriday.isEqual(today)) {
			lastThrusday = lastThrusday.minusWeeks(1);
		}
		DateTimeFormatter dateformat = DateTimeFormatter.ofPattern(format);
		element.sendKeys(dateformat.format(lastThrusday));
	}
	public static void sendLastSaturdayDate(WebElement element, String format) {
		LocalDate today = LocalDate.now();
		LocalDate lastSaturday = today.with(DayOfWeek.SATURDAY);
		if (lastSaturday.isAfter(today) | lastSaturday.isEqual(today)) {
			lastSaturday = lastSaturday.minusWeeks(1);
		}
		DateTimeFormatter dateformat = DateTimeFormatter.ofPattern(format);
		element.sendKeys(dateformat.format(lastSaturday));
	}
	public static void sendLastSundayDate(WebElement element, String format) {
		LocalDate today = LocalDate.now();
		LocalDate lastSunday = today.with(DayOfWeek.SUNDAY);
		if (lastSunday.isAfter(today) | lastSunday.isEqual(today)) {
			lastSunday = lastSunday.minusWeeks(1);
		}
		DateTimeFormatter dateformat = DateTimeFormatter.ofPattern(format);
		element.sendKeys(dateformat.format(lastSunday));
	}
	public static String otp_number = null;
	public static String fetch_otp(String username, String password, String subject, String sender_email,
								   String otp_text, String otp_length) throws IOException {
		int otpLength = Integer.parseInt(otp_length);
		Properties properties = new Properties();
		// server setting
		properties.put("mail.imap.host", "imap.gmail.com");
		properties.put("mail.imap.port", 993);
		// SSL setting
		properties.setProperty("mail.imap.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.setProperty("mail.imap.socketFactory.fallback", "false");
		properties.setProperty("mail.imap.socketFactory.port", String.valueOf(993));
		Session session = Session.getDefaultInstance(properties);
		String str = null;
		try {
			// connects to the message store
			Store store = session.getStore("imap");
			store.connect(username, password);
//			System.out.println("Connected to Email server….");
			// opens the inbox folder
			Thread.sleep(10000);
			Folder folderInbox = store.getFolder("INBOX");
			folderInbox.open(Folder.READ_ONLY);
			// create a search term for all “unseen” messages
			Flags seen = new Flags(Flags.Flag.SEEN);
			FlagTerm unseenFlagTerm = new FlagTerm(seen, true);
			// create a search term for all recent messages
			Flags recent = new Flags(Flags.Flag.RECENT);
			FlagTerm recentFlagTerm = new FlagTerm(recent, false);
			SearchTerm searchTerm = new OrTerm(unseenFlagTerm, recentFlagTerm);
			// performs search through the folder
			Message[] foundMessages = folderInbox.search(searchTerm);
			Integer messageCount = folderInbox.getMessageCount();
			Integer unreadMessageCount = folderInbox.getUnreadMessageCount();
			for (int i = foundMessages.length - 1; i >= foundMessages.length - 10; i--) {
				Message message = foundMessages[i];
				Address[] froms = message.getFrom();
				String email = froms == null ? null : ((InternetAddress) froms[0]).getAddress();
				if (message.getSubject() == null) {
					continue;
				}
				Date date = new Date();// Getting Present date from the system
				long diff = date.getTime() - message.getReceivedDate().getTime();// Get The difference between two dates
				long diffMinutes = diff / (60 * 1000) % 30; // Fetching the difference of minute
				try {
					String emailBodyText = getMailText(message);
					if (message.getSubject().contains(subject) && email.equals(sender_email)
							&& diffMinutes <= 3) {
						//extract text from raw html text
						Document doc = Jsoup.parse(emailBodyText);
						Element body = doc.body();
						String extractedText = body.text();
						//extract the number
						Pattern pattern = Pattern.compile("\\b\\d{" + otpLength + "}\\b");
						Matcher matcher = pattern.matcher(extractedText);
						if (matcher.find()) {
							otp_number = matcher.group();
							otp_text = otp_text.replaceAll("xxxxxx", otp_number);
							System.out.println("OTP TEXT:" + otp_text);
							if (extractedText.contains(otp_text)) {
								System.out.println("OTP Found: " + otp_number);
							} else {
								System.out.println("No OTP found in the input string.");
							}

						} else {
							System.out.println("No OTP found in the input string.");
						}
						break;
					}
				} catch (NullPointerException expected) {
					// TODO Auto-generated catch block
					expected.printStackTrace();
				}
			}
			// disconnect
			folderInbox.close(false);
			store.close();
		} catch (NoSuchProviderException ex) {
			System.out.println("No provider.");
			ex.printStackTrace();
		} catch (MessagingException ex) {
			System.out.println("Could not connect to the message store.");
			ex.printStackTrace();
		} catch (InterruptedException e) {
			throw new RuntimeException(e);
		}
//		catch (InterruptedException e) {
//			e.printStackTrace();
//		}
//		return ConfirmationCode_code;
		return str;
	}
	public static void enterOtp(WebElement element) throws InterruptedException {
		element.clear();
		Thread.sleep(2000);
		element.sendKeys(otp_number);
	}
	private static boolean textIsHtml = false;
	private static String getMailText(Part p) throws MessagingException, IOException {
		if (p.isMimeType("text/*")) {
			String s = (String) p.getContent();
			textIsHtml = p.isMimeType("text/html");
			return s;
		}
		if (p.isMimeType("multipart/alternative")) {
			// prefer html text over plain text
			Multipart mp = (Multipart) p.getContent();
			String text = null;
			for (int i = 0; i < mp.getCount(); i++) {
				Part bp = mp.getBodyPart(i);
				if (bp.isMimeType("text/plain")) {
					if (text == null)
						text = getMailText(bp);
					continue;
				} else if (bp.isMimeType("text/html")) {
					String s = getMailText(bp);
					if (s != null)
						return s;
				} else {
					return getMailText(bp);
				}
			}
			return text;
		} else if (p.isMimeType("multipart/*")) {
			Multipart mp = (Multipart) p.getContent();
			for (int i = 0; i < mp.getCount(); i++) {
				String s = getMailText(mp.getBodyPart(i));
				if (s != null)
					return s;
			}
		}
		return null;
	}
	public static void printTitleByJS() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		System.out.println(js.executeScript("return document.title;").toString());
	}
	public static void assertTitleByJS(String expected_title) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		Assert.assertEquals(js.executeScript("return document.title;").toString(), expected_title);
	}
	public void changePageBackgroundColour(String color) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.body.style.backgroundColor ='" + color + "';");
	}
	public void changeColour(WebElement element, String color) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].style.backgroundColor = arguments[1];", element, color);
	}
	public void flash(WebElement element) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		String bgcolor = element.getCssValue("backgroundColor");
		for (int i = 0; i <= 15; i++) {
			changeColour(element, "rgb(200,200," + i + ")");
//			changeColour(element, bgcolor);
		}
	}
	public void scrollPageDownWithScrollHeight() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollTo(0,document.body.scrollHeight)");
	}
	public void scrollPageDownWithSpecificHeight(String height) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollTo(0,'" + height + "')");
	}
	public void scrollPageUpWithHeight() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollTo(document.body.scrollHeight,0)");
	}
	public static void refreshBrowserByJS() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("history.go(0)");
	}
	public static void navigateToByJS(String url) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.location= '" + url + "'");
	}
	public static void getTitleByJS() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		String title = js.executeScript("return document.title;").toString();
		System.out.println("Webpage title is: " + title);
	}
	public static void getURLbyJS() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		String url = js.executeScript("return document.URL;").toString();
		System.out.println("Webpage URL is: " + url);
	}
	public static void generateAlertUsingJS(String message) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("alert('" + message + "')");
		Thread.sleep(2000);
	}
	public static void getPageInnerText() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		String innerText = js.executeScript("return document.documentElement.innerText;").toString();
		System.out.println("Inner text is: " + innerText);
	}
	public static void getTextMethod(String locator) throws InterruptedException {
		String getTextValue = getdriver().findElement(By.xpath(locator)).getText();
		System.out.println(getTextValue);
	}
	public void saveData(String variable, String value) {
		store_value.put(variable, value);
	}
	public String retrieveData(String variable) {
		return store_value.get(variable);
	}
	public void pressEnterKeyWithInput(WebElement element) {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(element, Keys.ENTER).perform();
	}
	public void pressBackspaceKey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.BACK_SPACE).perform();
	}
	public void pressTabKey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.TAB).perform();
	}
	public void pressDownArrowKey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.ARROW_DOWN).perform();
	}
	public void pressUpArrowKey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.ARROW_UP).perform();
	}
	public void pressDownkey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.DOWN).perform();
	}
	public void pressEnterKey() {
		Actions actions = new Actions(getdriver());
		actions.sendKeys(Keys.ENTER).perform();
	}
	public void pressBackspaceKeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.BACK_SPACE).perform();
		}
	}
	public void pressTabKeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.TAB).perform();
		}
	}
	public void pressDownArrowKeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.ARROW_DOWN).perform();
		}
	}
	public void pressUpArrowKeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.ARROW_UP).perform();
		}
	}
	public void pressDownkeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.DOWN).perform();
		}
	}
	public void pressEnterKeyForNTimes(String count) {
		Actions actions = new Actions(getdriver());
		for (int i = 0; i < Integer.parseInt(count); i++) {
			actions.sendKeys(Keys.ENTER).perform();
		}
	}
	public void enter_data_with_coordinates(String text, String x, String y) {
		((HasClipboard) getdriver()).setClipboardText(text);
		new TouchAction((PerformsTouchActions) getdriver())
				.press(point(Integer.parseInt(x), Integer.parseInt(y)))
				.waitAction(waitOptions(ofSeconds(1)))
				.release()
				.perform();
	}
	public void locate_element_with_coordinates(String x, String y) {
		new TouchAction((PerformsTouchActions) getdriver())
				.press(point(Integer.parseInt(x), Integer.parseInt(y)))
				.waitAction(waitOptions(ofSeconds(1)))
				.release()
				.perform();
	}
	public void long_press_on_element(String x, String y) {
		new TouchAction((PerformsTouchActions) getdriver())
				.longPress(point(Integer.parseInt(x), Integer.parseInt(y)))
				.waitAction(waitOptions(ofSeconds(1)))
				.release()
				.perform();
	}
	public void tap_on_element(String x, String y) {
		new TouchAction((PerformsTouchActions) getdriver())
				.tap(point(Integer.parseInt(x), Integer.parseInt(y)))
				.waitAction(waitOptions(ofSeconds(1)))
				.release().perform();
	}
	public void move_to_element(String x, String y) {
		new TouchAction((PerformsTouchActions) getdriver())
				.moveTo(point(Integer.parseInt(x), Integer.parseInt(y)))
				.waitAction(waitOptions(ofSeconds(1)))
				.release()
				.perform();
	}
	public void hide_keyboard() {
		new AndroidDriver((Capabilities) getdriver()).hideKeyboard();
	}
	List<List<String>> mainlist = new ArrayList<>();
	public void search_filter_data(String search_header, String variable, String table_path) throws InterruptedException {
		Thread.sleep(5000);
		Actions actions = new Actions(getdriver());
		String xpath = table_path;
		WebElement table = getdriver().findElement(By.xpath(xpath));
		table.click();
		List<WebElement> headerElements = table.findElements(By.xpath(xpath + "/thead/tr/th"));
		List<String> headers = new ArrayList<>();
		for (WebElement headerElement : headerElements) {
			headers.add(headerElement.getText());
		}
		List<WebElement> rowElements = table.findElements(By.xpath(xpath + "/tbody/tr"));
		List<List<String>> rows = new ArrayList<>();
		for (int rowIterate = 0; rowIterate < rowElements.size(); rowIterate++) {
			actions.sendKeys(Keys.ARROW_DOWN).perform();
			List<WebElement> cellElements = rowElements.get(rowIterate).findElements(By.xpath(".//td"));
			List<String> row = new ArrayList<>();
			for (WebElement cellElement : cellElements) {
				row.add(cellElement.getText());
			}
			rows.add(row);
		}
		for (int headerIterate = 0; headerIterate < headers.size(); headerIterate++) {
			int temp = headerIterate;
			List<String> templist = new ArrayList<String>();
			templist.clear();
			for (List<String> r : rows) {
				templist.add(r.get(temp));
			}
			mainlist.add(templist);
		}
		String search = search_header;
		int index = headers.indexOf(search);
		List<String> targetList = mainlist.get(index);
		boolean flag = true;
		for (String element : targetList) {
			if (element.trim().equals(store_value.get(variable).trim())) {
				flag = true;
			} else {
				flag = false;
				System.out.println("## Filter data: " + store_value.get(variable) + " / Table data: " + element + "  ##");
//				break;
			}
		}
		if (flag) {
			System.out.println("## Filter Table Validation - Pass [Search data and Filter data are same] ##");
		} else {
			System.out.println("## Filter Table Validation - Fail [Other data also present against filter data] ##");
		}
		System.out.println("## Total Rows Validated: " + rows.size() + " ##");
	}
	public void save_data_to_variable(String variable, String text) {
		store_value.put(variable, text);
	}
	public void clear_data_from_variable() {
		store_value.clear();
	}
	public void scrollScreen(String point) throws InterruptedException {
		Thread.sleep(2000);
		TouchAction action = new TouchAction<>((PerformsTouchActions) getdriver());
		int startX = driver.manage().window().getSize().width / 2;
		int startY = driver.manage().window().getSize().height / 2;
		int endX = startX;
		int endY = (int) (startY * Float.parseFloat(point));
		action.press(point(startX, startY)).moveTo(point(endX, endY)).release().perform();
	}

	public void getRunTimeValue(WebElement element, String variable) {
		store_value.put(variable, element.getAttribute("value"));
		System.out.println(element.getAttribute("value"));
	}

	public void excel_webtable_data_validation(String table_path, String table_header, String table_row, String action) throws InterruptedException, AWTException {
		Thread.sleep(5000);
		Actions actions = new Actions(getdriver());
		WebElement table = getdriver().findElement(By.xpath(table_path));
		table.click();
		int visible_column = -1;
		int invisble_column = -1;
		List<WebElement> headerElements = table.findElements(By.xpath(table_header));
		List<String> headers = new ArrayList<>();
		for (WebElement headerElement : headerElements) {
			headers.add(headerElement.getText());
		}
		for (WebElement headerElement : headerElements) {
			if (headerElement.isDisplayed()) {
				visible_column += 1;
				invisble_column += 1;
			}
		}
		JavascriptExecutor jsExecutor = (JavascriptExecutor) getdriver();
		List<WebElement> rowElements = table.findElements(By.xpath(table_row));
		List<List<String>> rows = new ArrayList<>();
		int position = invisble_column;
		for (int rowIterate = 0; rowIterate < rowElements.size(); rowIterate++) {
			List<WebElement> cellElements = rowElements.get(rowIterate).findElements(By.xpath(".//td[position() <= " + position + "]"));
			List<String> row = new ArrayList<>();
			for (WebElement cellElement : cellElements) {
				row.add(cellElement.getText().trim());
			}
			for (int move = 0; move < 40; move++) {
				actions.sendKeys(Keys.ARROW_RIGHT).perform();
			}
			for (int colIterate = visible_column; colIterate < headerElements.size(); colIterate++) {
				WebElement invisibleCellElement = rowElements.get(rowIterate).findElement(By.xpath(".//td[" + (colIterate + 1) + "]"));
				row.add(invisibleCellElement.getText().trim());
			}
			rows.add(row);
			for (int move = 0; move < 40; move++) {
				actions.sendKeys(Keys.ARROW_LEFT).perform();
			}
			jsExecutor.executeScript("arguments[0].scrollLeft = 0;", table);
			jsExecutor.executeScript("arguments[0].scrollIntoView(true);", rowElements.get(rowIterate));
		}
		mainlist = new ArrayList<>();
		for (int headerIterate = 0; headerIterate < headers.size(); headerIterate++) {
			int temp = headerIterate;
			List<String> templist = new ArrayList<String>();
			templist.clear();
			for (List<String> r : rows) {
				templist.add(r.get(temp));
			}
			mainlist.add(templist);
		}
		List<List<String>> mainFileList = FileUtility.filedata(rowElements.size());
		int j;
		switch (action) {
			case "EXCLUDE_ROW_1":
				j = 1;
				break;
			case "EXCLUDE_ROW_1,2":
				j = 2;
				break;
			case "EXCLUDE_ROW_1,2,3":
				j = 3;
				break;
			default:
				j = 0;
				break;
		}
		boolean check = true;
		for (int i = 0; i < mainFileList.size(); i++) {
			List<String> firstInnerList = mainlist.get(j);
			List<String> secondInnerList = mainFileList.get(i);
			System.out.println("Table Data (Row wise): " + mainlist.get(j));
			System.out.println("File Data (Row wise) : " + mainFileList.get(i));
			if (new HashSet<>(firstInnerList).equals(new HashSet<>(secondInnerList))) {
				System.out.println("Web table data validation against csv file - Pass \n");
				check = true;
			} else {
				System.out.println("Web table data validation against csv file - Fail (Data mismatch) \n");
				check = false;
			}
			j += 1;
		}
		if (check == false)
			throw new RuntimeException();
	}
	public void zoom_out(String percentage) {
		JavascriptExecutor jsExecutor = (JavascriptExecutor) getdriver();
		jsExecutor.executeScript("document.body.style.zoom = '" + percentage + "';");
	}
	public void zoom_in(String percentage) {
		JavascriptExecutor jsExecutor = (JavascriptExecutor) getdriver();
		jsExecutor.executeScript("document.body.style.zoom = '" + percentage + "';");
	}
	public void table_row_data_order_validation(String sort_header, String table_path, String table_header, String table_row, String action) throws InterruptedException, AWTException {
		Thread.sleep(5000);
		Actions actions = new Actions(getdriver());
		WebElement table = getdriver().findElement(By.xpath(table_path));
		table.click();
		List<WebElement> headerElements = table.findElements(By.xpath(table_header));
		List<String> headers = new ArrayList<>();
		for (WebElement headerElement : headerElements) {
			headers.add(headerElement.getText());
		}
		JavascriptExecutor jsExecutor = (JavascriptExecutor) getdriver();
		List<WebElement> rowElements = table.findElements(By.xpath(table_row));
		List<List<String>> rows = new ArrayList<>();
		for (int rowIterate = 0; rowIterate < rowElements.size(); rowIterate++) {
			List<WebElement> cellElements = rowElements.get(rowIterate).findElements(By.xpath(".//td"));
			List<String> row = new ArrayList<>();
			for (WebElement cellElement : cellElements) {
				row.add(cellElement.getText());
			}
			rows.add(row);
			jsExecutor.executeScript("arguments[0].scrollIntoView(true);", rowElements.get(rowIterate));
		}
		mainlist = new ArrayList<>();
		for (int headerIterate = 0; headerIterate < headers.size(); headerIterate++) {
			int temp = headerIterate;
			List<String> templist = new ArrayList<String>();
			templist.clear();
			for (List<String> r : rows) {
				templist.add(r.get(temp));
			}
			mainlist.add(templist);
		}
		String search = sort_header;
		int index = headers.indexOf(search);
		List<String> targetList = mainlist.get(index);
		if (action.equals("Ascending")) {
			Collections.sort(targetList);
			System.out.println("## After Sorting:" + targetList);
			boolean isAscending = true;
			for (int i = 0; i < targetList.size() - 1; i++) {
				if (targetList.get(i).compareTo(targetList.get(i + 1)) > 0) {
					System.out.println("one:" + targetList.get(i));
					System.out.println("two:" + targetList.get(i + 1) + "\n\n");
					isAscending = false;
					break;
				} else {
					isAscending = true;
				}
			}
			if (isAscending)
				System.out.println("## Ascending Order Validation - Pass ##");
			else
				System.out.println("## Ascending Order Validation - Fail ##");
		} else if (action.equals("Descending")) {
			Collections.sort(targetList, Collections.reverseOrder());
			System.out.println("## After Sorting:" + targetList);
			boolean isDescending = true;
			for (int i = 0; i < targetList.size() - 1; i++) {
				if (targetList.get(i).compareTo(targetList.get(i + 1)) < 0) {
					isDescending = false;
					break;
				}
			}
			if (isDescending)
				System.out.println("## Descending Order Validation - Pass ##");
			else
				System.out.println("## Descending Order Validation - Fail ##");
		}
	}
	public static void enter_dynamic_value_to_dropdown(String variable, WebElement element) throws InterruptedException {
		enterText(element, store_value.get(variable));
		element.sendKeys(Keys.DOWN);
		element.sendKeys(Keys.ENTER);
	}
	public static void enter_dynamic_value_to_dropdown_with_delay(WebElement element, String variable) throws InterruptedException {
		element.clear();
		enterText(element, store_value.get(variable));
		wait2Sec();
		element.sendKeys(Keys.DOWN);
		wait2Sec();
		element.sendKeys(Keys.ENTER);
	}
	Map<String, Integer> store_integer = new HashMap<String, Integer>();
	public void table_row_count(String table_path, String table_row, String variable) throws InterruptedException {
		Thread.sleep(5000);
		WebElement table = getdriver().findElement(By.xpath(table_path));
		table.click();
		List<WebElement> rowElements = table.findElements(By.xpath(table_row));
		store_integer.put(variable, rowElements.size());
	}
	public void compare_table_row_count(String table_path, String table_row, String variable) throws InterruptedException {
		Thread.sleep(5000);
		WebElement table = getdriver().findElement(By.xpath(table_path));
		table.click();
		List<WebElement> rowElements = table.findElements(By.xpath(table_row));
		if (rowElements.size() == store_integer.get(variable))
			System.out.println("##  Row count matches - " + rowElements.size() + " / " + store_integer.get(variable) + " ##");
	}
	public void check_option_availale_in_dropdown(WebElement element, String variable) {
		Select select = new Select(element);
		for (WebElement option : select.getOptions()) {
			if (option.getText().equals(store_value.get(variable)))
				System.out.println("## Option " + option.getText() + " is Present in dropdown ##");
			else
				System.out.println("## Option " + option.getText() + " is Not Present in dropdown ##");
		}
	}
	public void check_option_availale_in_custom_dropdown(WebElement element, String option_xpath, String variable) {
		element.click();
		WebElement option_container = getdriver().findElement(By.xpath(option_xpath));
		WebElement option = option_container.findElement(By.xpath("//*[contains(text(),'" + store_value.get(variable) + "')]"));
		if (option != null)
			System.out.println("## Option " + option.getText() + " is Present in dropdown ##");
		else
			System.out.println("## Option " + option.getText() + " is Not Present in dropdown ##");
	}
	public static boolean ExecuteQueryWithSavedAttribute(String query, String condvalue, String ColumnValue, String Storekey) {
		try {
			Statement stmt = DBconnection.createStatement();
			PreparedStatement sql = DBconnection.prepareStatement(properties.getProperty(query));
			int Paramterindex = 1;
			String[] condvalues = condvalue.split(",");
			for (String condval : condvalues) {
				String condition = "";
				if (!(store_value.get(condval) == null)) {
					condition = store_value.get(condval);
				} else condition = condval;
				sql.setString(Paramterindex, condition);
				Paramterindex++;
			}
			System.out.println("sql:" + sql);
			ResultSet rs = stmt.executeQuery(sql.toString());
			while (rs.next()) {
				OutputValue = rs.getObject(ColumnValue);
			}
			store_value.put(Storekey, OutputValue.toString());
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	public static boolean ExecuteQueryWithoutSavedAttribute(String query, String condvalue) {
		try {
			PreparedStatement sql = DBconnection.prepareStatement(properties.getProperty(query));
			int Paramterindex = 1;
			String[] condvalues = condvalue.split(",");
			for (String condval : condvalues) {
				String condition = "";
				if (!(store_value.get(condval) == null)) {
					condition = store_value.get(condval);
				} else condition = condval;
				sql.setString(Paramterindex, condition);
				Paramterindex++;
			}
			System.out.println("sql:" + sql);
			ResultSet rs = sql.executeQuery();
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	public static void AssertString(String ExpectedVal, String ActualVal) {
		Assert.assertEquals(ExpectedVal, ActualVal);
	}

	public static void AssertStringNotEquals(String ExpectedVal, String ActualVal) {
		Assert.assertNotEquals(ExpectedVal, ActualVal);
	}

	public static void launchMobileApp() throws Exception {
		try {
			loadProperty();
			DesiredCapabilities capabilities = new DesiredCapabilities();
			if (properties.getProperty("Platform").equalsIgnoreCase("Android")) {
				if (properties.getProperty("Environment").equalsIgnoreCase("Local")) {

					capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, properties.getProperty("automationname"));
					capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, properties.getProperty("platformname"));
					capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, properties.getProperty("devicename"));
					capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, properties.getProperty("platformversion"));
					capabilities.setCapability("appPackage", properties.getProperty("appPackage"));
					capabilities.setCapability("appActivity", properties.getProperty("appActivity"));
					androiddriver = new AndroidDriver(new URL(properties.getProperty("mobileURL")), capabilities);
					driver = androiddriver;
					setdriver(driver);
				}
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public static void instalMobileApp() throws Exception {
		try {
			loadProperty();
			DesiredCapabilities capabilities = new DesiredCapabilities();
			if (properties.getProperty("Platform").equalsIgnoreCase("Android")) {
				if (properties.getProperty("Environment").equalsIgnoreCase("Local")) {

					capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, properties.getProperty("automationname"));
					capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, properties.getProperty("platformname"));
					capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, properties.getProperty("devicename"));
					capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION,
							properties.getProperty("platformversion"));
					capabilities.setCapability("otherApps", System.getProperty("user.dir") + File.separator + "Assets" + File.separator + properties.getProperty("apkname"));
					androiddriver = new AndroidDriver(new URL(properties.getProperty("mobileURL")), capabilities);
					driver = androiddriver;
					driver.quit();
				}
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public static void pushFileInMobileDevice(String srcfile, String desfile) throws IOException {
		String path = "/sdcard/download/" + desfile + "";
		androiddriver.pushFile(path, new File(System.getProperty("user.dir") + File.separator + "Assets" + File.separator + srcfile));
	}
	public static void pullFileFromMobileDevice(String srcfile, String desfile) throws IOException {
		String path = "/sdcard/download/" + srcfile + "";
		byte[] fileContent = androiddriver.pullFile(path);
		File file = new File(System.getProperty("user.dir") + File.separator + "Assets" + File.separator + desfile);
		writeByteArrayToFile(file, fileContent);
	}
	public static String replaceChar(String input, String replaceword) {
		return input.replaceAll(Pattern.quote(replaceword), "");
	}
	public static void webtablevalueretrieve(WebElement location, String variable) throws IOException {
		List<WebElement> rows = location.findElements(By.tagName("tr"));
		List<List<String>> tableData = new ArrayList<>();
		for (int rw = 1; rw < rows.size(); rw++) {
			WebElement row = rows.get(rw);
			List<WebElement> cells = row.findElements(By.tagName("td"));
			List<String> rowData = new ArrayList<>();
			for (int col = 0; col < cells.size(); col++) {
				String cellValue = cells.get(col).getText();
				if (!"NA".equals(cellValue)) {
					if("-".equals(cellValue))
						rowData.add("");
					else if (cellValue.contains("$") || cellValue.contains("%") || cellValue.contains(",") )
						rowData.add(cellValue.replaceAll(Pattern.quote("$"),"")
								.replaceAll(Pattern.quote("%"),"")
								.replaceAll(Pattern.quote(","),"")
								.replaceAll(Pattern.quote("("), "")
								.replaceAll(Pattern.quote(")"), "")
								.replaceAll(Pattern.quote("-"), ""));
//					replaceChar(cellValue,"$")
					else
						rowData.add(cellValue.replaceAll("\\s+", " ")
								.replaceAll(Pattern.quote("$"), "")
								.replaceAll(Pattern.quote("%"), "")
								.replaceAll(Pattern.quote("("), "")
								.replaceAll(Pattern.quote(")"), "")
								.replaceAll(Pattern.quote("-"), ""));
				}
			}
			tableData.add(rowData);
		}
        String values="";
		for (List<String> rowData : tableData) {
			values+=rowData;
		}
		if(values.contains("No data found")|| values.contains("No results for specified criteria"))
			values="";
		store_value.put(variable, values);
		System.out.println(variable+":" +store_value.get(variable));
	}
//	public static void webtablevalueretrievewithSpecificColumn(WebElement location, String variable, String headerName) throws IOException {
//		String[] headers= headerName.split(",");
//		List<WebElement> rows = location.findElements(By.tagName("tr"));
//		List<List<String>> tableData = new ArrayList<>();
//		WebElement headerRow = rows.get(0);
//		List<WebElement> headerCells = headerRow.findElements(By.tagName("th"));
//		Map<String, Integer> headerIndexMap = new HashMap<>();
//		for (int i = 0; i < headerCells.size(); i++) {
//			String headerText = headerCells.get(i).getText().trim();
//			headerIndexMap.put(headerText, i);
//		}
//		for (int rw = 1; rw < rows.size(); rw++) {
//			WebElement row = rows.get(rw);
//			List<WebElement> cells = row.findElements(By.tagName("td"));
//			List<String> rowData = new ArrayList<>();
//			for (String header : headers) {
//				if (headerIndexMap.containsKey(header)) {
//					int columnIndex = headerIndexMap.get(header);
//					if (columnIndex < cells.size()) {
//						String cellValue = cells.get(columnIndex).getText();
//						if (!"NA".equals(cellValue) && !cellValue.equals("")) {
//							if ("-".equals(cellValue))
//								rowData.add("");
//							else if (cellValue.contains("$") || cellValue.contains("%") || cellValue.contains(","))
//								rowData.add(cellValue.replaceAll(Pattern.quote("$"), "")
//										.replaceAll(Pattern.quote("%"), "")
//										.replaceAll(Pattern.quote(","), "")
//										.replaceAll(Pattern.quote("("), "")
//										.replaceAll(Pattern.quote(")"), "")
//										.replaceAll(Pattern.quote("-"), "")
//										.replaceAll("\\s+", " "));
//							else
//								rowData.add(cellValue.replaceAll("\\s+", " ")
//										.replaceAll(Pattern.quote("$"), "")
//										.replaceAll(Pattern.quote("%"), "")
//										.replaceAll(Pattern.quote("("), "")
//										.replaceAll(Pattern.quote(")"), "")
//										.replaceAll(Pattern.quote("-"), ""));
//						}
//					}
//				}
//			}
//			tableData.add(rowData);
//		}
//		String values = "";
//		for (List<String> rowData : tableData) {
//			values += rowData;
//		}
//		if(values.contains("No data found")|| values.contains("No results for specified criteria"))
//			values="";
//		store_value.put(variable, values);
//		System.out.println(variable + ":" + store_value.get(variable));
//		}

	public static void webtablevalueretrievewithSpecificColumn(WebElement location, String variable, String headerName) throws IOException {
		String[] headers = headerName.split(",");
		List<List<String>> tableData = new ArrayList<>();
		retrieveTableData(location, headers, tableData);
		List paginationButton=driver.findElements(By.cssSelector("div > button.MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-eualdc-MuiButtonBase-root-MuiIconButton-root[tabindex='0'] > svg[data-testid='KeyboardArrowRightIcon']"));
			int paginationButtonsize = paginationButton.size();
			while (paginationButtonsize > 0) {
				WebElement pagebutton=driver.findElement(By.cssSelector("div > button.MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-eualdc-MuiButtonBase-root-MuiIconButton-root[tabindex='0'] > svg[data-testid='KeyboardArrowRightIcon']"));
				pagebutton.click();
				try {
					Thread.sleep(2000); // Wait for table to reload
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				retrieveTableData(location, headers, tableData);
				paginationButtonsize = driver.findElements(By.cssSelector("div > button.MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-eualdc-MuiButtonBase-root-MuiIconButton-root[tabindex='0'] > svg[data-testid='KeyboardArrowRightIcon']")).size();
			}
		StringBuilder values = new StringBuilder();
		for (List<String> rowData : tableData) {
			values.append(rowData);
		}
		String result = values.toString();
		if (result.contains("No data found") || result.contains("No results for specified criteria")) {
			result = "";
		}
		store_value.put(variable, result);
		System.out.println(variable + ":" + store_value.get(variable));
	}

	private static void retrieveTableData(WebElement location, String[] headers, List<List<String>> tableData) {
		List<WebElement> rows = location.findElements(By.tagName("tr"));
		WebElement headerRow = rows.get(0);
		List<WebElement> headerCells = headerRow.findElements(By.tagName("th"));
		Map<String, Integer> headerIndexMap = new HashMap<>();
		for (int i = 0; i < headerCells.size(); i++) {
			String headerText = headerCells.get(i).getText().trim();
			headerIndexMap.put(headerText, i);
		}
		for (int rw = 1; rw < rows.size(); rw++) {
			WebElement row = rows.get(rw);
			List<WebElement> cells = row.findElements(By.tagName("td"));
			List<String> rowData = new ArrayList<>();
			for (String header : headers) {
				if (headerIndexMap.containsKey(header)) {
					int columnIndex = headerIndexMap.get(header);
					if (columnIndex < cells.size()) {
						String cellValue = cells.get(columnIndex).getText().trim();
						if (!"NA".equals(cellValue) && !cellValue.equals("")) {
							if ("-".equals(cellValue))
								rowData.add("");
							else if (cellValue.contains("$") || cellValue.contains("%") || cellValue.contains(","))
								rowData.add(cellValue.replaceAll(Pattern.quote("$"), "")
										.replaceAll(Pattern.quote("%"), "")
										.replaceAll(Pattern.quote(","), "")
										.replaceAll(Pattern.quote("("), "")
										.replaceAll(Pattern.quote(")"), "")
										.replaceAll(Pattern.quote("-"), "")
										.replaceAll("\\s+", " "));
							else
								rowData.add(cellValue.replaceAll("\\s+", " ")
										.replaceAll(Pattern.quote("$"), "")
										.replaceAll(Pattern.quote("%"), "")
										.replaceAll(Pattern.quote("("), "")
										.replaceAll(Pattern.quote(")"), "")
										.replaceAll(Pattern.quote("-"), ""));
						}
					}
				}
			}
			tableData.add(rowData);
		}
	}

	public static void ExecuteQueryAndSave(String Query,String ColumnValue, String Storekey) throws SQLException, IOException {
	try {
		String result = null;
		Statement stmt = DBconnection.createStatement();
		ResultSet rs = stmt.executeQuery(Query);
		while (rs.next()) {
			result = rs.getString(ColumnValue);
			String numberAsString = String.valueOf(result);
			String[] parts = numberAsString.split("\\.");
			if (parts.length > 1) {
				parts[1] = parts[1].replaceAll("0*$", "");
				numberAsString = parts[0] + (parts[1].isEmpty() ? "" : "." + parts[1]);
			}
			store_value.put(Storekey, numberAsString);
		}
		System.out.println(Storekey+":"+store_value.get(Storekey));
	} catch (SQLException e) {
		System.out.println(e.getMessage());
	}
}
	public static void ExecuteQueryAndSaveListOfValues(String Query,String ColumnValue, String Storekey) throws SQLException, IOException {
		List<String> valuesList = new ArrayList<>();
		try {
			Object result = null;
			Statement stmt = DBconnection.createStatement();
			ResultSet rs = stmt.executeQuery(Query);
			while (rs.next()) {
				result = rs.getObject(ColumnValue);
				String numberAsString = String.valueOf(result);
				String[] parts = numberAsString.split("\\.");
				if (parts.length > 1) {
					parts[1] = parts[1].replaceAll("0*$", "");
					numberAsString = parts[0] + (parts[1].isEmpty() ? "" : "." + parts[1]);
				}
				valuesList.add(numberAsString);
			}
			String values="";
			for (String list : valuesList) {
				values=values+","+list;
			}
			store_value.put(Storekey,values);
			System.out.println(Storekey+":"+store_value.get(Storekey));
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	public static boolean verifyTableHeaders(String locator, String expectedHeadersList) {
		List<WebElement> actualHeaderElements = driver.findElements(By.xpath(locator));
		String[] expectedHeaders = expectedHeadersList.split(",\\s*",-1);
		if (actualHeaderElements.size() != expectedHeaders.length) {
			return false;
		}
		for (int i = 0; i < expectedHeaders.length; i++) {
			String expectedHeader = expectedHeaders[i];
			String actualHeader = actualHeaderElements.get(i).getText();
			if (!expectedHeader.equals(actualHeader)) {
				return false;
			}
		}
		return true;
	}
	public static void accountLinkwebtablevalueretrieve(WebElement location, String variable) throws IOException {
		List<WebElement> rows = location.findElements(By.tagName("tr"));
		List<List<String>> tableData = new ArrayList<>();
		List<String> header = new ArrayList<>();
		WebElement headerRow = rows.get(0);
		List<WebElement> headerCells = headerRow.findElements(By.tagName("th"));
		int accountTypeIndex = -1;
		int accessLevelIndex = -1;
		for (int i = 0; i < headerCells.size(); i++) {
			String columnHeader = headerCells.get(i).getText().trim();
			header.add(columnHeader);
			if ((columnHeader).contains("Account Type")) {
				accountTypeIndex = i;
			} else if ((columnHeader).contains("Access Level")) {
				accessLevelIndex = i;
			}
		}
		for (int rw = 1; rw < rows.size(); rw++) {
			WebElement row = rows.get(rw);
			List<WebElement> cells = row.findElements(By.tagName("td"));
			List<String> rowData = new ArrayList<>();
			for (int col = 0; col < cells.size(); col++) {
				String cellValue = cells.get(col).getText();
				if (!"NA".equals(cellValue)) {
					if ("-".equals(cellValue)) {
						rowData.add("");
					}
					else if(cellValue.equals("")){}
						else if (cellValue.contains("$") || cellValue.contains("%") || cellValue.contains(",")) {
						rowData.add(cellValue.replaceAll(Pattern.quote("$"), "")
								.replaceAll(Pattern.quote("%"), "")
								.replaceAll(Pattern.quote(","), "")
								.replaceAll(Pattern.quote("("), "")
								.replaceAll(Pattern.quote(")"), "")
								.replaceAll(Pattern.quote("-"), ""));
					} else {
						rowData.add(cellValue);
					}
				}
			}
			if (accountTypeIndex != -1 && header.get(accountTypeIndex).contains("Account Type")) {
				String accountTypeValue = rowData.get(accountTypeIndex);
				switch (accountTypeValue.trim()) {
					case "Business trust":
						rowData.set(accountTypeIndex, "3");
						break;
					case "Individual":
						rowData.set(accountTypeIndex, "1");
						break;
					case "Unclassified":
						rowData.set(accountTypeIndex, "0");
						break;
					case "Trust":
						rowData.set(accountTypeIndex, "2");
						break;
					case "Custodian":
						rowData.set(accountTypeIndex, "4");
						break;
					case "Corporation":
						rowData.set(accountTypeIndex, "5");
						break;
					case "Estate":
						rowData.set(accountTypeIndex, "6");
						break;
					case "Living Trust":
						rowData.set(accountTypeIndex, "7");
						break;
					case "Joint":
						rowData.set(accountTypeIndex, "8");
						break;
					case "JTWROS":
						rowData.set(accountTypeIndex, "9");
						break;
					case "JTWCP":
						rowData.set(accountTypeIndex, "10");
						break;
					case "JTWTIC":
						rowData.set(accountTypeIndex, "11");
						break;
					case "IRA":
						rowData.set(accountTypeIndex, "12");
						break;
				}
			}
			if (accessLevelIndex != -1 && header.get(accessLevelIndex).equalsIgnoreCase("Access Level")) {
				String accessLevelValue = rowData.get(accessLevelIndex);
				switch (accessLevelValue.trim()) {
					case "Viewing Only":
						rowData.set(accessLevelIndex, "1");
						break;
					case "Viewing and Trading":
						rowData.set(accessLevelIndex, "8");
						break;
				}
			}
			tableData.add(rowData);
		}
		final int sortByColumn = 0;
		Collections.sort(tableData, Comparator.comparing(row -> row.get(sortByColumn)));
		String values = "";
		for (List<String> rowData : tableData) {
			values += rowData;
		}
		store_value.put(variable, values);
		System.out.println(variable + ":" + store_value.get(variable));
	}

	public static boolean findAndRemoveFile(String filename) {
		String directoryPath=System.getProperty("user.dir") + File.separator + "Assets";
		File directory = new File(directoryPath);
		boolean filenameContains=false;
		if (!directory.exists()) {
			System.err.println("Directory not found: " + directoryPath);
		}
		File[] files = directory.listFiles();
		if (files != null) {
			for (File file : files) {
				if (file.getName().contains(filename)) {
					System.out.println(file.getName() + " downloaded successfully.");
					filenameContains = true;
					file.delete();
				}
			}
		}
		return filenameContains;
	}
	public static void deleteEDelivery() throws InterruptedException {
		List<WebElement> elements= driver.findElements(By.xpath("//button[text()='Delete']"));
		if (!elements.isEmpty()) {
			WebElement element = elements.get(0);
				element.click();
				wait5Sec();
				WebElement DeletedMessage = driver.findElement(By.xpath("//*[text()='eDelivery Deleted Successfully']"));
				DeletedMessage.isDisplayed();
				wait10Sec();
			}
		}
	public boolean compareVariables(String apiResponseVariable, String webTableVariable) {
		List<String> list1 = ListFromString(apiResponseVariable);
		List<String> list2 = ListFromString(webTableVariable);
		boolean areEqual = compareLists(list1, list2);
		return areEqual;
	}

	public boolean compareString(String apiResponseVariable, String webTableVariable) {
		List<String> list1 = ListFromString(apiResponseVariable);
		List<String> list2 = ListFromString(webTableVariable);
		boolean areEqual = compareList(list1, list2);
		return areEqual;
	}

	private static List<String> ListFromString(String input) {
		List<String> entries = new ArrayList<>();
		String[] parts = input.split("\\]\\[");
		for (String part : parts) {
			// Remove "TransactionHistory:[" and "]" from the first and last entries
			part = part.replace("[", "").replace("]", "");
			entries.add(part);
		}
		return entries;
	}

	private static boolean compareLists(List<String> list1, List<String> list2) {
		return list1.containsAll(list2) && list2.containsAll(list1);
	}

	private static boolean compareList(List<String> list1, List<String> list2) {
			if (!list2.containsAll(list1)) {
				return false;
			}
			return true;
		}

	public static void deleteifexists(String locator) throws InterruptedException {
		List<WebElement> elements= driver.findElements(By.xpath(locator));
		if (!elements.isEmpty()) {
			WebElement element = elements.get(0);
			element.click();
			wait5Sec();
			String Yes="//button[text()='Yes']";
			locatorstowebelement(Yes).click();
			wait5Sec();
		}
	}

	public void get_Substring(WebElement element, String startIndex, String endIndex, String variable) {
		try {
			String originalString = element.getText();
			String substringText= originalString.substring(Integer.parseInt(startIndex), Integer.parseInt(endIndex));
			System.out.println("Extracted Substring is: " +substringText);
			store_value.put(variable, substringText.replaceAll("\\s+", " ")
					.replaceAll(Pattern.quote("$"), "")
					.replaceAll(Pattern.quote("%"), "")
					.replaceAll(Pattern.quote("("), "")
					.replaceAll(Pattern.quote(")"), "")
					.replaceAll(Pattern.quote("-"), ""));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void columnsortorder(String element,String headerName,String sortorder) throws Exception {
		ArrayList<String> obtainedList = new ArrayList<>();
		WebElement elementList = driver.findElement(By.xpath(element));
		List<WebElement> rows = elementList.findElements(By.tagName("tr"));
		int columnIndex = 1;
		List<WebElement> headerCells = rows.get(0).findElements(By.tagName("th"));
		for (int i = 0; i < headerCells.size(); i++) {
			WebElement cell = headerCells.get(i);
			if (cell.getText().trim().equals(headerName)) {
				columnIndex = i + 1;
				break;
			}
		}
		if (columnIndex == -1) {
			throw new Exception("Column with header name '" + headerName + "' not found.");
		}
		for (int row = 1; row < rows.size(); row++) {
			WebElement cell = rows.get(row).findElement(By.xpath(".//td[" + columnIndex + "]"));
			obtainedList.add(cell.getText().trim());
		}
		ArrayList<String> sortedList = new ArrayList<>();
		for (String s : obtainedList) {
			sortedList.add(s);
		}
		if (sortorder.equalsIgnoreCase("ascending order")) {
			Collections.sort(sortedList);
		} else {
			Collections.sort(sortedList);
			Collections.reverse(sortedList);
		}
		System.out.println("obtainedList:" + obtainedList);
		System.out.println("sortedList:" + sortedList);
		Assert.assertTrue(sortedList.equals(obtainedList));
	}

	public void todayminusdate(String minus, String variable, String dateformat){
		LocalDate today = LocalDate.now();
		LocalDate DaysAgo = today.minusDays(Integer.parseInt(minus));
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateformat);
		String formattedDate = DaysAgo.format(formatter);
		store_value.put(variable, formattedDate);
		System.out.println(variable+":"+formattedDate);
		}

	public void getdate(String requireddate, String variable, String dateformat) {
		LocalDate today = LocalDate.now();
		LocalDate ThisweekStartDate=today.with(TemporalAdjusters.previousOrSame(DayOfWeek.SUNDAY));
		LocalDate ThisweekEndDate=today.with(TemporalAdjusters.nextOrSame(DayOfWeek.SATURDAY));
		LocalDate currentTaxYearStartDate=today.withDayOfYear(1);
		LocalDate date = null;
		requireddate = requireddate.toLowerCase();
		switch (requireddate) {
			case "thisweekstartdate":
				date= ThisweekStartDate;
				break;
			case "thisweekenddate":
				date= ThisweekEndDate;
				break;
			case "lastweekstartdate":
				date= ThisweekStartDate.minusWeeks(1);
				break;
			case "lastweekenddate":
				date= ThisweekEndDate.minusWeeks(1);
				break;
			case "mtdstartdate":
				date= today.with(TemporalAdjusters.firstDayOfMonth());
				break;
			case "currentquarterstartdate":
				date= today.with(today.getMonth().firstMonthOfQuarter()).with(TemporalAdjusters.firstDayOfMonth());
				break;
			case "currenttaxyearstartdate":
				date= currentTaxYearStartDate;
				break;
			case "priortaxstartdate":
				date= currentTaxYearStartDate.minusYears(1);
				break;
			case "priortaxenddate":
				date= currentTaxYearStartDate.minusDays(1);
				break;
			case "3yearsback":
				date = today.minusYears(3);
				int currentMonth = today.getMonthValue();
				int currentDate = today.getDayOfMonth();
				int targetDate = date.getDayOfMonth();
				if (currentMonth == 2 && currentDate == 29 && !date.isLeapYear()) {
					date = date.withDayOfMonth(Math.min(targetDate, 28));
				}
				break;
		}
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateformat);
		String formattedDate = date.format(formatter);
		store_value.put(variable, formattedDate);
		System.out.println(requireddate+":"+formattedDate);
	}

	public static void deleteSymbol(String symbol) throws InterruptedException {
		List<WebElement> elements= driver.findElements(By.xpath(getProperty("WatchlistsTable")+"[text()='"+symbol+"']"));
		if (!elements.isEmpty()) {
			click(locatorstowebelement(getProperty("WatchlistSettings")));
			wait2Sec();
			click(locatorstowebelement(getProperty("WatchListRemoveReorderSymbol")));
			wait2Sec();
			driver.findElement(By.xpath("//span[text()='"+symbol+"']/parent::div/parent::div//preceding-sibling::div"))
							.click();
			wait2Sec();
			click(locatorstowebelement(getProperty("WatchListRemoveSymbol")));
			wait10Sec();
			click(locatorstowebelement(getProperty("WatchListBackToSettings")));
			wait2Sec();
			click(locatorstowebelement(getProperty("WatchListBackTo")));
			wait2Sec();
			System.out.println("Deleted the symbol");
		}
	}

	public static void fetch_mail(String username, String password, String subject, String sender_email, String content,
								   String Variable) throws IOException {
		Properties properties = new Properties();
		properties.put("mail.imap.host", "imap.gmail.com");
		properties.put("mail.imap.port", 993);
		properties.setProperty("mail.imap.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.setProperty("mail.imap.socketFactory.fallback", "false");
		properties.setProperty("mail.imap.socketFactory.port", String.valueOf(993));
		Session session = Session.getDefaultInstance(properties);
		String mailText = "";
		try {
			Store store = session.getStore("imap");
			store.connect(username, password);
			Thread.sleep(10000);
			Folder folderInbox = store.getFolder("INBOX");
			folderInbox.open(Folder.READ_ONLY);
			Flags seen = new Flags(Flags.Flag.SEEN);
			FlagTerm unseenFlagTerm = new FlagTerm(seen, true);
			Flags recent = new Flags(Flags.Flag.RECENT);
			FlagTerm recentFlagTerm = new FlagTerm(recent, false);
			SearchTerm searchTerm = new OrTerm(unseenFlagTerm, recentFlagTerm);
			Message[] foundMessages = folderInbox.search(searchTerm);
			for (int i = foundMessages.length - 1; i >= foundMessages.length - 10; i--) {
				Message message = foundMessages[i];
				Address[] froms = message.getFrom();
				String email = froms == null ? null : ((InternetAddress) froms[0]).getAddress();
				if (message.getSubject() == null) {
					continue;
				}
				Date date = new Date();
				long diff = date.getTime() - message.getReceivedDate().getTime();
				long diffMinutes = diff / (60 * 1000) % 30;
				try {
					String emailBodyText = getMailText(message);
					if (message.getSubject().contains(subject) && email.equals(sender_email)
							&& diffMinutes <= 1) {
						Document doc = Jsoup.parse(emailBodyText);
						Element body = doc.body();
						String extractedText = body.text();
						if(extractedText.contains(content))
						{
							mailText+=extractedText;
						}
					}
				} catch (NullPointerException expected) {
					expected.printStackTrace();
				}
			}
			store_value.put(Variable, mailText);
			System.out.println(Variable+":"+mailText);
			folderInbox.close(false);
			store.close();
		} catch (NoSuchProviderException ex) {
			System.out.println("No provider.");
			ex.printStackTrace();
		} catch (MessagingException ex) {
			System.out.println("Could not connect to the message store.");
			ex.printStackTrace();
		} catch (InterruptedException e) {
			throw new RuntimeException(e);
		}
	}

	public void pressKeyOnlyOperationNTimes(String Keywords, String count) {
		Actions actions = new Actions(getdriver());
		for (int startcount = 0; startcount <= Integer.parseInt(count); startcount++) {
			switch (Keywords) {
				case "Enter":
					actions.sendKeys(Keys.ENTER).perform();
					break;
				case "ArrowUp":
					actions.sendKeys(Keys.ARROW_UP).perform();
					break;
				case "ArrowDown":
					actions.sendKeys(Keys.ARROW_DOWN).perform();
					break;
				case "BackSpace":
					actions.sendKeys(Keys.BACK_SPACE).perform();
					break;
				case "ArrowLeft":
					actions.sendKeys(Keys.ARROW_LEFT).perform();
					break;
				case "ArrowRight":
					actions.sendKeys(Keys.ARROW_RIGHT).perform();
					break;
				case "Delete":
					actions.sendKeys(Keys.DELETE).perform();
					break;
				case "PageUp":
					actions.sendKeys(Keys.PAGE_UP).perform();
					break;
				case "PageDown":
					actions.sendKeys(Keys.PAGE_DOWN).perform();
					break;
				case "Tab":
					actions.sendKeys(Keys.TAB).perform();
					break;
				case "Ctrl":
					actions.sendKeys(Keys.CONTROL).perform();
					break;
				case "Shift":
					actions.sendKeys(Keys.SHIFT).perform();
					break;
				case "Alt":
					actions.sendKeys(Keys.ALT).perform();
					break;
			}
		}
	}

	public static void waitForNSec(int second) throws InterruptedException {
		Thread.sleep(second * 1000);
	}

    public static void enterValueFromPropertyValue(WebElement element, String text) throws InterruptedException {
        waitForElement(element);
        element.clear();
        Thread.sleep(2000);
        element.sendKeys(properties.getProperty(text));
        name_field = text;
    }

	public static void selectFromDateToDate(String CurrentDay) throws InterruptedException {
		click(locatorstowebelement(getProperty("StartDateCalenderIcon")));
		wait2Sec();
		click(locatorstowebelement(getProperty("RandomMonthCurrentDate")));
		wait5Sec();
		click(locatorstowebelement(getProperty("EndDateCalenderIcon")));
		wait2Sec();
		LocalDate today = LocalDate.now();
		System.out.println(today);
		LocalDate CurrentNextDay = today.plusDays(1);
		WebElement dateElement = driver.findElement(By.xpath("//button[text()=" + CurrentNextDay.getDayOfMonth() + "]"));
		dateElement.click();
		System.out.println(CurrentNextDay);
	}

	public static void selectLastPageLastRecord(String locator) throws InterruptedException {
		int elements = driver.findElements(By.xpath(getProperty("AlogTableLastPageIcon"))).size();
		if (elements > 0) {
			click(locatorstowebelement(getProperty("AlogTableLastPageIcon")));
			wait2Sec();
			int tablesize = driver.findElements(By.xpath(locator)).size();
			System.out.println(tablesize);
			Thread.sleep(5000);
			click(driver.findElement(By.xpath(locator + "[" + tablesize + "]")));
		} else {
			int tablesize = driver.findElements(By.xpath(locator)).size();
			System.out.println(tablesize);
			Thread.sleep(5000);
			click(driver.findElement(By.xpath(locator + "[" + tablesize + "]")));

		}
	}

		public static void assertUIvalueUsingRuntimeSaveNumber (WebElement UIvalue, String variable, String Query, String Result) throws SQLException, ParseException {
			String finalDBValue = null;
			String valueFromUI = null;
			String FinalUIValue = null;

			Statement stmt = DBconnection.createStatement();
			PreparedStatement preparedStatement = DBconnection.prepareStatement(Query);

			System.out.println("Store Number: " + store_value.get(variable));
			preparedStatement.setString(1, store_value.get(variable).trim());
			System.out.println("sql:" + preparedStatement);
			ResultSet rs = stmt.executeQuery(preparedStatement.toString());
			while (rs.next()) {
				OutputValue = rs.getObject(1);
			}
			String dbValue = String.valueOf(OutputValue).trim();
			System.out.println("DB value: " + dbValue);


			switch (Result) {
				case "when Both are equal":
					valueFromUI = UIvalue.getText().trim();
					System.out.println("Value from UI: " + valueFromUI);
					Assert.assertEquals(dbValue, valueFromUI);

					break;

				case "when DB value contains special character":
					valueFromUI = UIvalue.getText().replace("$", "").replace(",", "");
					System.out.println("Value from UI: " + valueFromUI);
					String[] parts = dbValue.split("\\.");
					System.out.println("Value from DB3: " + dbValue);

					Assert.assertTrue(valueFromUI.contains(dbValue));

					if (parts.length > 1) {
						parts[1] = parts[1].replaceAll("0*$", "");
						finalDBValue = parts[0] + (parts[1].isEmpty() ? "" : "." + parts[1]);
						System.out.println("Final DB Value: " + finalDBValue);
						Assert.assertTrue(valueFromUI.contains(finalDBValue));
					}
					break;

				case "By changing the Date format":
					SimpleDateFormat oldFormat = new SimpleDateFormat("yyyy-MM-dd");
					SimpleDateFormat newFormat = new SimpleDateFormat("MM/dd/yyyy");
					Date date = oldFormat.parse(dbValue);
					String uiFormattedDate = newFormat.format(date);
					valueFromUI = UIvalue.getText();
					String arrayValueFromUI[] = valueFromUI.split(" ");
					System.out.println("Value from UI: " + arrayValueFromUI[0]);
					System.out.println("UIFormat " + uiFormattedDate);
					Assert.assertEquals(uiFormattedDate, arrayValueFromUI[0]);
					break;
				case "UI-DB values match after decimal Round off":
					BigDecimal NumericValue = new BigDecimal(dbValue);
					dbValue = NumericValue.setScale(1, RoundingMode.HALF_UP).toString();
					System.out.println("DB value: " + dbValue);
					FinalUIValue = UIvalue.getText().trim();
					FinalUIValue = FinalUIValue.replaceAll(Pattern.quote("$"), "").replaceAll(Pattern.quote(","), "");
					System.out.println("UI value : " + FinalUIValue);
					if (isNumeric(FinalUIValue)) {
						BigDecimal numericValue = new BigDecimal(FinalUIValue);
						FinalUIValue = numericValue.setScale(0, RoundingMode.HALF_UP).toString();
						finalDBValue = numericValue.setScale(0, RoundingMode.HALF_UP).toString();
						System.out.println("After Round off UI Value: " + FinalUIValue);
						System.out.println("After Round off DB Value: " + finalDBValue);
						Assert.assertEquals(finalDBValue, FinalUIValue);
					}

					break;


			}
		}


	}




