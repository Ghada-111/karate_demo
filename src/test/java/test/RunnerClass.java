package test;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.extension.BeforeAllCallback;
import org.junit.jupiter.api.extension.ExtensionContext;
import org.junit.jupiter.api.extension.ExtendWith;

import com.intuit.karate.junit5.Karate;

//@ExtendWith(RunnerClass.BeforeAllExtension.class)
public class RunnerClass {

    @Karate.Test
    Karate testFeature() {
        return Karate.run().relativeTo(getClass());
    }
//    @Karate.Test
//    Karate testTags() {
//        return Karate.run("Put.feature").tags("@second").relativeTo(getClass());
//    }

//     @Karate.Test
//    Karate testSystemProperty() {
//        return Karate.run("classpath:test/Delete.feature") ;
//    }

    
}
