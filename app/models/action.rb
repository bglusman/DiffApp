class Action < ActiveRecord::Base
  belongs_to :sponsor

  validates :name, :presence => true
  validates :sponsor, :presence => true
end
