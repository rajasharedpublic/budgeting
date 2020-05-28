Ruby Version - 2.7 Used

To Run the testcase, on terminal, Enter below

bundle install --path vendor/bundle
brew install geckodriver(In case planning to use firefox)

All test cases have been verified on chrome browser

/*
*Tools:*
1. Ruby
2. Selenium Webdriver 

*Test Cases*

Test 1: test_verifying_adding_records
Steps 
1. Run `<browser>`
2. Clear `<browser>` cookies
3. Go to url- https://budget.modus.app/budget or setup code on local
4. Wait for page to open
5. Enter test records and verify its been added

Test 2: test_verifying_working_balance
Steps 
1. Run `<browser>`
2. Clear `<browser>` cookies
3. Go to url- https://budget.modus.app/budget or setup code on local
4. Wait for page to open
5. verify working_balance is calculated correctly which is the difference of total_inflow - total_outflow

Test 3: test_verifying_working_balance_failed_case
Steps 
1. Run `<browser>`
2. Clear `<browser>` cookies
3. Go to url- https://budget.modus.app/budget or setup code on local
4. Wait for page to open
5. verifying fail case that working_balance checked shows incorrect result in test_execution which is the addition instead of substraction of total_inflow - total_outflow


test result folder
~/results

test plan location
TestPlan.md

*/

