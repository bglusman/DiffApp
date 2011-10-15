Given "there are incentives" do
  Given "there are sponsors"
  Given "there are actions"
  unless Incentive.exists?(:name => "incentive1")
    Incentive.create! :name => "incentive1", :description => "incentive 1 description", :action_id => @action1.id, :sponsor_id => @sponsor1
    Incentive.create! :name => "incentive2", :action_id => @action2.id, :sponsor_id => @sponsor2
  end
end

When "I go to the incentives index" do
  visit "/incentives"
end

Then "I should see the incentives" do
  assert page.has_content? "incentive1"
  assert page.has_content? "incentive2"
end

When "I choose to claim the first incentive" do
  click_link "Claim"
end

Then "I should see details of the first incentive" do
  assert page.has_content? "incentive 1 description"
end

Then "I should see an invitation to log in and claim the incentive" do
  assert page.has_content? "Log in to claim this incentive"
end
