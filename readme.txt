+-------------------------------+
| OpenMRS Platform ${project.version}	|
+-------------------------------+

Thank you for downloading the OpenMRS Platform. Please read this README file carefully to help you determine what version of the OpenMRS Platform may be best suited for your situation.

Download the OpenMRS Platform at:
http://openmrs.org/download

Full release notes for this and all versions:
http://wiki.openmrs.org/display/RES/Release+Notes

CONTENTS
========

1.	Types of Downloads
	A. Standalone
	B. "Platform" WAR package installer
2.  "Platform" WAR package installer instructions
	A. New installation of OpenMRS Platform ${project.version}
	B. Upgrading to OpenMRS Platform ${project.version}

TYPES OF DOWNLOADS
==================

Standalone 
-------------------------
Recommended for new people exploring OpenMRS. A self-contained ZIP archive that includes an embedded database and application server, as well as demo data for 5,000 sample patients. Expand the ZIP archive and run the .jar file to start the OpenMRS Platform.
Username: admin
Password: test

Platform WAR package installer
--------------------------------
Intended for more advanced users. Our Platform installation, which requires an existing installed Java servlet container such as Apache Tomcat and an existing installed database such as MySQL. Separate demo data is available for download from https://wiki.openmrs.org/display/RES/Demo+Data

PLATFORM .WAR PACKAGE INSTALLER INSTRUCTIONS
==============================================

The following instructions are basic and should be adapted to your own installation of the OpenMRS Platform, depending on your system and usage needs.

New installation of OpenMRS Platform ${project.version}
----------------------------------------
1. Install Apache Tomcat.
2. Install MySQL.
3. Put openmrs.war into <tomcathome>/webapps.
     Notice that the war file exceeds 50MB which is the default maximum war file size accepted by    
     tomcat and therefore you may have to look into https://talk.openmrs.org/t/openmrs-war-file- 
     exceeding-50mbs-configured-for-tomcat/861 to solve the error you may get while uploading it 
     into tomcat
4. Visit http://localhost:8080/openmrs and run the installation wizard.

Also see https://wiki.openmrs.org/display/docs/Installing+OpenMRS


Upgrading to OpenMRS Platform ${project.version}
---------------------------------

1. Stop all modules currently running in your OpenMRS Platform instance.
2. Backup your database.
3. Undeploy your current OpenMRS Platform using the Tomcat manager page or other method of your choice.
4. Deploy the new version of openmrs.war you have downloaded.
5. Restart Tomcat.
6. Browse to your previous OpenMRS Platform instance URL and approve/run the database updates.
7. Check for and install updates to your modules using the Administration section.

Also see Also see https://wiki.openmrs.org/display/docs/Upgrading+OpenMRS

---------------------------------------------------------------------
Copyright (C) 2012 OpenMRS LLC. Use of this software is subject to 
the terms of the OpenMRS Public License, available at:
http://go.openmrs.org/license 
---------------------------------------------------------------------
