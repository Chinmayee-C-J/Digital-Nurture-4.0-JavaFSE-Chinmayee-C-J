
# Hands-on 7 - REST Country Web Service

## Overview:
This RESTful service exposes a country object (India) from Spring XML configuration.

- **URL**: `/country`
- **Controller**: `CountryController`
- **Method**: `getCountryIndia()`

## Explanation:
- Controller loads a Spring XML config (`country.xml`) using `ClassPathXmlApplicationContext`.
- Retrieves the bean named "in" (India) and returns it.
- Spring Boot automatically serializes the Java object into JSON response using Jackson.

## Sample Request:
`GET http://localhost:8083/country`

## Sample Response:
```
{
  "code": "IN",
  "name": "India"
}
```

## How Bean is Converted to JSON:
Spring Boot uses **Jackson** library to auto-convert Java POJOs (like `Country`) into JSON.

## Postman Headers:
Click the "Headers" tab in Postman to view details like:
- Content-Type: application/json
- Date
- Server

## Network Tab in Browser Dev Tools:
Use it to inspect response and request headers.
