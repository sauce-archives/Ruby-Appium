require 'appium_lib'

# Set the environment variables:
#   SAUCE_USERNAME = your-sauce-username
#   SAUCE_ACCESS_KEY = your-sauce-key

desired_caps = {
      caps:       {
        appiumVersion:    '1.4.16',
        platformName:     'Android',
        platformVersion:  '4.4',
        browserName:       '',
        deviceName:       'Samsung Galaxy S4 Emulator',
        app:              'http://saucelabs.com/example_files/ContactManager.apk',
        name:             'Ruby Appium Sauce example'
      }
    }

driver = Appium::Driver.new(desired_caps)
driver.start_driver

# Test Actions here...

driver.driver_quit