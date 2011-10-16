class Action < ActiveRecord::Base
  has_many :incentives

  belongs_to :cause
  validates :name, :presence => true
end
