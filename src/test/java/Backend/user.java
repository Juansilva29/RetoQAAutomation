package Backend;


import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;


import static org.junit.jupiter.api.Assertions.assertEquals;


public class user {

    String path = "classpath:backend/";

    @Test
    Karate testSample(){
        String path = "classpath:backend/";
         return Karate.run(path+"user.feature",
                path+"updateUser.feature",
                path+"queryUser.feature",
                 path+"scenarioOutline.feature"
        ).relativeTo(getClass());
     }


}
