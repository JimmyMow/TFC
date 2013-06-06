class Player < ActiveRecord::Base
  has_many :calls
  has_many :votes, :through => :calls

  belongs_to :team
  belongs_to :vote
end
