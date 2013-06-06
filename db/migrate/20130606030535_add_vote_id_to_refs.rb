class AddVoteIdToRefs < ActiveRecord::Migration
  def change
    add_column :refs, :vote_id, :integer
  end
end
