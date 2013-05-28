class Call < ActiveRecord::Base
  belongs_to :foul

  belongs_to :player

  belongs_to :ref

  belongs_to :team

  belongs_to :game

  has_many :upvotes

  has_many :votes

  has_many :users, :through => :votes

end
