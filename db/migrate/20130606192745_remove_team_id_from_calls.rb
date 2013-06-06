class RemoveTeamIdFromCalls < ActiveRecord::Migration
  def up
    remove_column :calls, :team_id
  end

  def down
    add_column :calls, :team_id, :integer
  end
end
