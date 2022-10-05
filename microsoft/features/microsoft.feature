Feature: Search current openings on microsoft career page
  Scenario: Search Microsoft Careers on Chrome
    Given Browser is open Microsoft
    Then Navigate to careers.microsoft.com

  Scenario: Select for jobs Microsoft
    Given We are on careers.microsoft.com
    When we select jobs Microsoft
    Then Search result should display current openings Microsoft