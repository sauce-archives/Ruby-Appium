require 'appium_lib'

# Set the environment variables:
#   SAUCE_USERNAME = your-sauce-username
#   SAUCE_ACCESS_KEY = your-sauce-key

desired_caps = {
      caps:       {
        appiumVersion:    '1.4.16',
        platformName:     'iOS',
        platformVersion:  '8.4',
        browserName:       '',
        deviceName:       'iPhone 6',
        app:              'https://s3.amazonaws.com/appium/TestApp8.4.app.zip',
        name:             'Ruby Appium Sauce example'
      }
    }

driver = Appium::Driver.new(desired_caps)
driver.start_driver

# Test Actions here...

driver.driver_quit