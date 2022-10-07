require_relative '../page_object/amazon_careers_page'

text=""

Given(/^Browser is open Amazon$/) do
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
  $amazon=AmazonCareersPage.new
end

Then(/^Navigate to amazon\.jobs$/) do
  $amazon.load
end

Given(/^We are on amazon\.jobs$/) do
  sleep 2
end

When(/^we select jobs Amazon$/) do
  $amazon.role_selection(text)
end

Then(/^Search result should display current openings Amazon$/) do
  sleep 2
end