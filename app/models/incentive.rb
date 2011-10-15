class Incentive < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :action
  belongs_to :claimant, :class_name => "Actor", :foreign_key => :claimant_id
  belongs_to :supporter, :class_name => "Actor", :foreign_key => :supporter_id

  validates :name, :presence => true
end
