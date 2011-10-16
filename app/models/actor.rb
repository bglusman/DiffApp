class Actor < ActiveRecord::Base
  has_many :incentives, :foreign_key => :claimant_id

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
