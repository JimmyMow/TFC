class AddVoteIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :vote_id, :integer
  end
end
