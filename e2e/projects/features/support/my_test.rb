require 'test/unit'
require 'selenium-webdriver'
require './projects/features/page_objects/ModusCreateApp.rb'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.


  def setup


    @browser_value = 'Chrome'

    #define driver for firefox webdriver
    # Tested on Mac with Chrome, Given Firefox Option for later integration if required.

    if(@browser_value == "firefox")


      http_client = Selenium::WebDriver::Remote::Http::Default.new

      #capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
      capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(marionette: true)
      capabilities['acceptInsecureCerts']=true
      profile  = Selenium::WebDriver::Firefox::Profile.new


      #brew install geckodriver
      ENV['PATH'] = File.expand_path File.join(File.dirname(__FILE__), '../../..', 'externalJars/Mac', 'geckodriverv0.21.0', "#{ENV['PATH']}"  )
      #ENV['PATH'] = File.expand_path File.join(File.dirname(__FILE__), '../../..', 'externalJars/Mac', 'geckodriver'  )
      @driver = Selenium::WebDriver.for :firefox, :profile => profile, marionette: true, :desired_capabilities => capabilities, :http_client => http_client

      puts 'Mozilla Firefox Browser Opened ..'


    end

    if(@browser_value == "Chrome")

      http_client = Selenium::WebDriver::Remote::Http::Default.new
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(accept_insecure_certs: true)
      profile = Selenium::WebDriver::Chrome::Profile.new


      #MAC
      Selenium::WebDriver::Chrome.driver_path = File.expand_path File.join(File.dirname(__FILE__), '../..', 'externalJars/Mac', 'chromedriver')
      @driver = Selenium::WebDriver.for :chrome, :profile => profile, :desired_capabilities => capabilities, :http_client => http_client
      puts 'Chrome Browser Opened ..'
    end

    #maximize the window
    @driver.manage.delete_all_cookies
    puts 'Deleting all cookies'
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 30

    #navigate to the budget modus app site
    @driver.navigate.to "https://budget.modus.app/budget"
    puts 'Navigated to budget modus app'
  end

  def test_verifying_adding_records

    #Created object to Interact with ModusCreateApp Page Object
     @ModusCreateApp= ModusCreateApp.new(@driver)

    #Waiting to Page to be loaded and for Search to visible to Webdriver for 2 seconds
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {@ModusCreateApp.budget_label}

    #Adding new records and verifying it is being inserted
     @ModusCreateApp.description.send_keys 'TEST2'
     @ModusCreateApp.value.send_keys '12'
     @ModusCreateApp.btn_submit.click
    puts 'Records has been added successfully'

  end

  def test_verifying_working_balance

    #Created object to Interact with ModusCreateApp Page Object
    @ModusCreateApp= ModusCreateApp.new(@driver)
    #Waiting to Page to be loaded and for Search to visible to Webdriver for 2 seconds
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {@ModusCreateApp.budget_label}

    # removing all non-digit characters and changing from dollar currency to numberic value for manupulations
    total_inflow =  @ModusCreateApp.total_inflow.text.gsub(/[^\d\.-]/,'').to_f
    total_outflow = @ModusCreateApp.total_outflow.text.gsub(/[^\d\.-]/,'').to_f
    working_balance = @ModusCreateApp.working_balance.text.gsub(/[^\d\.-]/,'').to_f

    assert_equal((total_inflow-total_outflow).round(), working_balance.round())
    puts 'verified: working_balance calculation is correct'

  end

  def test_verifying_working_balance_failed_case

    #Created object to Interact with ModusCreateApp Page Object
    @ModusCreateApp= ModusCreateApp.new(@driver)
    #Waiting to Page to be loaded and for Search to visible to Webdriver for 2 seconds
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {@ModusCreateApp.budget_label}

    # removing all non-digit characters and changing from dollar currency to numberic value for manupulations
    total_inflow =  @ModusCreateApp.total_inflow.text.gsub(/[^\d\.-]/,'').to_f
    total_outflow = @ModusCreateApp.total_outflow.text.gsub(/[^\d\.-]/,'').to_f
    working_balance = @ModusCreateApp.working_balance.text.gsub(/[^\d\.-]/,'').to_f

    #Fail Case - intentionally
    assert_equal((total_inflow + total_outflow).round(), working_balance.round())
    puts 'verifying fail case that working_balance checked shows incorrect result in test_execution'

  end

  def teardown
    puts 'Closing the Browser'
    #@driver.quit
    @driver.close
  end


end