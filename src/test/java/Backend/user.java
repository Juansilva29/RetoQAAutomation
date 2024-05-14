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
    /*@Test
    void testParallel(){
        Results results =  Runner.path("classpath:backend").outputCucumberJson(true).tags("~@ignore").parallel(1);
        generateReport(results.getReportDir());
    }*/

    @Test
    Karate testSample(){
        String path = "classpath:backend/";
         return Karate.run(path+"user.feature",
                path+"updateUser.feature",
                path+"queryUser.feature"
        ).relativeTo(getClass()).outputCucumberJson(true);

        //generateReport(results.getReportDir());
        }
     


    public static void generateReport(String karateOutputPath){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("build"), "RetoQAAutomation");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}
