Quando("clicar {string}") do |text|
  @CalculatorSession.find_element(:name, text).click()
end

Quando("clicar {string} por id") do |control_id|
  @CalculatorSession.find_element(:accessibility_id, control_id).click()
end

Então("o resultado é exibido {string}") do |expected|
  actual = return_results().sub! 'Exibição é', ''
  actual = actual.strip()  
  unless actual.eql? expected
    fail("Expected '#{expected}' but result is '#{actual}'.")
  end
end

# Alguns exemplos
When /^I see "([^\"]*)"$/ do |text|
  result = @CalculatorSession.find_elements(:name, text)[0]
  unless result != nil
    fail("'#{text}' was not found.")
  end
end

When /^I wait to see "([^\"]*)"$/ do |text|
  wait = Selenium::WebDriver::Wait.new :timeout => 30
  wait.until { @CalculatorSession.find_elements(:name, text)[0] != nil }
end

When /^I press "([^\"]*)" by xpath$/ do |x_path_name|
  @CalculatorSession.find_element(:xpath, "//Button[@Name='#{x_path_name}']").click()
end

When /^I press "([^\"]*)" by automation$/ do |automation_id|
  @CalculatorSession.find_element(:xpath, "//Button[@AutomationId=\"#{automation_id}\"]").click()
end
