class Clinician < ActiveRecord::Base
  attr_accessible :full_name, :initials
  validates :initials, length: { maximum: 3 }
end
