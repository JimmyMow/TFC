class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true

  has_secure_password

  has_many :calls
  has_many :refs, :through => :calls
  has_many :games, :through => :calls
  has_many :players, :through => :calls
  has_many :teams, :through => :calls
  has_many :fouls, :through => :calls
  has_many :votes, :through => :calls
end
