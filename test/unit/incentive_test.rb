require 'test_helper'

class IncentiveTest < ActiveSupport::TestCase
  test "determines incentive provider from supporter or sponsor" do
    create_incentive
    @incentive.sponsor = Sponsor.create :name => "providing sponsor"
    assert_equal @incentive.provider.name, "providing sponsor"
    @incentive.supporter = User.create :username => "user", :name => "providing user"
    assert_equal @incentive.provider.name, "providing user"
  end

  def create_incentive
    sponsor = Sponsor.create :name => "sponsor"
    activity = Activity.create :name => activity, :sponsor_id => sponsor.id
    @incentive = Incentive.create :name => "incentive", :activity => activity.id
  end
end
