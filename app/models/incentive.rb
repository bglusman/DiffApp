class Incentive < ActiveRecord::Base
  acts_as_voteable
  #make_flaggable
  belongs_to :activity
  belongs_to :claimant, :class_name => "Actor", :foreign_key => :claimant_id
  belongs_to :supporter, :class_name => "Actor", :foreign_key => :supporter_id

  validates :name, :presence => true
#  validates :supporter, :presence => true

  scope :complete, where(:performed => true)
  scope :incomplete, :conditions => ["(performed = 'f' or performed is null)"]

  def provider
    supporter
  end
end
