package Engine;

import baseClass.BaseClass;

import java.io.File;

public class runner {

	public static void main(String[] args) {
		try {
			BaseClass.loadProperty();
			System.setProperty("extent.reporter.html.start", "true");
			// System.setProperty("extent.reporter.html.config",
			// System.getProperty("user.dir") + File.separator + "extent-config.xml");
			System.setProperty("extent.reporter.html.out",
					System.getProperty("user.dir") + File.separator + "AutomationReport.html");

			cucumber.api.cli.Main.main(new String[] {"--threads","1","-g", "/stepDefinition",
					System.getProperty("user.dir") + File.separator + "features/", "-p",
					"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:", "-t", "@EmployeeStockPortal-Transactions"});

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}