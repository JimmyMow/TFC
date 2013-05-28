class Player < ActiveRecord::Base
  has_many :calls
  belongs_to :team
end
