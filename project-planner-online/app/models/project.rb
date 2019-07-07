class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :signups
  has_many :users, through: :signups
end
