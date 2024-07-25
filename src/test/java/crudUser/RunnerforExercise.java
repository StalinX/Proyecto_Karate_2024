package crudUser;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Order;

public class RunnerforExercise {

    @Karate.Test
    @Order(1)
    Karate testExercise1() {
        return Karate.run("classpath:crudUser/1_user-post.feature").tags("@Exercise1");
    }
    @Karate.Test
    @Order(2)
    Karate testExercise2() {
        return Karate.run("classpath:crudUser/2_user-get.feature").tags("@Exercise2");
    }
    @Karate.Test
    @Order(3)
    Karate testExercise3() {
        return Karate.run("classpath:crudUser/3_user-put.feature").tags("@Exercise3");
    }
    @Karate.Test
    @Order(4)
    Karate testExercise4() {
        return Karate.run("classpath:crudUser/4_user-newget.feature").tags("@Exercise4");
    }
    @Karate.Test
    @Order(5)
    Karate testExercise5() {
        return Karate.run("classpath:crudUser/5_user-delete.feature").tags("@Exercise5");
    }
}
