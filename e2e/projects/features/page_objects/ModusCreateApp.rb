class ModusCreateApp

  def initialize(browser)
    @browser = browser
  end


 #Element Location started

  def budget_label
    @browser.find_element(:xpath, "//*[@id='root']//a[contains(text(),'Budget')]")
  end

  def parent_table
    @browser.find_element(:xpath => "//*[@id='root']/main/section/table[@class='opmhI']")
  end

  def description
    parent_table.find_element(:xpath => "//*[@id='root']/main/section/table/tfoot/tr/td/form/div[2]/input[@name='description']")
  end

  def value
    parent_table.find_element(:xpath => "//*[@id='root']/main/section/table/tfoot/tr/td/form/div[3]/input[@name='value']")
  end

  def btn_submit
    parent_table.find_element(:xpath => "//*[@id='root']/main/section/table/tfoot/tr/td/form/div[4]/button[@type='submit']")
  end

  def total_inflow
    @browser.find_element(:xpath => "//*[@id='root']/main/section/div/div/div[1]/div/div[contains(text(),'Total Inflow')]/parent::div[1]/div[1]")
  end

  def total_outflow
    @browser.find_element(:xpath => "//*[@id='root']/main/section/div/div/div[3]/div/div[contains(text(),'Total Outflow')]/parent::div[1]/div[1]")
  end

  def working_balance
    @browser.find_element(:xpath => "//*[@id='root']/main/section/div/div/div[5]/div/div[contains(text(),'Working Balance')]/parent::div[1]/div[1]")
  end

end