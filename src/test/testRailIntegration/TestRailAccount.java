package testRailIntegration;



import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import baseClass.BaseClass;

public class TestRailAccount {

    public static APIClient testRailApiClient() throws IOException {
    	
        String baseUrl = BaseClass.properties.getProperty("Testrail_baseUrl");
        String usernameTestRail =BaseClass.properties.getProperty("TestRail_username").trim();
        String passwordTestRail = BaseClass.properties.getProperty("TestRail_password").trim();

        APIClient client = new APIClient(baseUrl);
        client.setUser(usernameTestRail);
        client.setPassword(passwordTestRail);

        return client;
    }



    public static Properties readPropertiesFile(String fileName) throws IOException {

        FileInputStream fis = null;
        Properties prop = null;
        try {
            fis = new FileInputStream(fileName);
            prop = new Properties();
            prop.load(fis);
        } catch (FileNotFoundException fnfe) {
            fnfe.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } finally {
            fis.close();
        }
        return prop;
    }
}
