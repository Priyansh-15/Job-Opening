Feature: Search current openings on google career page
  Scenario: Search Google Careers on Chrome
    Given Browser is open Google
    Then Navigate to careers.google.com

  Scenario: Select for jobs Google
    Given We are on careers.google.com
    When we select jobs Google
    Then Search result should display current openings Google