class Player < ActiveRecord::Base
  has_many :calls
  belongs_to :team
  belongs_to :vote
end
