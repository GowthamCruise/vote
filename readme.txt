------------------------------------
-----------Required tools-----------
------------------------------------
->jdk
->jre
->Eclipes (installation required internet upto 250MB )
->mysql (xampp)
->mysql connector
->Gmail (allow less secure app signin)
->tomcat
----------------------------------------
----------------process-----------------
----------------------------------------
1. configure database in mysql
2. add gmail credeential in Mailer.java
3. add correct absolute path to Uses class
4. configure apache tomcat into eclipes
	we will get Error as "the super class javax.servlet.httpservlet was not found" in every jsp page
	To avoid this rightclick on project->properties->target runtimes->add apache tomcat there
5. set path variable in
	>blocklist.jsp
	>dashboard.jsp
	>proc.java
	>vote.java
6. set path to store images;
	>