Then "I go to the home page" do
  visit "/"
end

Then /^I should see "([^"]*)"$/ do |text|
  assert page.has_content? text
end

Then "show me the page" do
  save_and_open_page
end
