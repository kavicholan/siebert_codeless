package LoadTest;

import io.gatling.app.Gatling;
import io.gatling.core.scenario.Simulation;
import io.gatling.core.structure.ScenarioBuilder;
import io.gatling.selenium.Predef.*;
import org.openqa.selenium.chrome.ChromeOptions;

import static io.gatling.core.Predef.scenario;

public class BasicSimulation {

    public static void main(String[] args) {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless"); // Optional: Run headless

        Simulation simulation = new Simulation() {
            {
                String baseURL = "http://your-web-application-url.com";

                ScenarioBuilder scn = scenario("Basic Simulation")
                        .exec(
                                selenium("Open Home Page")
                                        .startWebDriver(options)
                                        .openUrl(baseURL)
                                        .doIf(session -> session.isFailed()) {
                exec(session -> {
                    System.out.println("Error: " + session("errorMessage").as(String.class()));
                    return session;
                });
            }
                        )
                // Add more actions as needed
                // Example:
                // .exec(
                //     selenium("Login")
                //         .doSetWindowSize(1920, 1080)
                //         .openUrl(baseURL + "/login")
                //         .awaitAtMost(5)
                //         .exec(
                //             $("input[name='username']").fill("your_username"),
                //             $("input[name='password']").fill("your_password"),
                //             $("button[type='submit']").click()
                //         )
                // );

                setUp(scn.inject(atOnceUsers(1))).protocols(http);
            }
        };

        Gatling.fromJava().withSimulation(simulation).execute();
    }
}

