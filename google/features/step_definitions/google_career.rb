require_relative '../page_object/google_careers_page'

text=""

Given(/^Browser is open$/) do
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
  $google=GoogleCareersPage.new
end

Then(/^Navigate to careers\.google\.com$/) do
  $google.load
end

Given(/^We are on careers\.google\.com$/) do
  sleep 2
end

When(/^we select jobs$/) do
  $google.role_selection(text)
end

Then(/^Search result should display current openings$/) do
  sleep 2
end