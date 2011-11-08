class Sponsor < User
  has_many :incentives

  validates :name, :presence => true
end
