class AddComitTeamIdToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :comit_team_id, :integer
  end
end
