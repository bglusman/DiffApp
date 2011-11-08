class User < ActiveRecord::Base
  acts_as_voter
  has_karma(:causes, :as => :submitter)
  has_karma(:activities, :as => :submitter)
  has_karma(:incentives, :as => :submitter)
  has_many :incentives, :foreign_key => :claimant_id
  has_many :provided_incentives, :class_name => "Incentive", :foreign_key => :supporter_id

  def self.create_with_omniauth(auth, ip_address)
    if User.where(:ip_address => ip_address, :uid => nil).exists?
      user = User.where(:ip_address => ip_address, :uid => nil).first
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
      user.save!
    else
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
      end
    end
  end

  def self.guest(ip_address)
    guest_name = "Guest"
    if User.where(:ip_address => ip_address, :uid => nil).exists?
      guest = User.where(:ip_address => ip_address, :uid => nil).first
    else
      guest =User.create! :name => guest_name, :ip_address => ip_address
    end
    return guest
  end

  def vote_up(target)
    vote_exclusively_for target
  end

  def vote_down(target)
    vote_exclusively_against target
  end
end
