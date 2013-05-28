class Team < ActiveRecord::Base
  has_many :calls
  has_many :players

end
