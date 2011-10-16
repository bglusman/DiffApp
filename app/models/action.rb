class Action < ActiveRecord::Base
  has_many :incentives

  validates :name, :presence => true
end
