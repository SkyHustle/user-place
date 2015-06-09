class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :userlocals
  has_many :places, through: :userlocals
end
