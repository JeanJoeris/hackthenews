class Pitch < ApplicationRecord
  has_many :submissions
  has_many :contacts, through: :submissions
end
