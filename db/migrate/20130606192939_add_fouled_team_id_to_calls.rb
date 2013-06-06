class AddFouledTeamIdToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :fouled_team_id, :integer
  end
end
