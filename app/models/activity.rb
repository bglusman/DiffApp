class Activity < ActiveRecord::Base
  acts_as_voteable
  #make_flaggable
  has_many :incentives

  belongs_to :cause
  belongs_to :submitter, :class_name => 'Actor'
  validates :name, :presence => true

  def popularity
    plusminus
  end
end
