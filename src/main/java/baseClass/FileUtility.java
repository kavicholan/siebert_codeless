package baseClass;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import com.opencsv.CSVReader;
import java.util.*;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.io.FileInputStream;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class FileUtility extends BaseClass{
    static String filePath = "";
    public static void validateFile()
    {
        String directoryPath = System.getProperty("user.dir") + File.separator + "Assets";
        File directory = new File(directoryPath);
        if (directory.exists() && directory.isDirectory()) {
            File[] files = directory.listFiles();
            if (files != null && files.length > 0) {
                for (File file : files) {
                    if (file.isFile()) {
                        filePath = file.toString();
                    }
                }
            } else {
                System.out.println("## No files found in the directory ##");
            }
        } else {
            System.out.println("## Invalid directory path ##");
        }
    }
    public static List<List<String>> filedata(int row) {
        validateFile();
        List<String> csvColumn = new ArrayList<>();
        List<List<String>> fileList = null;
        try (Reader reader = new FileReader(filePath);
             CSVParser csvParser = CSVFormat.DEFAULT.parse(reader)) {
            List<String> columnValues = new ArrayList<>();
            int rowCount = 0;
            int columnCount = 0;
            CSVRecord headerRecord = csvParser.iterator().next();
            for (String value : headerRecord) {
                columnValues.add(value);
                columnCount += 1;
            }
            csvColumn.add(columnValues.toString());
            List<List<String>> rows = new ArrayList<>();
            int count = 1;
            for (CSVRecord csvRecord : csvParser) {
                List<String> rowValues = new ArrayList<>();
                if (count <= row) {
                    for (String value : csvRecord) {
                        rowValues.add(value.trim());
                    }
                    rows.add(rowValues);
                }
                count += 1;
            }
            fileList = new ArrayList<>();
            for (int headerIterate = 0; headerIterate < columnCount; headerIterate++) {
                int temp = headerIterate;
                List<String> templist = new ArrayList<String>();
                templist.clear();
                for (List<String> r : rows) {
                    templist.add(r.get(temp));
                    count += 1;
                }
                fileList.add(templist);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return fileList;
    }
    static List<String> rowData = new ArrayList<>();
    public static void Excelvalueretrieve(String excel, String sheet, int row,String var) throws IOException {
        try {
            String filePath = System.getProperty("user.dir") + File.separator + "Assets"+File.separator+excel;
            String sheetName = sheet;
            int rowNumber = row;
            String variable= var;
            store_value.put(variable, replaceChar(readExcelData(filePath, sheetName, rowNumber-1).toString(),"\\s"));
            System.out.println(variable+":" +store_value.get(variable));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private static  List<String> readExcelData(String filePath, String sheetName, int rowNumber) throws IOException {
        FileInputStream fis = new FileInputStream(filePath);
        XSSFWorkbook workbook = new XSSFWorkbook(fis);
        XSSFSheet sheet = workbook.getSheet(sheetName);
        Row dataRow = sheet.getRow(rowNumber);
        Iterator<Cell> dataCellIterator = dataRow.cellIterator();
        DataFormatter dataFormatter = new DataFormatter();
        while (dataCellIterator.hasNext()) {
            Cell dataCell = dataCellIterator.next();
            String cellValue = dataFormatter.formatCellValue(dataCell);
            rowData.add(cellValue.toString());
        }
        workbook.close();
        fis.close();
        return rowData;
    }
    public static  void readCSVData(String rowNumber,String filePath,  String Header) throws IOException  {
        String csvFilePath = filePath;
        try (CSVReader reader = new CSVReader(new FileReader(csvFilePath))) {
            String[] requiredColumns = Header.split(",");
            String[] headers = reader.readNext(); // Read headers
            if (headers != null) {
                Map<String, Integer> columnIndexMap = new HashMap<>();
                for (String column : requiredColumns) {
                    columnIndexMap.put(column, Arrays.asList(headers).indexOf(column));
                }
                for (int i = 1; i < Integer.parseInt(rowNumber); i++) {
                    reader.readNext();
                }
                String[] row = reader.readNext();
                if (row != null) {
                    StringBuilder result = new StringBuilder();
                    for (String column : requiredColumns) {
                        int columnIndex = columnIndexMap.get(column);
                        result.append(row[columnIndex]).append(",");
                    }
                    System.out.println(result.substring(0, result.length() - 1));
                } else {
                    System.out.println("Row not found.");
                }
            } else {
                System.out.println("No headers found in the CSV file.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    }
