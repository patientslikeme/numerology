Given /^the integer "(\d+)"$/ do |num|
  @target = num.to_i
end

When /^I format using the example "(.*?)"$/ do |example|
  @result = @target.format_like(example)
end

Then /^I produce "(.*?)"$/ do |expected|
  assert_equal expected, @result
end