
package com.cognizant;

import com.cognizant.model.Country;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

@SpringBootApplication
public class SpringLearnApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringLearnApplication.class, args);
        displayCountries();
    }

    public static void displayCountries() {
        System.out.println("START - displayCountries");
        ApplicationContext context = new ClassPathXmlApplicationContext("country.xml");
        List<Country> countryList = context.getBean("countryList", List.class);
        for (Country country : countryList) {
            System.out.println(country);
        }
        System.out.println("END - displayCountries");
    }
}
