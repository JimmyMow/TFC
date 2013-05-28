class CreateRefs < ActiveRecord::Migration
  def change
    create_table :refs do |t|
      t.string :name
      t.integer :number
      t.integer :game_id
    end
  end
end
