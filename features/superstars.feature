Feature: Superstars
As an User
I want to login into Superstars and get fill in my profile

#1
Scenario: Login into Superstars
Given I am on SuperstarsHomePage
When I try to login with my user "user1acdc@avenuecode.com" and my password "acdcuser1"
Then I can authorize AC Superstars to see my profile

#2
Scenario: Login and fill in my profile
Given I am on SuperstarsHomePage
When I try to login with my user "user1acdc@avenuecode.com" and my password "acdcuser1"
And I click on my profile 
And I fill in my About me with I am a QA. Thank you and bye