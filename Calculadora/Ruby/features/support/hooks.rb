Before do |scenario|
  name = "#{scenario.name}"
end

After do |scenario|
  teardown()
  if scenario.failed?
    reason = "#{scenario.exception.message}"
    print reason
  end
end
