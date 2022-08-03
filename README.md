openmrs-distro-platform
=======================

A project for packaging the OpenMRS Platform

### What modules to include?

Before you do anything else, you need to verify what modules should be bundled with this version of the OpenMRS Platform. At time of writing these are as follows, but you should verify this with a senior developer on OpenMRS Talk, or IRC:

 * webservices.rest
 * owa
 * fhir

If any of these modules have significant recent commits that have not been released yet, then consider releasing them before you do the platform release.

### What OWAs to include?

The platform also comes bundled with some Open Web Applications (OWAs). Verify that the following OWAs are bundled with this version of the OpenMRS Platform. At the time of writing, these include:

* Add On Manager 

### Building the project
 * Clone the project onto your machine if you haven't yet.
 * Check out the branch corresponding to the release line you want to release (e.g. the 2.0.x branch for Platform 2.0.4)
 * Update the **version** property value in the pom file to match the version of OpenMRS platform you're building
 * In the **properties** section of pom.xml update all module version properties (e.g. *webservices.restVersion*) to match the versions you wish to bundle
 * Ensure that the openmrs-distro.properties file includes all bundled modules (e.g. *omod.webservices.rest*) as well as all bundled OWAs (e.g. *owa.openmrs-owa-addonmanager*)
 * Build the distributable by running the command below: 
  ```
  docker compose build
  ``` 
  or natively with maven:
  ``` 
  mvn clean install
  ```
 * Run the distribution with:
  ```
  docker compose up
  ```
