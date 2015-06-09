class Place < ActiveRecord::Base
  validates :name, presence: true
  has_many :userlocals
  has_many :users, through: :userlocals
end