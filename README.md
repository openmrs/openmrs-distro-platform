openmrs-distro-platform
=======================

A project for packaging the OpenMRS Platform

###Building the project
 * Check out the project onto your machine if you haven't yet.
 * Updated the **version** property value in the pom file to match the version of OpenMRS platform you're building
 * Update the **webservices.restVersion** property value to match the version of the webservices.rest module you wish to bundle
 * Build the distributable by running the command below: 
 
  ``` 
  mvn clean install
  ```
