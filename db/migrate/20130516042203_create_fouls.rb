class CreateFouls < ActiveRecord::Migration
  def change
    create_table :fouls do |t|
      t.integer :fouls_type
    end
  end
end
