class Signup < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
end
