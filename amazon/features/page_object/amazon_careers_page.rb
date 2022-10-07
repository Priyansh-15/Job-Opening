class AmazonCareersPage < SitePrism::Page
  set_url "https://www.amazon.jobs/en/"
  element :student_opportunity_button, :xpath, "/html/body/div[2]/div[1]/div[4]/div[3]/div/div/div[1]/div/div/div[2]/a"
  element :internship_check_button, :xpath, "//*[@id='desktopFilter_job_type_filter']/div/div/fieldset/div/button[4]/div"
  element :software_development,:xpath ,"/html/body/div[2]/div[1]/div[4]/div[3]/div/div/div[3]/div/div/div[2]/a"
  element :student_program_button, :xpath,"//*[@id='search-results-box']/div[2]/div/div/div[2]/content/div/div/div[1]/div/div[11]/div/div/fieldset/div/button[3]"
  element :open_job_details, :xpath,"/html/body/div[2]/div[1]/div[6]/div[2]/div/div/div[2]/content/div/div/div[2]/div[2]/div/div[1]"


  def expand_job
    self.open_job_details.click
    sleep 3
  end

  def new_grad_role
    self.software_development.click
    sleep 4
    self.student_program_button.click
    sleep 4
    expand_job
    sleep 2
  end

  def intern_role
    self.student_opportunity_button.click
    sleep 4
    self.internship_check_button.click
    sleep 4
    expand_job
    sleep 2
  end

  def experienced_role
    self.software_development.click
    sleep 4
    expand_job
    sleep 2
  end

  def role_selection(text)
    if(text=="New_Grad")
      new_grad_role
    end
    if(text=="Internship")
      intern_role
    end
    if(text=="Experienced")
      experienced_role
    end
  end

end