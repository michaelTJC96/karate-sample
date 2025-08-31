package examples.runners;

import com.intuit.karate.junit5.Karate;

class RegressionTest {
    @Karate.Test
    Karate runRegression() {
        return Karate.run("classpath:examples/features");
    }
}
