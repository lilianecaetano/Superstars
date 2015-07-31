#Steps

Given(/^I am on (.+)$/) do |page|
visit page
end

When(/^I try to login with my user "(.*?)" and my password "(.*?)"$/) do |username, password|
 on(SuperstarsHomePage).do_login username, password
end


Then(/^I can authorize AC Superstars to see my profile$/) do 
	on(SuperstarsHomePage).authorize_gmail 	
end

And (/^I click on my profile$/) do
    on(ChangeProfile).first_time_login_open_profile
end

And (/^I fill in my About me with (.+)$/) do | text |
on(ChangeProfile).type_aboutme text
end
