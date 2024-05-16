package Backend;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;


public class user {

    String path = "classpath:backend/";

    @Test
    Karate testSample(){
        String path = "classpath:backend/";
         return Karate.run(/*path+"user.feature",
                path+"updateUser.feature",
                path+"queryUser.feature",*/
                 path+"scenarioOutline.feature"
        ).relativeTo(getClass());
     }


}
