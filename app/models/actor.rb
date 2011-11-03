class Actor < ActiveRecord::Base
  acts_as_voter
  has_karma(:causes, :as => :submitter)
  has_karma(:activities, :as => :submitter)
  has_karma(:incentives, :as => :submitter)
  has_many :incentives, :foreign_key => :claimant_id
  has_many :provided_incentives, :class_name => "Incentive", :foreign_key => :supporter_id

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
    end
  end

  def self.guest
    guest_name = "Guest"
    if Actor.where(:name => guest_name).exists?
      Actor.where(:name => guest_name).first
    else
      Actor.create! :name => guest_name
    end
  end
end
