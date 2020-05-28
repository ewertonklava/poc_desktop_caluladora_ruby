require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'
require 'pry'

def setup()
opts =
    {
        caps:
        {
            platformName: "WINDOWS",
            platform: "WINDOWS",
            deviceName: "WindowsPC",
            app: 'Microsoft.WindowsCalculator_8wekyb3d8bbwe!App'
        },
        appium_lib:
        {
            wait_timeout: 30,
            wait_interval: 0.5
        }
    }

    # executar winappdriver.exe 127.0.0.1 4723/wd/hub
    @CalculatorSession = Appium::Driver.new(opts, false).start_driver
end
