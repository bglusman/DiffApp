Given "there are activities" do
  Given "there are sponsors"
  unless Activity.exists?(:name => "activity1")
    @activity1 = Activity.create :name => "activity1", :sponsor_id => @sponsor1.id
    @activity2 = Activity.create :name => "activity2", :sponsor_id => @sponsor2.id
  end
end
