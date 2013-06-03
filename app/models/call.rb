class Call < ActiveRecord::Base
  belongs_to :foul

  belongs_to :comit_player, class_name: 'Player', foreign_key:'comit_player_id'

  belongs_to :fouled_player, class_name: 'Player', foreign_key:'fouled_player_id'

  belongs_to :ref

  belongs_to :team

  belongs_to :game

  has_many :upvotes

  has_many :votes

  has_many :users, :through => :votes

end
