![](https://github.com/OpenLiberty/open-liberty/blob/master/logos/logo_horizontal_light_navy.png)

The sample application contains a system microservice to retrieve the system properties and uses MicroProfile Config to simulate the status of the microservice, MicroProfile Health to determine the health of the microservice, and MicroProfile Metrics to provide metrics for the microservice.

## Run Sample application
    mvn clean liberty:run

### Run Sample application with dev mode (Press enter to run tests)
    mvn clean liberty:dev

### Open url's in browser
    http://localhost:9080

