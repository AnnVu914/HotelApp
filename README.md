# HotelApp
A Java web application for booking hotel room and restaurant services. 

## Structure
* Controller: Developed web services to handle request to specific endpoints. Frontcontroller dispatches requests to appropriate servlet.
* Frontcontroller: ServleteDispatcher is configured to dispatch requests to corresponding servlets
* Service and DAO: Developed methods to persist data in the database.  
* Database: User Hibernate to connect to Oracle database, create SQL queries, and manage transactions. 
* JSP web pages: Use HTML, CSS, Bootstrap to develop web pages.
* Validation: Implements Spring validator to validate user input for user registration, user authentication, booking room, order serivce, and etc. 
* Spring Security: Use Base authentication and authorization with BCrypPasswordEncoder
* ViewResolver: Map response to corresponding views 

## Built With

* [Spring](https://spring.io) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [Tomcat](http://tomcat.apache.org) - Server 
* [Tomcat](http://tomcat.apache.org) - Server 

## Configuration
* Java configuration: configuration classes resides in src/main/java/com/hotel/application/config
* Pom.xml: manage dependencies
* src/main/webapp/resources: resources for jsp web pages including css, images, fonts,and js
