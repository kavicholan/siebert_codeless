package baseClass;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
import com.github.fge.jackson.JsonLoader;
import com.github.fge.jsonschema.core.exceptions.ProcessingException;
import com.github.fge.jsonschema.core.report.ProcessingReport;
import com.github.fge.jsonschema.main.JsonSchema;
import com.github.fge.jsonschema.main.JsonSchemaFactory;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.ReadContext;
import io.cucumber.datatable.DataTable;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.junit.Assert;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.util.*;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import static baseClass.BaseClass.*;

public class APIUtility {


    public static void prerequestlog(String url, String requesttype) {
//        ExtentCucumberAdapter.addTestStepLog("<b>API Endpoint :</b>"+ MarkupHelper.createCodeBlock(url).getMarkup());
//        ExtentCucumberAdapter.addTestStepLog("<b>Request Type :</b>"+ MarkupHelper.createCodeBlock(requesttype).getMarkup());
    }

    public static void postrequestlog(Response response) {
//        ExtentCucumberAdapter.addTestStepLog("<b>Response body :</b>"+ MarkupHelper.createCodeBlock(response.asPrettyString()).getMarkup());
//        ExtentCucumberAdapter.addTestStepLog("<b>Status code :</b>"+ MarkupHelper.createCodeBlock(String.valueOf(response.getStatusCode())).getMarkup());
    }

    public static Map<String, Object> header = new HashMap<String, Object>();
    public static Response resp;
    public static String access_token;
    public static String attribute_value;
    public static JSONParser jsonParser = new JSONParser();

    public static String readProperty(String key) throws Exception {
        FileInputStream reader = new FileInputStream(System.getProperty("user.dir") + File.separator + "features" + File.separator + "config.properties");
        Properties pro = new Properties();
        pro.load(reader);
        return pro.getProperty(key);
    }

//    public static void storeheaders(DataTable table) throws Throwable {
//        List<Map<String, String>> rows = table.asMaps(String.class, String.class);
//        for (Map<String, String> columns : rows) {
//            if (columns.get("value").equals("[auth-token]")) {
//                System.out.println("Access Token:" + attribute_value);
//                header.put(columns.get("header"), attribute_value);
//            } else {
//                header.put(columns.get("header"), columns.get("value"));
//            }
//        }
//    }


    public static void print_headers() {
        System.out.println("API Request headers:\n" + header);
    }

    public static void update_request_headers(String key, String value) {
        header.put(key, value);
    }

    public static void update_request_headersas(String key, String value) {
        header.put(key, store_value.get(value));
    }
    public static Object jsondata;

    public void add_request_body(String request) throws IOException, ParseException {
        FileReader reader = new FileReader(System.getProperty("user.dir") + File.separator + "Assets" + File.separator + request);
        jsondata = jsonParser.parse(reader);
    }

    public void print_request_body() throws IOException, ParseException {
        System.out.println("Request body:\n" + jsondata);
        System.out.println("Request body:\n" + jsondata.toString());
    }

    public static void update_request_body_with_data(String variable) throws IOException, ParseException {
        String jsonString = jsondata.toString();
        int dynmicvalue = 0;
        String replaceString = "";
        String[] jsonWords = jsonString.split(",");
        for (String jsonWord : jsonWords) {
            if (jsonWord.contains("${dynamic_value}")) {
                if (!(store_value.get(variable.split(",")[dynmicvalue]) == null))
                    jsonWord = jsonWord.replace("${dynamic_value}", store_value.get(variable.split(",")[dynmicvalue]));
                else jsonWord = jsonWord.replace("${dynamic_value}", variable.split(",")[dynmicvalue]);
                dynmicvalue++;
            }
            replaceString += jsonWord;
        }
        jsondata = jsonParser.parse(replaceString);
        System.out.println(jsondata.toString());
    }

    public void api_request(String action) throws Exception {
        RequestSpecification reqSpec = RestAssured.given();
        if (!(action.equalsIgnoreCase("GET") || action.equalsIgnoreCase("DELETE")))
            reqSpec.headers(header).body(jsondata.toString());
        else
            reqSpec.headers(header);

        prerequestlog(URL, jsondata.toString());
        switch (action) {
            case "POST":
                resp = reqSpec.post(URL);
//                resp = reqSpec.headers(header)
//                        .body(jsondata.toString())
//                        .post(URL);
                break;
            case "PATCH":
                resp = reqSpec.patch(URL);
                break;
            case "PUT":
                resp = reqSpec.put(URL);
                break;
            case "GET":
                resp = reqSpec.get(URL);
                break;
            case "DELETE":
                resp = reqSpec.delete(URL);
                break;
        }
        postrequestlog(resp);
    }

    public static void api_retrieve_request(String action, String url) throws Exception {
        RequestSpecification reqSpec = RestAssured.given();
        reqSpec.headers(header);
        String URL = readProperty(url);
        prerequestlog(URL, "");
        switch (action) {
            case "GET":
                resp = reqSpec.get(URL);
                break;
            case "DELETE":
                resp = reqSpec.delete(URL);
                break;
        }
        System.out.println(resp.asPrettyString());
        postrequestlog(resp);
    }

    public static void save_attribute_value_from_response(String response_attribute) {
        attribute_value = resp.path(response_attribute);
        System.out.println("##  " + response_attribute + ": " + attribute_value + "  ##");
    }

    public static void print_api_response() {
        System.out.println("## API Response: " + resp.asPrettyString() + "  ##");
        postrequestlog(resp);
    }

    public static void verifystatus(String statusCode) {
        Assert.assertEquals(String.valueOf(resp.getStatusCode()), statusCode);
    }

    public static void print_response_time() {
        System.out.println("##  Response time: " + resp.time() + " (millisecond)  ##");
    }

    public static void check_max_response_time(String max_response) {
        if (resp.time() < Integer.parseInt(max_response)) {
            System.out.println("## API Response time does not exceed the maximum limit");
        } else {
            System.out.println("## API Response time Exceeded the maximum limit");
            throw new RuntimeException();
        }
    }

    public static void assert_attribute_value(String value, String attribute) {
        System.out.println("##  " + attribute + " :" + resp.path(attribute).toString() + "  ##");
        Assert.assertEquals(resp.path(attribute).toString().trim(), value.trim());
    }

    public static void validateJsonSchema(String jsonData, String filepath) throws IOException, ProcessingException {
        String schemaContent = new String(Files.readAllBytes(Paths.get(filepath)));
        JsonSchemaFactory schemaFactory = JsonSchemaFactory.byDefault();
        JsonSchema schema = schemaFactory.getJsonSchema(JsonLoader.fromString(schemaContent));
        ProcessingReport report = schema.validate(JsonLoader.fromString(jsonData));
        if (report.isSuccess()) {
            System.out.println("##  JSON data is valid according to the schema  ##");
        } else {
            System.out.println("##  JSON data is NOT valid according to the schema  ##");
            throw new RuntimeException("##  JSON data is NOT valid according to the schema  ##");
        }
    }

    public static String getJsonValue(String jsonReq, String key) {
        JSONObject json = new JSONObject(jsonReq);
        boolean exists = json.has(key);
        Iterator<?> keys;
        String nextKeys;
        String val = "";
        if (!exists) {
            keys = json.keys();
            while (keys.hasNext()) {
                nextKeys = (String) keys.next();
                try {
                    if (json.get(nextKeys) instanceof JSONObject) {
                        return getJsonValue(json.getJSONObject(nextKeys).toString(), key);
                    } else if (json.get(nextKeys) instanceof JSONArray) {
                        JSONArray jsonArray = json.getJSONArray(nextKeys);
                        int i = 0;
                        if (i < jsonArray.length()) do {
                            String jsonArrayString = jsonArray.get(i).toString();
                            JSONObject innerJson = new JSONObject(jsonArrayString);
                            return getJsonValue(innerJson.toString(), key);
                        } while (i < jsonArray.length());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            val = json.get(key).toString();
        }
        return val;
    }

    static int attribute_count = 0;

    public static void response_validation() {
        JSONObject jsonObject = new JSONObject(resp.asPrettyString());
        iterateJsonObject(jsonObject);
        System.out.println("##  Total API Response attribute Iterated: " + attribute_count + "  ##");
        attribute_count = 0;
    }

    public static void iterateJsonObject(JSONObject jsonObject) {
        for (String key : jsonObject.keySet()) {
            Object value = jsonObject.get(key);
            if (value instanceof JSONObject)
                iterateJsonObject((JSONObject) value);
            else if (value instanceof JSONArray)
                iterateJsonArray((JSONArray) value);
            else
                attribute_count += 1;
        }
    }

    public static void iterateJsonArray(JSONArray jsonArray) {
        for (int i = 0; i < jsonArray.length(); i++) {
            Object value = jsonArray.get(i);
            if (value instanceof JSONObject)
                iterateJsonObject((JSONObject) value);
            else if (value instanceof JSONArray)
                iterateJsonArray((JSONArray) value);
            else
                attribute_count += 1;
        }
    }

    public static void print_response_headers() {
        System.out.println("Response Headers:");
        resp.headers().forEach(header -> System.out.println(header.getName() + " : " + header.getValue()));
    }

    public static void save_attribute_value_run_time_from_response(String response_attribute, String variable) {
        Object responseValue = resp.path(response_attribute);
        if (responseValue instanceof Integer) {
            int intValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(intValue));
        }
        else if (responseValue instanceof Double) {
            double doubleValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(doubleValue));
        } else if (responseValue instanceof Float) {
            float floatValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(floatValue));
        } else if (responseValue instanceof Boolean) {
            boolean booleanValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(booleanValue));
        }else if (responseValue instanceof BigDecimal) {
            boolean booleanValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(booleanValue));
        } else if (responseValue instanceof BigInteger) {
            boolean booleanValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(booleanValue));
        }else if (responseValue instanceof Long) {
            long longValue = resp.path(response_attribute);
            store_value.put(variable, String.valueOf(longValue));
        } else {
            store_value.put(variable, resp.path(response_attribute));
        }
        System.out.println("##  " + response_attribute + ": " + store_value.get(variable) + "  ##");
    }

//    public static void save_attribute_value_run_time_from_response_Siebert(String response_attribute, String variable) {
//        Object responseValue = resp.path(response_attribute);
//        if (responseValue instanceof Integer) {
//            int intValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(intValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }
//        else if (responseValue instanceof Double) {
//            double doubleValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(doubleValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof Float) {
//            float floatValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(floatValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof Boolean) {
//            boolean booleanValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(booleanValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }else if (responseValue instanceof BigDecimal) {
//            boolean booleanValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(booleanValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof BigInteger) {
//            boolean booleanValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(booleanValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }else if (responseValue instanceof Long) {
//            long longValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(longValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else {
//            store_value.put(variable, resp.path(response_attribute));
//        }
//        System.out.println("##  " + response_attribute + ": " + store_value.get(variable) + "  ##");
//    }

    public static void save_attribute_value_run_time_from_response_Siebert(String response_attribute, String variable) throws IOException {
//        Object responseValue = resp.path(response_attribute);
        objectMapper = objectMapper.configure(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS, true);
        objectMapper = objectMapper.configure(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN, true);
        objectMapper = objectMapper.setNodeFactory(JsonNodeFactory.withExactBigDecimals(true));
        JsonNode json = objectMapper.readTree(resp.asPrettyString());
        JsonNode modifiedJson = convertNumericToString(json);
        ReadContext ctx = JsonPath.parse(modifiedJson.toString());
        Object responseValue = ctx.read(response_attribute);
        store_value.put(variable, String.valueOf(responseValue).replaceAll(Pattern.quote("("), "")
                .replaceAll(Pattern.quote(")"), "")
                .replaceAll(Pattern.quote("$"), "")
                .replaceAll(Pattern.quote("%"), "")
                .replaceAll(Pattern.quote(","), "")
                .replaceAll(Pattern.quote("-"), ""));
//        if (responseValue instanceof Integer) {
//            int intValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(intValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }
//        else if (responseValue instanceof Double) {
//            double doubleValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(doubleValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof Float) {
//            float floatValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(floatValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof Boolean) {
//            boolean booleanValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(booleanValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }else if (responseValue instanceof BigDecimal) {
//            BigDecimal BigDecimal = new BigDecimal(resp.path(response_attribute).toString());
//            BigDecimal = BigDecimal.setScale(2, RoundingMode.HALF_UP);
//            store_value.put(variable, String.valueOf(BigDecimal).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else if (responseValue instanceof BigInteger) {
//            boolean booleanValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(booleanValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        }else if (responseValue instanceof Long) {
//            long longValue = resp.path(response_attribute);
//            store_value.put(variable, String.valueOf(longValue).replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), ""));
//        } else {
//            String value = resp.path(response_attribute).toString()
//                    .replaceAll(Pattern.quote("("), "")
//                    .replaceAll(Pattern.quote(")"), "")
//                    .replaceAll(Pattern.quote("$"), "")
//                    .replaceAll(Pattern.quote("%"), "")
//                    .replaceAll(Pattern.quote(","), "")
//                    .replaceAll(Pattern.quote("-"), "");
//            store_value.put(variable,value);
//        }
        System.out.println("##  " + response_attribute + ": " + store_value.get(variable) + "  ##");
    }


    public static void save_attribute_value_run_time_from_responseheader(String response_attribute, String variable) {
        store_value.put(variable, resp.header(response_attribute));
    }

    static String URL;

//    public void add_endpoint_url(String url) throws Exception {
//        URL = readProperty(url);
//    }

    public static void update_endpoint_url(String url, String variable) throws Exception {
        URL = readProperty(url);
        if (URL.contains("${dynamic_value}")) {
            URL = URL.replace("${dynamic_value}", store_value.get(variable));
        }
    }

    public static void print_api_endpoint() {
        System.out.println("##  API Endpoint:" + URL + "  ##");
    }

    private static ObjectMapper objectMapper = new ObjectMapper();

//    public static void save_wholeattribute_fromAPI(String responseAttribute, String variable) throws IOException, InterruptedException {
//        objectMapper = objectMapper.configure(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS, true);
//        objectMapper = objectMapper.configure(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN, true);
//        objectMapper = objectMapper.setNodeFactory(JsonNodeFactory.withExactBigDecimals(true));
//        JsonNode json1 = objectMapper.readTree(resp.asPrettyString());
//        JsonNode modifiedJson = convertNumericToString(json1);
//        ReadContext ctx = JsonPath.parse(modifiedJson.toString());
//        List<Map<String, String>> extractedValues = ctx.read(responseAttribute);
//        String values = "";
//        for (Map<String, String> valueMap : extractedValues) {
//            if (!valueMap.containsValue("Cash & Cash Equivalent")) {
//                values += "[" + valueMap.values().stream()
//                        .map(val -> val.replaceAll(Pattern.quote(","), ""))  // Remove commas from each value
//                        .collect(Collectors.joining(", ")) + "]";
//            }
//        }
//        store_value.put(variable, replaceChar(values, "\\s"));
//        store_value.put(variable, values.replaceAll(Pattern.quote("%"), "").
//                replaceAll(Pattern.quote("$"), "")
//                .replaceAll(Pattern.quote("("), "")
//                .replaceAll(Pattern.quote(")"), "")
//                .replaceAll(Pattern.quote("-"), "")
//                .replaceAll("\\s+", " "));
//        System.out.println(variable + ":" + store_value.get(variable));
//    }

    public static void save_wholeattribute_fromAPI(String responseAttribute, String variable) throws IOException, InterruptedException {
        objectMapper = objectMapper.configure(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS, true);
        objectMapper = objectMapper.configure(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN, true);
        objectMapper = objectMapper.setNodeFactory(JsonNodeFactory.withExactBigDecimals(true));
        JsonNode json = objectMapper.readTree(resp.asPrettyString());
        JsonNode modifiedJson = convertNumericToString(json);
        ReadContext ctx = JsonPath.parse(modifiedJson.toString());
//        ReadContext ctx = JsonPath.parse(json.toString());
        List<Map<String, String>> extractedValues = ctx.read(responseAttribute);
        System.out.println(extractedValues.toString());
        StringBuilder valuesBuilder = new StringBuilder();
        for (Map<String, String> valueMap : extractedValues) {
            if (!valueMap.containsValue("Cash & Cash Equivalent")) {
                valuesBuilder.append("[");
                boolean first = true;
                for (String val : valueMap.values()) {
                    if (!first) {
                        valuesBuilder.append(", ");
                    }
                    // Remove commas from each value and format numeric values
                    val = val.replaceAll(Pattern.quote(","), "");
                    if (isNumeric(val)) {
                        BigDecimal numericValue = new BigDecimal(val);
                        val = numericValue.setScale(2, RoundingMode.HALF_UP).toString();
                    }
                    valuesBuilder.append(val);
                    first = false;
                }
                valuesBuilder.append("]");
            }
        }
        String values = valuesBuilder.toString();
        values = values.replaceAll(Pattern.quote("%"), "")
                .replaceAll(Pattern.quote("$"), "")
                .replaceAll(Pattern.quote("("), "")
                .replaceAll(Pattern.quote(")"), "")
                .replaceAll(Pattern.quote("-"), "")
                .replaceAll("\\s+", " ");
        store_value.put(variable, values);
        System.out.println(variable + ":" + store_value.get(variable));
    }

    public static void save_wholeattribute_fromAPIwithsameDecimal(String responseAttribute, String variable) throws IOException, InterruptedException {
        objectMapper = objectMapper.configure(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS, true);
        objectMapper = objectMapper.configure(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN, true);
        objectMapper = objectMapper.setNodeFactory(JsonNodeFactory.withExactBigDecimals(true));
        JsonNode json = objectMapper.readTree(resp.asPrettyString());
        JsonNode modifiedJson = convertNumericToString(json);
        ReadContext ctx = JsonPath.parse(modifiedJson.toString());
//        ReadContext ctx = JsonPath.parse(json.toString());
        List<Map<String, String>> extractedValues = ctx.read(responseAttribute);
        System.out.println(extractedValues.toString());
        StringBuilder valuesBuilder = new StringBuilder();
        for (Map<String, String> valueMap : extractedValues) {
            if (!valueMap.containsValue("Cash & Cash Equivalent")) {
                valuesBuilder.append("[");
                boolean first = true;
                for (String val : valueMap.values()) {
                    if (!first) {
                        valuesBuilder.append(", ");
                    }
                    // Remove commas from each value and format numeric values
                    val = val.replaceAll(Pattern.quote(","), "");
                    valuesBuilder.append(val);
                    first = false;
                }
                valuesBuilder.append("]");
            }
        }
        String values = valuesBuilder.toString();
        values = values.replaceAll(Pattern.quote("%"), "")
                .replaceAll(Pattern.quote("$"), "")
                .replaceAll(Pattern.quote("("), "")
                .replaceAll(Pattern.quote(")"), "")
                .replaceAll(Pattern.quote("-"), "")
                .replaceAll("\\s+", " ");
        store_value.put(variable, values);
        System.out.println(variable + ":" + store_value.get(variable));
    }

    // Method to check if a string is numeric
    public static boolean isNumeric(String str) {
        return str.matches("-?\\d+(\\.\\d+)?");
    }

    public static boolean containsOnlyZerosAfterDecimal(String str) {
        int decimalIndex = str.indexOf('.');
        if (decimalIndex != -1 && decimalIndex < str.length() - 1) {
            String decimalPart = str.substring(decimalIndex + 1);
            return decimalPart.matches("0*");
        }
        return false;
    }

    private static JsonNode convertNumericToString(JsonNode jsonNode) {
        if (jsonNode.isObject()) {
            ObjectNode newNode = objectMapper.createObjectNode();
            Iterator<String> fieldNames = jsonNode.fieldNames();
            while (fieldNames.hasNext()) {
                String fieldName = fieldNames.next();
                JsonNode fieldValue = jsonNode.get(fieldName);
                JsonNode modifiedField = convertNumericToString(fieldValue);
                newNode.set(fieldName, modifiedField);
            }
            return newNode;
        } else if (jsonNode.isArray()) {
            ArrayNode newArray = objectMapper.createArrayNode();
            for (JsonNode arrayElement : jsonNode) {
                JsonNode modifiedElement = convertNumericToString(arrayElement);
                newArray.add(modifiedElement);
            }
            return newArray;
        } else if (jsonNode.isNumber()) {
            if (jsonNode.isIntegralNumber()) {
                return new TextNode(jsonNode.longValue() + "");
            } else {
                return new TextNode(jsonNode.decimalValue().toPlainString());
            }
        } else {
            return jsonNode;
        }
    }

    public static void resetAPI() throws IOException {
        RestAssured.reset();
    }

    public void storeheaders(DataTable table) throws Throwable {
        List<Map<String, String>> rows = table.asMaps(String.class, String.class);
        for (Map<String, String> columns : rows) {
            String headerName = columns.get("header");
            String headerValue = columns.get("value");
            if (headerValue.equals("[auth-token]")) {
                // Replace [auth-token] with actual access token value
                headerValue = "your_actual_access_token_here";
            }
            header.put(headerName, headerValue);
        }
    }

    public void add_endpoint_url(String url) throws Exception {
        URL = readProperty(url);
    }

}