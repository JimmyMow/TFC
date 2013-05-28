class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.integer :game_id
      t.integer :call_id
    end
  end
end
