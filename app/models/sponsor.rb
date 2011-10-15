class Sponsor < ActiveRecord::Base
  has_many :actions

  validates :name, :presence => true
end
