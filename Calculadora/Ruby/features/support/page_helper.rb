def assert &block
    raise AssertionError unless yield
end

def teardown()
    @CalculatorSession.quit
end

def return_results()
    return @CalculatorSession.find_element(:accessibility_id, "CalculatorResults").text
end

def combination
  @CalculatorSession.find_elements(:name, "Seven")[0].click;
  @CalculatorSession.find_elements(:name, "Multiply by")[0].click;
  @CalculatorSession.find_elements(:name, "Nine")[0].click;
  @CalculatorSession.find_elements(:name, "Plus")[0].click;
  @CalculatorSession.find_elements(:name, "One")[0].click;
  @CalculatorSession.find_elements(:name, "Equals")[0].click;
  @CalculatorSession.find_elements(:name, "Divide by")[0].click;
  @CalculatorSession.find_elements(:name, "Eight")[0].click;
  @CalculatorSession.find_elements(:name, "Equals")[0].click;
  assert{$CalculatorResult.text == "Display is  8 "};
end

def division
  @CalculatorSession.find_elements(:name, "Eight")[0].click;
  @CalculatorSession.find_elements(:name, "Eight")[0].click;
  @CalculatorSession.find_elements(:name, "Divide by")[0].click;
  @CalculatorSession.find_elements(:name, "One")[0].click;
  @CalculatorSession.find_elements(:name, "One")[0].click;
  @CalculatorSession.find_elements(:name, "Equals")[0].click;
  assert{$CalculatorResult.text == "Display is  8 "};
end

