Index Table
 
1	Introduction
1.1	Scope
1.1.1	In Scope
1.1.2	Out of Scope
1.2	Quality Objective
1.3	Roles and Responsibilities
2	Test Methodology
2.1	Overview
2.2	Test Levels
2.3	Bug Triage
2.4	Suspension Criteria and Resumption Requirements
2.5	Test Completeness
3	Test Deliverables
4	Resource & Environment Needs
4.1	Testing Tools
4.2	Test Environment
5	Time schedule planning


1Introduction	
Brief introduction of the test strategies, process, workflow and methodologies used for the project

1.1 Scope
1.1.1In Scope

Scope defines the features, functional or non-functional requirements of the software that will be tested 
Functional Cases 
•	user should be able to add record successfully.
•	validate the recently added record is displaying in the catogory 
•	Once the user is able to update record successfully, validate the money Amount displayed in formatted currently.
•	Once the user is able to delete record successfully. Validate deleted record and validate the money in deducted from Total inflow/outflow.
•	Verify user is able to perform to cancel button without any records.
•	validate amount filed.
•	Validate that Total inflow - Total outflow should be calculated correctly for working balance
•	Validate that reports are reflecting calculated with respect to inflow and outflow
•	Validate all the category total are reflecting correctly.
Similarly we can use other functional case 

Integration test 
User added records – validate working balance -> chooses reports and validate inflow/outflow and spending by catogory
——————————————————————————————————————— 

Security test scenario 
Testing network call not having incentive data.
——————————————————————————————————————— 
UI test 
All element are clickable or responding as per business logic 
——————————————————————————————————————— 
DB test 
If any DB test are test, to make sure all Create, Read , update, delete data are 
working in sync with relational/non-relational database 
——————————————————————————————————————————— 
Localization test 
With different language like Spanish, German, Korean, etc are translating while 
choosing the language 
——————————————————————————————————————— 
Performance test 
Test using any performance testing tool to check large no# of concurrent users 
are accessing at same time without any lag. 
Benchmark test, baseline test, burst test, stress testing, load testing- these are we 
can test and find out metrics 
——————————————————————————————————————— 
InCognito test 
Validate Cookies and session are working as expected 
——————————————————————————————————————— 
Device compatibility 
Validation with different device like Mobile(iOS, android, tablet, PC) are working as 
expected 
——————————————————————————————————————— 
Different browser test 
Validation with different device like chrome, Firefox, safari, Edge are working as 
expected 
——————————————————————————————————————— 

	

1.1.2Out of Scope

Out Of Scope defines the features, functional or non-functional requirements of the software that will NOT be tested 
1.2Quality Objective

Here make a mention of the overall objevtie that you plan to achive withou your testing

Some objectives of your testing project could be

Ensure the Application Under Test conforms to functional and non-functional requirements
Ensure the AUT meets the quality specifications defined by the client
Bugs/issues are identified and fixed before go live

1.3 Roles and Responsibilities 
Detail description of the Roles and responsibilities of different team members like
SDET
UI Dev
Configuration Manager
Backend Developers
Installation Team
Amongst others 



2Test Methodology
2.1Overview

Mention the reason of adopting a particular test methodology for the project.  The test methodology selected for the project could be
Agile
Extreme Programming
The methodology selected depends on multiple factors. You can read about Test Methodology here 



2.2Test Levels

Test Levels define the Types of Testing to be executed on the Application Under Test (AUT). The Testing Levels primarily depends on the scope of the project, time and budget constraints. 
	
2.3Bug Triage

The goal of the triage is to
 
To define the type of resolution for each bug
To prioritize bugs and determine a schedule for all “To Be Fixed Bugs’.  


2.4Suspension Criteria and Resumption Requirements

Suspension criteria define the criteria to be used to suspend all or part of the testing procedure while Resumption criteria determine when testing can resume after it has been suspended

2.5Test Completeness
Here you define the criterias that will deem your testing complete.
For instance, a few criteria to check Test Completeness would be
100% test coverage
All Manual & Automated Test cases executed
All open bugs are fixed or will be fixed in next release
3Test Deliverables


Here mention all the Test Artifacts that will be delivered during different phases of the testing lifecycle.  

Here are the sample deliverables
Test Plan
Test Cases 
Requirement Traceability Matrix
Bug Reports
Test Strategy
Test Metrics
Customer Sign Off
Resource & Environment Needs

4.1Testing Tools
Make a list of Tools like
Requirements Tracking Tool
Bug Tracking Tool
Automation Tools
Required to test the project

 
4.2Test Environment
It mentions the minimum hardware requirements that will be used to test the Application. 

5. Time schedule planning
