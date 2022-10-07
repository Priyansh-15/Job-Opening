Feature: Search current openings on amazon career page
  Scenario: Search Amazon Careers on Chrome
    Given Browser is open Amazon
    Then Navigate to amazon.jobs

  Scenario: Select for jobs Amazon
    Given We are on amazon.jobs
    When we select jobs Amazon
    Then Search result should display current openings Amazon