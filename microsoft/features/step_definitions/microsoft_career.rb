require_relative '../page_object/microsoft_careers_page'

text=""

Given(/^Browser is open Microsoft$/) do
  puts "Which Position You want to get data for?
      1: New Grad Role
      2: Internship Openings
      3: Experienced Role"
  case gets.strip
  when "1"
    text="New_Grad"
  when "2"
    text="Internship"
  when "3"
    text="Experienced"
  end
  $microsoft=MicrosoftCareersPage.new
end

Then(/^Navigate to careers\.microsoft\.com$/) do
  $microsoft.load
end

Given(/^We are on careers\.microsoft\.com$/) do
  sleep 2
end

When(/^we select jobs Microsoft$/) do
  $microsoft.role_selection(text)
end

Then(/^Search result should display current openings Microsoft$/) do
  sleep 2
end
