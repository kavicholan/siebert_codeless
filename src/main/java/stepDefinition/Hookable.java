package stepDefinition;

import baseClass.BaseClass;
import com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.junit.Rule;
import org.junit.rules.TestName;
import testRailIntegration.APIClient;
import testRailIntegration.APIException;
import testRailIntegration.TestRailAccount;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import java.io.File;
import java.io.FileOutputStream;

public class Hookable extends BaseClass {
	public static int totalcase, failedcase;
	public static APIClient client = null;
	public static final int FAIL_STATE = 5;
	public static final int SUCCESS_STATE = 1;
	public static final String SUCCESS_COMMENT = "This test is passed with Selenium";
	public static final String FAILED_COMMENT = "This test is failed with Selenium";
	@Rule
	public TestName testName = new TestName();
	private String runId = "GetFromProp";
	@Before
	public void before(Scenario scenario) throws Exception {

		System.out.println("---------------- Scenario Starts -----------------------");
		BaseClass.testcasename = scenario.getName();
		System.out.println("Scenario Name ---->" + scenario.getName());
		totalcase++;
	}

	@After
	public void after(Scenario scenario) throws IOException, Exception {
		try {
			if (!scenario.isFailed()) {
				System.out.println(scenario.getName() + " test Execution Passed");

			}

			else {
				failedcase++;
				System.out.println(scenario.getName() + " test Execution Failed");
				scenario.log(scenario.getName() + " is failed");
				System.out.println(scenario.getName());

				Thread.sleep(2000);
				ExtentCucumberAdapter.addTestStepScreenCaptureFromPath(BaseClass
						.convertscrtobase(BaseClass.takeSnapShot("Error" + Thread.currentThread().getId() + ".png")));
				Thread.sleep(2000);
				driver.close();
			}

			if (properties.getProperty("Testrail_Execution").equalsIgnoreCase("TRUE")) {
				logResultToTestRail(scenario);
			}
			if (getdriver() != null) {
				getdriver().close();
			}
			buildReport();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		System.out.println("--------------- -Scenario Ends and browser closed -----------------------");
	}

	public static void buildReport() throws Exception {
		StringBuilder builder = new StringBuilder();

		try {
			builder.append("<html>" + "<head><style>table {border-collapse: collapse;}"
					+ "table, td, th {border: 2px solid black;font-weight: bold;}</style></head>" + "<body>"
					+ "<p>Hi All,<p>" + "<p>We have successfully executed Test Automation Suite</p>"
					+ "<p><b>Test Summary :</b></p>" + "<table>" + "<tr>" + "<td><font color='Purple'>TestCases: "
					+ Hookable.totalcase + "</font></td>" + "<td><font color='Green'>Passed: "
					+ (Hookable.totalcase - Hookable.failedcase) + "</font></td>" + "<td><font color='Red'>Failed: "
					+ Hookable.failedcase + "</font></td>" + "</tr>" + "<tr>\r\n" + "</table>"
					+ "<p><b>For Detailed Report, Please find the attachment.</b></p>"
					+ "<p><b><font color='#00BFFF'>Testing Team</font></b> </p>"
					+ "<pre>******* Happy Testing *******</pre>" + "</blockquote>" + "<br>" + "</html>");

			File summaryLocation = new File(System.getProperty("user.dir") + File.separator + "Summary.html");
			if (summaryLocation.exists()) {
				summaryLocation.delete();
				Thread.sleep(5000);
				summaryLocation.createNewFile();
			}
			OutputStream outputstream = new FileOutputStream(summaryLocation);
			Writer writer = new OutputStreamWriter(outputstream);
			writer.write(builder.toString());
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void logResultToTestRail(Scenario scenario) {
		String sname = scenario.getName();
		String[] sNameArray = sname.split("_");
		String caseId = sNameArray[0];
		System.out.println(caseId);
		Map<String, Serializable> data = new HashMap<>();
		if (!scenario.isFailed()) {
			data.put("status_id", SUCCESS_STATE);
			data.put("comment", SUCCESS_COMMENT);
		} else {
			data.put("status_id", FAIL_STATE);
			data.put("comment", FAILED_COMMENT);
		}
		if (!caseId.equals("")) {
			try {
				client = TestRailAccount.testRailApiClient();
				runId = properties.getProperty("RunID");
				System.out.println(runId);
				System.out.println(caseId);
				System.out.println(data);
				client.sendPost("add_result_for_case/" + runId + "/" + caseId, data);
			} catch (IOException | APIException e) {
				e.printStackTrace();
			}
		}
	}
}
