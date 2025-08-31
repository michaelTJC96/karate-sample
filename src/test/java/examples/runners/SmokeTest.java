package examples.runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class SmokeTest {
    @Test
    void runSmoke() {
         Results results = Runner.path("classpath:examples/features")
                 .tags("@smoke")
                .parallel(3);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
