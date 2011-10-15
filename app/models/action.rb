class Action < ActiveRecord::Base
  belongs_to :sponsor
  has_many :incentives

  validates :name, :presence => true
  validates :sponsor, :presence => true
end
