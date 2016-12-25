require 'appium_lib'

# Set the environment variables:
#   SAUCE_USERNAME = your-sauce-username
#   SAUCE_ACCESS_KEY = your-sauce-key

desired_caps = {
      caps:       {
        appiumVersion:    '1.6',
        platformName:     'iOS',
        platformVersion:  '10.0',
        browserName:       '',
        deviceName:       'iPhone 6',
        # TO DO: Replace with DSC app.zip
        app:              'sauce-storage:DSC.zip',
        name:             'DSC Debugging'
      }
    }

driver = Appium::Driver.new(desired_caps)
driver.start_driver

# Test Actions here...
begin
    #  => driver.window_size
    # => #<struct Selenium::WebDriver::Dimension width=375, height=667>

    # ### This is what DSC said they were using as args to swipe
    @swipe_right_args = {start_x: 300,start_y:150,delta_x:-100,delta_y:0,duration:3000}
    # @swipe_left_args = {start_x: 27.2,start_y:150,delta_x:300,delta_y:150,duration:3000}
    driver.swipe @swipe_right_args

    sleep 5
    # should have swiped to next screen on DSC app
rescue Exception => e
    puts "exception is : #{e}"
end


driver.driver_quit