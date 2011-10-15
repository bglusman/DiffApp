require 'test_helper'

class IncentiveTest < ActiveSupport::TestCase
  test "determines incentive provider from supporter or sponsor" do
    create_incentive
    @incentive.sponsor = Sponsor.create :name => "providing sponsor"
    assert_equal @incentive.provider.name, "providing sponsor"
    @incentive.supporter = Actor.create :username => "actor", :name => "providing actor"
    assert_equal @incentive.provider.name, "providing actor"
  end

  def create_incentive
    sponsor = Sponsor.create :name => "sponsor"
    action = Action.create :name => action, :sponsor_id => sponsor.id
    @incentive = Incentive.create :name => "incentive", :action => action.id
  end
end
