require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
  config.default_driver = :chrome_custom
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "https:/contratafacil-segurovida.paas.sulamerica.com.br"
end
