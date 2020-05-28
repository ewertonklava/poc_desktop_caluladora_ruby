Dado("que a aplicação é iniciada") do
  setup()
end

Entao("é exibido o valor {string}") do |string|
  wait = Selenium::WebDriver::Wait.new :timeout => 15
  wait.until { @CalculatorSession.find_elements(:name, "Limpar")[0] != nil }

  # Limpar tela
  @CalculatorSession.find_element(:name, "Limpar").click()
end
