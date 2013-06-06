class AddVoteIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :vote_id, :integer
  end
end
