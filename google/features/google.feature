Feature: Search current openings on google career page for New Grads
  Scenario: Search Google Careers on Chrome
    Given Browser is open
    Then Navigate to careers.google.com

  Scenario: Select for jobs
    Given We are on careers.google.com
    When we select jobs
    Then Search result should display current openings