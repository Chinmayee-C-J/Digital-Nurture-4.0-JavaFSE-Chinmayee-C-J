
# Hands-on 1 - Spring Web Project using Maven

## Steps Followed:
1. Project generated from https://start.spring.io with Group `com.cognizant` and Artifact `spring-learn`
2. Dependencies: Spring Web, Spring Boot DevTools
3. Imported into Eclipse via Maven > Existing Maven Project
4. Built using proxy-specific mvn clean package command
5. Ran the `SpringLearnApplication` class

## Proxy Build Command
```
mvn clean package -Dhttp.proxyHost=proxy.cognizant.com -Dhttp.proxyPort=6050 -Dhttps.proxyHost=proxy.cognizant.com -Dhttps.proxyPort=6050 -Dhttp.proxyUser=123456
```
