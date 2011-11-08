class Cause < ActiveRecord::Base
  acts_as_voteable
  #make_flaggable
  has_many :activities
  belongs_to :submitter, :class_name => 'User'

  def popularity
    plusminus
  end
end
