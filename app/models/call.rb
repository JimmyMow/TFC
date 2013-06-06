class Call < ActiveRecord::Base
  belongs_to :foul

  belongs_to :player

  belongs_to :comit_player, class_name: 'Player', foreign_key:'comit_player_id'

  belongs_to :fouled_player, class_name: 'Player', foreign_key:'fouled_player_id'

  belongs_to :ref

  belongs_to :comit_team, class_name: 'Team', foreign_key:'comit_team_id'

  belongs_to :fouled_team, class_name: 'Team', foreign_key:'fouled_team_id'

  belongs_to :game

  has_many :comments

  has_many :upvotes

  has_many :votes

  has_many :users, :through => :votes

end
