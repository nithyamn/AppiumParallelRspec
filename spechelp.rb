
def setup_driver

    caps = {}
      caps['device'] = ENV['device']
      caps['os_version'] = ENV['os_version']
      caps['realMobile'] = true
      caps['app'] = 'bs://72ac75bf8a391aed7d11d4a512ba43d0495ac3ec'

      caps['project'] = ENV['project'] 
      caps['build'] = ENV['build'] 
      caps['name'] = ENV['name'] 
      caps['platformName'] = 'Android'
      caps['automationName'] = 'Appium'
      caps['browserstack.debug'] = true
  
    appium_driver = Appium::Driver.new({
      'caps' => caps,
      'appium_lib' => {
          :server_url => "http://#{ENV["BROWSERSTACK_USER"]}:#{ENV["BROWSERSTACK_ACCESSKEY"]}@hub-cloud.browserstack.com/wd/hub"
      }}, true)
    $driver = appium_driver.start_driver
      
end 

def stop_driver 
    $driver.quit
end