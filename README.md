openmrs-distro-platform
=======================

A project for packaging the OpenMRS Platform

###Building the project
 * Check out the project onto your machine
 * In the root pom file, make sure you have updated the **openMRSVersion** and **webservices.restModuleVersion** property values to match latest released OpenMRS core and module versions respectively
 * Build the distributable by running the command below: 
 
  ``` 
  mvn clean install
  ```
