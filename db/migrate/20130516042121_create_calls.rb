class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.integer :comit_player_id
      t.integer :fouled_player_id
      t.integer :team_id
      t.integer :game_id
      t.integer :ref_id
      t.integer :foul_type_id
      t.integer :vote_id
      t.integer :quarter
      t.integer :time
    end
  end
end
