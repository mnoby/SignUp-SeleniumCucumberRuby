To Run This Scenario, follow this command :
1. cucumber  : to only run the scenario
2. cucumber -f pretty --expand -f json -o report.json : run with generate report.json
3. Ruby Report_builder.rb : for generate report.html (after json file was created)

Terdapat 3 scenario :
1. Valid Data Sign Up
2. Invalid Data Sign Up Using Registered Email
3. Invalid Data Sign Up Using Less Than 6 Charactes Password

 List Command: 
1. cucumber -t @ValidDataSignUp : Untuk menjalankan Scenario Valid data
2. cucumber -t @InvalidDataSignUp : Untuk menjalankan semua Scenario Invalid data
3. cucumber -t @UsingRegisteredEmail : Untuk menjalankan scenario Invalid Data Using Registered Email
4. cucumber -t @UsingLessThan6CharPass : Untuk menjalankan scenario Invalid Data Using Less than 6 Characters Passowrd