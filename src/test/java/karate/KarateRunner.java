package karate;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

import cucumber.api.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(features = "classpath:delete_book.feature", tags={"~@ignore"})
public class KarateRunner {

}
