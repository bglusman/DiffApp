Given "there are actions" do
  Given "there are sponsors"
  unless Action.exists?(:name => "action1")
    @action1 = Action.create :name => "action1", :sponsor_id => @sponsor1.id
    @action2 = Action.create :name => "action2", :sponsor_id => @sponsor2.id
  end
end
