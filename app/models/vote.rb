class Vote < ActiveRecord::Base
  belongs_to :calls
  has_many :refs, :through => :calls
  has_many :games, :through => :calls
  has_many :players, :through => :calls
  has_many :teams, :through => :calls
  has_many :users, :through => :calls
  has_many :fouls, :through => :calls
end
