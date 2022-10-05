class GoogleCareersPage < SitePrism::Page
  set_url "https://careers.google.com/"
  element :student_button, :xpath, "/html/body/div[1]/header/div[1]/div[1]/nav/ul/li[5]/a"
  element :student_job_button,:xpath ,"//*[@id='jump-content']/main/div[2]/div[1]/div/div[1]/div/div/div[2]/div/div/div/a[2]"
  element :open_job_details, :xpath,"//*[@id='search-results']/li[1]/a/div"
  element :job_button, :xpath, "/html/body/div[1]/header/div[1]/div[1]/nav/ul/li[4]/a"
  element :job_type_button, :xpath, "//*[@id='job-title']"
  element :intern_check_button, :xpath, "//*[@id='accordion-accordion-employment-type']/div/fieldset/ul/li[4]/label/span"
  element :full_time_check_button, :xpath, "//*[@id='accordion-accordion-employment-type']/div/fieldset/ul/li[1]/label/span"
  def expand_job
    self.open_job_details.click
    sleep 3
  end

  def student_jobs
    self.student_button.click
    sleep 2
    self.student_job_button.click
    sleep 4
    expand_job
    sleep 2
  end

  def new_grad_role
    sleep 2
    student_jobs
  end

  def intern_role
    self.job_button.click
    sleep 2
    self.job_type_button.click
    sleep 3
    self.intern_check_button.click
    sleep 4
    expand_job
    sleep 2
  end

  def experienced_role
    self.job_button.click
    sleep 2
    self.job_type_button.click
    sleep 3
    self.full_time_check_button.click
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