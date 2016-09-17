class Contact < ActiveRecord::Base
  has_many :submissions
  has_many :pitches, through: :submissions
end
