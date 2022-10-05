class MicrosoftCareersPage < SitePrism::Page
  set_url "https://careers.microsoft.com/us/en"
  element :student_button, :xpath, "//*[@id='content']/div[2]/section[4]/div/div/div/div[2]/div/div[1]/div/div/div/div/ppc-container[3]/div/a/ppc-content"
  element :find_job_button,:xpath ,"//*[@id='content']/div[2]/section[1]/div/div/div/div/div/div/div/div/section/div/form/div[2]/div/div[2]/span/button"
  element :open_job_details, :xpath,"/html/body/div[2]/div[2]/div/div[2]/div[2]/section/div/div/div[3]/div[1]/div/ul/li[1]/div/div[1]/div/h2/a"
  element :employment_type_button, :xpath, "/html/body/div[2]/div[2]/div/div[2]/div[1]/section[1]/div/div/div[3]/div[8]/div[1]/span/button"
  element :intern_check_button, :xpath, "/html/body/div[2]/div[2]/div/div[2]/div[1]/section[1]/div/div/div[3]/div[8]/div[2]/div/div[3]/ul/li[1]/label/span[1]"
  element :experienced_button, :xpath, "//*[@id='content']/div[2]/section[4]/div/div/div/div[2]/div/div[2]/div/div/div/div/ppc-container[3]/div/a/ppc-content"
  element :open_job_filter_details, :xpath,"/html/body/div[2]/div[2]/div/div[2]/div[2]/section/div/div/div[3]/div[1]/div/ul/li[1]/div/div[1]/div/h2/a/span"

  def expand_job
    self.open_job_details.click
    sleep 3
  end

  def expand_job_filter
    self.open_job_filter_details.click
    sleep 3
  end

  def new_grad_role
    self.student_button.click
    sleep 4
    self.find_job_button.click
    sleep 4
    expand_job
    sleep 2
  end

  def intern_role
    self.student_button.click
    sleep 4
    self.find_job_button.click
    sleep 3
    self.employment_type_button.click
    sleep 1
    self.intern_check_button.click
    sleep 4
    expand_job_filter
    sleep 2
  end

  def experienced_role
    self.experienced_button.click
    sleep 4
    self.find_job_button.click
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