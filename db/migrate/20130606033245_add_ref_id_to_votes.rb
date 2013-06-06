class AddRefIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :ref_id, :integer
  end
end
