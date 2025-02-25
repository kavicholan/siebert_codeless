package baseClass;

import org.junit.Assert;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;

public class CSVVerification {
        private static final String CSV_FILE_PATH = "/home/yakshana/DW/Siebert-automation/Assets/TESTDATA001_GRANT_CTVEST_FULL_20240215 011710.csv";
        private static final String DB_URL = "jdbc:postgresql://54.85.9.34:5432/siebertdb";
        private static final String DB_USER = "postgres";
        private static final String DB_PASSWORD = "Password#2022";
      public static Connection DBconnection = null;
    public static void CSVVerification() throws IOException, SQLException {
        BufferedReader reader = new BufferedReader(new FileReader(CSV_FILE_PATH));
        String line;
        String[] headers = null;
        String FileName= "CTVEST";
        if ((line = reader.readLine()) != null) {
        headers = line.split("\t");
        }
        DBconnection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        while ((line = reader.readLine()) != null) {
        String[] values = line.split("\t");
        processCSVLine(values,FileName);
        }
        System.out.println("Records are displaying in Database.");
                reader.close();
        }
        private static void processCSVLine(String[] values, String FileName) throws SQLException {
                    if (values.length == 1) {
                        String[] individualValues = values[0].split(",");
                        boolean isVerified = false;
                        String query="";
                        int startColumn;
                        int endColumn;
                        PreparedStatement statement;
                        switch (FileName){
                            case "CTVEST":
                                query="SELECT * FROM \"Siebert-Cert\".grant_and_award_vesting_export WHERE participant_id = ? AND grant_number = ? AND grant_type = ? And shares_granted = CAST(? AS INT)"+
                                        "And grant_date = CAST(? AS DATE) And expiration_date= CAST(? AS DATE);";
                                startColumn=1;
                                endColumn=6;
                                isVerified= verifyDatabase(individualValues,query,startColumn,endColumn);
                                Assert.assertTrue(isVerified);
                        }
                        Assert.assertTrue(isVerified);
                    }
            }
            private static boolean verifyDatabase(String[] individualValues, String query, int startColumn, int endColumn) throws SQLException {
                    PreparedStatement statement = DBconnection.prepareStatement(query);
                    statement.setObject(1, individualValues[0]);
                        for (int column = startColumn; column <= endColumn; column++) {
                                statement.setObject(column - startColumn + 2, individualValues[column-1]);
                        }
                        ResultSet resultSet = statement.executeQuery();
                        return resultSet.next();
            }
    }



