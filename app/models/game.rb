class Game < ActiveRecord::Base
  has_many :calls
  has_many :votes
end
