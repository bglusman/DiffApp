class Sponsor < Actor
  has_many :incentives

  validates :name, :presence => true
end
